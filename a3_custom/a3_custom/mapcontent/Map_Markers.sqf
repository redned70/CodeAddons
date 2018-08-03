// Markers

// PvP Zone Circle
	_pvpZone = createMarker ["PvPzone", [16549.7,18414.4,0]]; 
	_pvpZone setMarkerShape "ELLIPSE"; 
	_pvpZone setMarkerSize [1900,750];
	_pvpZone setMarkerDir 55;
	_pvpZone setMarkerColor "ColorRed";
	_pvpZone setMarkerBrush "solidFull";
	_pvpZone setMarkerAlpha 0.499254;
	_pvpZone setMarkerText "PvPzone";
	
// PvP Zone Text	
	_pvpZone2 = createMarker ["PvPzone2", [16200,18500,0]];  
	_pvpZone2 setMarkerSize [0,0];  
	_pvpZone2 setMarkerShape "ICON";  
	_pvpZone2 setMarkerType "hd_dot";  
	_pvpZone2 setMarkerText "PvP Zone";