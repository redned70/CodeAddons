# Exile Random loot in supply drop

Allows for min and max levels of loot in default Exile SupplyBox Drop<br>

To Install:<br>
1. Copy the ExileServer_system_event_supplyBox_start.sqf into your mission folder.<br>
2. Edit your missions config.cpp and under CfgExileCustomCode { <br>
<br>
ExileServer_system_event_supplyBox_start = "pathtofile\ExileServer_system_event_supplyBox_start.sqf" <br>
<br><br>
3. Save and repack mission files<br><br>
note: you can skip steps 1,2,3 if you are fine with replacing the original file in your exile_server.pbo\code<br>
4. Open your exile_server_config\config.cpp<br>
5. Search down for class SupplyBox <br>
6. Replace the whole "class SupplyBox" section with the code in Replacement Code.txt<br>
7. Check you got the whole part replaced including any brackets and adjust min/max to your liking.<br>
8. Re-pack any/all PBOs and put them back on your server<br>
9. Start server<br>


<br><br>
<b>[CiC]red_ned</b><br><br>
<b>Big thanks to Exile Mod <a href="http://www.exilemod.com">http://www.exilemod.com</a></b><br>