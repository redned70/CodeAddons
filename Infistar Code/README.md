# Exile infiSTAR Custom Code

<b>infiSTAR Custom Code</b><br>
<br><br>
1. Unpack your a3_infiSTAR_Exile.pbo<br>
2. If you have no custom functions then just replace the file CUSTOM_FUNCTIONS.hpp<br>
3. If you have custom functions then add the functions to your file remembering to make the numbers correct for your servers missions<br>
This will add a function to call<br><br>
4. Open EXILE_AHAT_CONFIG.hpp and add the contents in my version - you can leave anything out which you don't use and it wont appear in the menu<br>
This will add the items to your infiSTAR menu<br><br>
5. Repack a3_infiSTAR_Exile.pbo and upload to server<br>
6. Unpack you Mission PBO<br>
7. Add in the custom/infistar_custom.sqf file in the place you want it<br>
This creates the defined functions - make sure they match the "code" lines in CUSTOM_FUNCTIONS<br><br>
8. Add the following into your init.sqf (create the file if you don't have one) making sure the path is correct<br>
[] execVM "custom\infistar_custom.sqf"; <br>
This runs the function definition file on server start<br><br>
9. Repack Mission PBO and upload to server<br>
<br><br>

<b>Notes:</b><br>
1. To appear in the menu the name MUST exactly match in all files e.g.<br>
 CUSTOM_FUNCTIONS.hpp > name = "Spawn_bauhaus_Mission";<br>
 EXILE_AHAT_CONFIG.hpp >  "Spawn_bauhaus_Mission",<br>
2. An example of static mission items is in the files, you can delete the lines if you don't want to use or uncomment and adjust<br>
3. Remember that all functions should be unique.<br>
4. I always make sure i match the case of everything "Mission" is not always the same as "mission"<br>
<br><br>

<b>[CiC]red_ned</b>