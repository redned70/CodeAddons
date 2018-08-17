# Exile Random loot 4TypesOfSideEvents

Allows for min and max levels of loot in 2 of the 4TypesOfSideEvents by GolovaRaoul<br>
<b>Original thread by GolovaRaoul <a href="http://www.exilemod.com/topic/24466-4-types-of-side-events/">http://www.exilemod.com/topic/24466-4-types-of-side-events/</a></b><br>
<b>This is not my code just an adjustment of 2 of the original files</b><br>
To Install:<br>
1. Once you have followed the instructions for the main install by GolovaRaoul, replace the 2 mission files with the versions from here exile_server\code\.<br><br>
ExileServer_system_event_ikea_start<br>
ExileServer_system_event_militarydrop_start<br>
For ExileServer_system_event_cash_start	<br>
remember to add into <br>
enabledEvents[] = {"SupplyBox", "IKEA", "MilitaryDrop", "AbandonedSafe", "CASH"};
<br>


add the following to exile_server/bootstrap/fn_preInit.sqf<br>

	// Cash Drop
	['ExileServer_system_event_cash_start', 'exile_server\code\ExileServer_system_event_cash_start.sqf', false]
<br><br>

Then drop the ExileServer_system_event_cash_start.sqf file into exile_server/code alongside the other missions<br>
2. Open your exile_server_config\config.cpp<br>
3. Search down for class MilitaryDrop <br>
4. Replace the whole "class MilitaryDrop" and "class IKEA" sections with the code in config_changes.txt<br>
5. Check you got the whole part replaced including any brackets and adjust min/max to your liking.<br>
6. Re-pack any/all PBOs and put them back on your server<br>
7. Start server<br>


<br><br>
<b>[CiC]red_ned</b><br><br>
<b>Big thanks to Exile Mod <a href="http://www.exilemod.com">http://www.exilemod.com</a></b><br>