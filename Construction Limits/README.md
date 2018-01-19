# Exile Construction Limits

This file limits the building of territories near certain structures<br>
Install:<br>
Copy file into your mission pbo somewhere (custom folder in example)<br>
Edit the main mission config<br>
add the following into the CfgExileCustomCode section<br>  
	// Disables Building in locations<br>
	ExileClient_object_item_construct = "custom\ExileClient_object_item_construct.sqf";<br>
You can add new building types to block construction near by adding to the _cantBuildNear<br>
You can change the distance with _cantBuildDist (currently set at 200)<br>
You can then adjust the toast to match: find<br> 
throw "You cannot build within 200m of military or airport buildings!";<br>
<br><br>
save/repack/upload/start server<br>
I cant remember where the original snippets of code came from so thanks to whoever originated the code<br>
<b>[CiC]red_ned</b>