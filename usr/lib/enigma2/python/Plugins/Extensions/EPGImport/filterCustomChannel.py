#!/usr/bin/python
# -*- coding: utf-8 -*-

from Components.config import config
from re import sub
from sys import version_info
from six import ensure_str
from xml.sax.saxutils import unescape


try:
	from xml.etree.cElementTree import iterparse
except ImportError:
	from xml.etree.ElementTree import iterparse


PY3 = (version_info[0] == 3)

global filterCustomChannel


# Verify that the epgimport configuration is defined
if hasattr(config.plugins, "epgimport") and hasattr(config.plugins.epgimport, "filter_custom_channel"):
	filterCustomChannel = config.plugins.epgimport.filter_custom_channel.value
else:
	filterCustomChannel = False  # Fallback is not defined


try:
	basestring  # Python 2
except NameError:
	basestring = str  # Python 3


def get_xml_rating_string(elem):
	r = ''
	try:
		for node in elem.findall("rating"):
			for val in node.findall("value"):
				txt = val.text.replace("+", "")
				if not r:
					r = txt
	except Exception as e:
		print("[XMLTVConverter] get_xml_rating_string error:", e)
	return ensure_str(r)


def xml_unescape(text):
	if not isinstance(text, basestring):
		return ''
	text = text if PY3 else text.encode('utf-8')
	return sub(
		r"&#160;|&nbsp;|\s+",
		" ",
		unescape(
			text.strip(),
			entities={
				r"&laquo;": "«",
				r"&#171;": "«",
				r"&raquo;": "»",
				r"&#187;": "»",
				r"&apos;": r"'",
				r"&quot;": r'"',
				r"&#124;": r"|",
				r"&#91;": r"[",
				r"&#93;": r"]",
			}
		)
	)


def get_xml_string(elem, name):
	r = ''
	try:
		for node in elem.findall(name):
			txt = node.text
			lang = node.get("lang", None)
			if not r and txt is not None:
				r = txt
			elif lang == "nl":
				r = txt
	except Exception as e:
		print("[XMLTVConverter] get_xml_string error:", e)

	# Now we return UTF-8 by default
	r = unescape(r, entities={
		r"&apos;": r"'",
		r"&quot;": r'"',
		r"&#124;": r"|",
		r"&nbsp;": r" ",
		r"&#91;": r"[",
		r"&#93;": r"]",
	})

	try:
		# Ensures the result is a string
		return r.encode("utf-8").decode("utf-8")  # Compatible with Python 2 and 3
	except UnicodeEncodeError as e:
		print("[XMLTVConverter] Encoding error:", e)
		return r  # Returns as fallback


def enumerateXML(fp, tag=None):
	"""
	Enumerates ElementTree nodes from file object 'fp' for a specific tag.
	Args:
		fp: File-like object containing XML data.
		tag: The XML tag to search for. If None, processes all nodes.
	Yields:
		ElementTree.Element objects matching the specified tag.
	"""
	doc = iterparse(fp, events=("start", "end"))
	_, root = next(doc)  # Get the root element
	depth = 0

	for event, element in doc:
		if tag is None or element.tag == tag:  # Process all nodes if no tag is specified
			if event == "start":
				depth += 1
			elif event == "end":
				depth -= 1
				if depth == 0:  # Tag is fully parsed
					yield element
					element.clear()  # Free memory for the element
		elif event == "end":  # Clear other elements to free memory
			root.clear()
