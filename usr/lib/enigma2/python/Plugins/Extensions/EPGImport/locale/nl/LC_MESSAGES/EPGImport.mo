��    _                   H   	     R     [     g     t  8   �     �     �     �     	     	     	  p   :	     �	  "   �	     �	     �	    
  
          �     i   �  
             5     D     W     v  ?   �  Q   �  "        :  '   T     |     �     �  &   �     �     �               -     D  "   M  #   p     �     �  *   �     �     �  #   �          -     6     ;  "   I     l  #        �     �     �     �  U   �  .   C     r     �     �  P   �  �   �  �   �  N   �       i   &     �  	   �  [   �  {   �     z  w   �  K        S  @   o  �   �  J   8  :   �     �     �  #   �     �     �          #     4     D  z  W  P   �     #     1     B     U  9   k     �     �  (   �            #     �   ?     �  (   �  )        7  �   D            �   1  �   �  
   f     q     �     �  %   �     �  =   �  V   #  #   z  4   �  3   �          '     /  *   E     p          �     �     �     �  +   �  7   $   	   \      f   1   n   
   �      �   ,   �       �      !     !!     )!  �   <!  #   �!  0   �!  "   #"     F"  $   S"     x"  �   �"  �   3#     �#  $   �#     $$  e   +$    �$  �   �%  u   D&  	   �&  �   �&     X'     `'  �   i'  �   �'  +   u(  �   �(  V   /)     �)  G   �)  �   �)  _   �*  E   �*     (+     5+  ,   <+     i+     o+     �+  "   �+     �+     �+         U   -      _      ]       $   <   C   5   '   0       ^       Z                       T      V   +           Q       &   B   P   M         S       4   A         ?   J   L   1          I   )   Y      %                 G      "   /          	       !         X   3   E   R   ,      F   O   9       @   :                \       >       =   H   [   7       2   #          
   .   D       W                          *      K             6       N         8   (      ;           
Import of epg data will start.
This may take a few minutes.
Is this ok?  events
 Add Channel Add Provider All services provider Also apply "channel id" filtering on custom.channels.xml Automated EPG Importer Automatic import EPG Automatic start time Cancel Channel Selection Choice days for start import Choose the action to perform when the box is in deep standby and the automatic EPG update should normally start. Clear Clearing current EPG before import Consider setting "Days Profile" Days Profile Define the number of days that you want to get the full EPG data, reducing this number can help you to save memory usage on your box. But you are also limited with the EPG provider available data. You will not have 15 days EPG if it only provide 7 days data. Delete all Delete selected Display a shortcut "EPG import now" in the extension menu. This menu entry will immediately start the EPG update process when selected. Display a shortcut "EPG import" in your STB epg menu screen. This allows you to access the configuration. EPG Import EPG Import Configuration EPG Import Log EPG Import Sources EPG Import finished, %d events EPG import now EPGImport
Import of epg data is still in progress. Please wait. EPGImport
Import of epg data will start.
This may take a few minutes.
Is this ok? EPGImport Plugin
Failed to start:
 Enter shell command name. Execute shell command before import EPG Filtering: %s
Please wait! Friday Ignore services list Ignore services list(press OK to save) Import current source Importing: %s
%s events Last import:  Last import: %s events Last: %s %s, %d events Load EPG Load EPG only services in bouquets Load long descriptions up to X days Manual Monday No active EPG sources found, nothing to do Press OK Really delete all list? Return to deep standby after import Run AutoTimer after import Saturday Save Select action Select load EPG mode for services. Shell command name Show "EPG import now" in extensions Show "EPG import" in epg menu Show log Skip import on restart GUI Sources Specify in which case the EPG must be automatically updated after the box has booted. Specify the time for the automatic EPG update. Standby at startup Start import after booting up Sunday The waked up box will be turned into standby after automatic EPG import wake up. This is for advanced users that are using the channel id filtering feature. If enabled, the filter rules defined into /etc/epgimport/channel_id_filter.conf will also be applied on your /etc/epgimport/custom.channels.xml file. This will clear the current EPG data in memory before updating the EPG data. This allows you to always have a clean new EPG with the latest EPG data, for example in case of program changes between refresh, otherwise EPG data are cumulative. This will turn back waked up box into deep-standby after automatic EPG import. Thursday To save memory you can decide to only load EPG data for the services that you have in your bouquet files. Tuesday Wednesday When enabled, it allows you to schedule an automatic EPG update at the given days and time. When enabled, then you can run the desired script before starting the import, after which the import of the EPG will begin. When in deep standby When you decide to load the EPG after GUI restart mention if the "days profile" must be take into consideration or not. When you restart the GUI you can decide to skip or not the EPG data import. Write to /tmp/epgimport.log You can select the day(s) when the EPG update must be performed. You can start automatically the plugin AutoTimer after the EPG data update to have it refreshing its scheduling after EPG data refresh. You may not use this settings!
At least one day a week should be included! You must restart Enigma2 to load the EPG data,
is this OK? all channels always checking service reference(default) never only IPTV channels only automatic boot only manual boot skip the import wake up and import Project-Id-Version: EPGImport
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2023-07-20 09:59+0200
Last-Translator: Frenske <voorzitter@openpli.org>
Language-Team: 
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 3.3.2
X-Poedit-Basepath: ..
X-Poedit-SearchPath-0: .
 
Importeren van epg-data begint.
Dit kan een paar minuten duren
Wilt u doorgaan?  programma's
 Zender toevoegen Provider toevoegen Alle zender providers Pas het 'zender ID filter' ook toe in custom.channels.xml Activeer de auto EPG-import Automatisch EPG importeren Automatische starttijd van de EPG-import Annuleer Zender keuze Selecteer de dagen om te importeren Met deze optie geeft u aan wat er moet gebeuren indien de box in 'deep stand-by' staat. 

U kunt kiezen uit:
1. Importeren overslaan.
2. Ontwaken en importeren. Wis Wis de huidige EPG vóór het importeren Overweeg een "dagen profiel" te gebruiken Dagenprofiel Met deze optie bepaalt van hoeveel dagen de uitgebreide EPG geïmporteerd moet worden. Het spreekt voor zich dat, hoe minder dagen u kiest dat het gebruikte geheugen ook aanmerkelijk kleiner is. Verwijder alles Geselecteerde verwijderen Indien geactiveerd, dan wordt de optie EPG-import in het applicatie-overzicht opgenomen. De EPG-import start direct nadat u deze applicatie gekozen heeft. Indien geactiveerd, dan wordt een snelkoppeling 'EPG import' in het EPG-menuscherm van uw STB weergegeven. Hiermee kunt u direct de configuratie starten. EPG-Import EPG-Import configuratie EPG-Import log EPG-Import bronnen EPG importeren gereed, %d programma's Importeer de EPG nu EPG-Import
Importeren van epg-data is nog bezig. Even geduld. EPG-Import
Importeren van epg-data begint.
Dit kan een enkele minuten duren.
Doorgaan? EPG-Import Plugin
Starten mislukt:
 In dit veld voert u de naam van het Shell script in. Voer dit Shell script uit voor de import van de EPG Filtering: %s
Een ogenblik aub! Vrijdag Negeer de zenderlijst Negeer zenderlijst ( druk OK voor opslaan) Importeer bron Importeert: %s
%s programma's Laatste import:  Laatste import: %s programma's Laatste: %s %s, %d programma's Laad de EPG Laad enkel EPG van zenders in uw bouquetten Laad de uitgebreide beschrijvingen tot en met 'X' dagen Handmatig Maandag Geen actieve EPG bronnen gevonden, kan niets doen Druk op OK Werkelijk alle lijsten wissen? Terug naar 'deep stand-by' na de EPG-import. Activeer AutoTimer na importeren Zaterdag Opslaan Selecteer de actie Selecteer de modus om EPG laden voor welke zenders.

U kunt kiezen uit:
1. Alle zenders,
2. Enkel IPTV zenders.
3. Op basis van zenderreferentie. De naam van het Shell script is ... Toon 'Importeer de EPG nu' in het applicatiemenu Toon de EPG-import in het EPG menu Toon het log Importeren overslaan na herstart GUI Bronnen Met deze optie bepaalt u wat er moet gebeuren na een herstart van de box.

U kunt kiezen uit:
1. Nooit.
2. Altijd.
3. Na een handmatige herstart.
4. Na een automatische herstart. Met deze optie geeft u het standaard tijdstip in waarop de EPG-import start. Vaak is het praktisch om dit 's nachts uit te voeren zodat de volgende dag(en) de EPG up-to-date is. Stand-by na het opstarten Start de EPG-import na het opstarten Zondag Indien geactiveerd, dan zal de box na het ontwaken en automatisch importeren weer naar stand-by gaan. Deze optie is voor gevorderde gebruiker die een filter voor zender-ID's gebruikt. Indien ingeschakeld, dan zullen de filterregels die zijn gedefinieerd in /etc/epgimport/channel_id_filter.conf ook worden toegepast op uw /etc/epgimport/custom.channels.xml bestand. Indien geactiveerd, dan wordt met iedere EPG-import de oude data gewist. Hiermee bereikt u dat de EPG data actueel blijft. Dit in het geval de programmering zou wijzigen. Indien geactiveerd, dan zal de (eerder ontwaakte) box na de EPG-import weer teruggeplaatst worden in 'deep stand-by'. Donderdag Indien geactiveerd, dan wordt enkel de EPG geïmporteerd van de in de bouquetten aanwezige zenders. Hiermee wordt aanzienlijk bespaard op geheugen. Dinsdag Woensdag Indien geactiveerd, dan kunt u een automatische EPG-import plannen op de later in deze applicatie door u te bepalen tijd en dagen. Indien geactiveerd, dan kunt u eerst het gewenste script uitvoeren voordat de import start, en daarna zal de import van de EPG beginnen. Wat te doen indien de box in stand-by staat Indien geactiveerd, dan wordt het 'dagprofiel' in aanmerking genomen als u besluit om de EPG-update uit te voeren na een herstart van de GUI. Indien geactiveerd dan wordt de EPG-update niet uitgevoerd na een herstart van de GUI. Schrijf naar /tmp/EPGimport.log Met deze optie kiest u de dagen waarop de EPG-import moet plaatsvinden. Met deze optie kunt u de applicatie AutoTimer automatisch starten na de EPG-import om de eerdere planning aan te passen aan de vernieuwde EPG data. U kunt deze instellingen niet gebruiken!
Er moet tenminste één dag per week worden ingesteld! U moet nu Enigma herstarten om de EPG-data te laden.
Wilt u doorgaan? Alle zenders Altijd Op basis van de zenderreferentie (standaard) Nooit Enkel IPTV zenders Enkel na een 'auto herstart' Enkel na een 'handmatige herstart' Importeren overslaan Ontwaak en importeer 