/**
 * ExileClient_object_item_construct
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_itemClassName","_minimumDistanceToTraderZones","_minimumDistanceToSpawnZones","_maximumNumberOfTerritoriesPerPlayer","_numberOfTerritories","_cantBuildNear","_cantBuildDist"];
_itemClassName = _this select 0;
_cantBuildNear = [
				//Military
                "Land_i_Barracks_V2_F","Land_u_Barracks_V2_F","Land_Cargo_House_V1_F","Land_Cargo_House_V3_F","Land_Cargo_HQ_V1_F",
		        "Land_Cargo_HQ_V2_F","Land_Cargo_HQ_V3_F","Land_Cargo_Patrol_V1_F","Land_Cargo_Patrol_V3_F","Land_Cargo_Tower_V1_F","Land_Cargo_Tower_V1_No1_F","Land_Cargo_Tower_V1_No2_F",
		        "Land_Cargo_Tower_V1_No3_F","Land_Cargo_Tower_V1_No4_F","Land_Cargo_Tower_V1_No5_F","Land_Cargo_Tower_V1_No6_F","Land_Cargo_Tower_V1_No7_F","Land_Cargo_Tower_V3_F",
		        "Land_Medevac_house_V1_F","Land_Medevac_HQ_V1_F","Land_MilOffices_V1_F","Land_Dome_Small_F","Land_Research_house_V1_F","Land_Research_HQ_F"
                ];
_cantBuildDist = 200;

if !(_itemClassName in (magazines player)) exitWith {false};
if( isClass(configFile >> "CfgMagazines" >> _itemClassName >> "Interactions" >> "Constructing") ) then
{
	if (findDisplay 602 != displayNull) then
	{
		(findDisplay 602) closeDisplay 2; 
	};
	try 
	{
		if !((vehicle player) isEqualTo player) then
		{
			throw "You cannot build while in a vehicle.";  
		};
		_minimumDistanceToTraderZones = getNumber (missionConfigFile >> "CfgTerritories" >> "minimumDistanceToTraderZones");
		if ([player, _minimumDistanceToTraderZones] call ExileClient_util_world_isTraderZoneInRange) then
		{
			throw "You are too close to a safe zone.";
		};
		if (player call ExileClient_util_world_isInNonConstructionZone) then 
		{
			throw "Building is disallowed here on this server.";
		};
		if (player call ExileClient_util_world_isInConcreteMixerZone) then 
		{
			throw "You are too close to a concrete mixer zone.";
		};
		_minimumDistanceToSpawnZones = getNumber (missionConfigFile >> "CfgTerritories" >> "minimumDistanceToSpawnZones");
		if ([player, _minimumDistanceToSpawnZones] call ExileClient_util_world_isSpawnZoneInRange) then
		{
			throw "You are too close to a spawn zone.";
		};
        if ({typeOf _x in _cantBuildNear} count nearestObjects[player, _cantBuildNear, _cantBuildDist] > 0) exitWith 
        {
        	throw "You cannot build within 200m of military or airport buildings!";
        };
        if (isOnRoad getPosATL player) exitWith
        { 
        	throw "You cannot build on a road!"; 
        };
		if(_itemClassName isEqualTo "Exile_Item_Flag") then 
		{ 
			_maximumNumberOfTerritoriesPerPlayer = getNumber (missionConfigFile >> "CfgTerritories" >> "maximumNumberOfTerritoriesPerPlayer");
			_numberOfTerritories = player call ExileClient_util_territory_getNumberOfTerritories;
			if (_numberOfTerritories >= _maximumNumberOfTerritoriesPerPlayer) then
			{
				throw "You have reached the maximum number of territories you can own.";
			};
			call ExileClient_gui_setupTerritoryDialog_show;
		}
		else 
		{
			[_itemClassName] call ExileClient_construction_beginNewObject;
		};
	}
	catch 
	{
		["ErrorTitleAndText", ["Construction aborted!", _exception]] call ExileClient_gui_toaster_addTemplateToast;
	};
};
true