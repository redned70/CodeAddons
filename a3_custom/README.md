# Exile a3_custom.pbo

<b>Server-side loading of map objects</b><br>
<br><br>
1. Copy your map content into .sqf files and put in a3_custom\mapcontent<br>
2. Add an exec line for each sqf file in a3_custom\init\fn_init.sqf<br>
3. Pack a3_custom folder into PBO<br>
4. Add into your servers /@ExileServer/addons folder<br>
5. Start server<br><br><br>

<b>Note:</b><br>
1. It will only take objects not traders (i think) so traders stay in the mission initPlayerLocal.sqf (untested)<br>
2. I think it should take other map files like the simple one if you seperate out just the simple objects list (untested)<br>
3. I think it will also take the other formats of mapping people use as long as you keep to the syntax in the files (untested)<br>
4. I am not sure roulette chairs will work in this format so they should also stay with traders in the mission files (untested)<br>
5. This is not my work but i have used an old Epoch method and adjusted to fit my needs<br><br>

<b>[CiC]red_ned</b>