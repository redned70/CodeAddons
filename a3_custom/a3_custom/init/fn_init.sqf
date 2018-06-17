diag_log "***** Starting to Load Custom Content PBO *****";

diag_log "***** Starting Custom Traders PBO *****";
// e.g. Traders
//call compile preprocessFileLineNumbers "a3_custom\mapcontent\Traders_Example.sqf";

diag_log "***** Starting Custom DMS PBO *****";
// e.g. DMS Static Missions
//call compile preprocessFileLineNumbers "a3_custom\mapcontent\DMS_Example.sqf";

diag_log "***** Starting Custom Mapping PBO *****";
// e.g. Custom content
call compile preprocessFileLineNumbers "a3_custom\mapcontent\SouthAirport_RunwayLights.sqf";

diag_log "***** Starting Custom Markers PBO *****";
// Custom markers

diag_log "***** Finished Loading Custom Content PBO *****";