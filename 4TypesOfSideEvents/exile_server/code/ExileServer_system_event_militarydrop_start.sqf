/**
 * ExileServer_system_event_supplyBox_start
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

 // Modified to make it an MilitaryDrop mission by GolovaRaoul, all credits to Exile Mod Team
 // Credtis to the orignal idea, @Aidem
 // https://epochmod.com/forum/topic/3779-4-types-of-side-missions-events/

private["_randomPositions","_marker","_config","_markerTime","_filteredAirportPositions","_dropAltitude","_dropRadius","_boxType","_randomPosition","_position","_marker","_box","_itemClassName","_itemCount","_itemCountMax","_itemCountMin","_i","_supplySmoke","_parachute"];
_randomPositions = call ExileClient_util_world_getAllAirportPositions;
_config = configFile >> "CfgSettings" >> "Events" >> "MilitaryDrop";
_markerTime = getNumber (_config >> "markerTime");
if (_randomPositions isEqualTo []) exitWith
{
	"The current map has no airports. Skipping military box drop event." call ExileServer_util_log;
};
_filteredAirportPositions = [];
{
	if !([_x, 1000] call ExileClient_util_world_isTraderZoneInRange) then
	{
		_filteredAirportPositions pushBack _x;
	};
}
forEach _randomPositions;
if (_filteredAirportPositions isEqualTo []) exitWith
{
	"The current map has airports, but they are too close to traders. Skipping military drop event." call ExileServer_util_log;
};
_config = configFile >> "CfgSettings" >> "Events" >> "MilitaryDrop";
_dropAltitude = getNumber (_config >> "dropAltitude");
_dropRadius = getNumber (_config >> "dropRadius");
_boxType = selectRandom (getArray (_config >> "types"));
_randomPosition = [[7000,7000,0], 1, 7000, 3, 0, 20, 0] call BIS_fnc_findSafePos;
_boxHeight = [0];
_randomPositionCalculated = _randomPosition + _boxHeight;
//_randomPosition = [_mapcenter, 1, _centerrad, 3, 0, 600, 0] call BIS_fnc_findSafePos;
//_randomPosition = [[4800,2500,0],[4500,8632,0],[7390,6072,0],[4471,4512,0],[5337,2385,0],[2720,4009,0],[9902,4987,0],[11967,5919,0],[10122,7052,0],[4356,6102,0],[1925,7792,0],[792,9967,0],[7392,12407,0],[3951,14262,0],[12286,12655,0],[4579,10378,0],[8722,10257,0],[12979,1202,0],[12493,1800,0],[11038,4279,0],[1894,7844,0],[1254,10031,0],[1809,12590,0],[7291,13756,0],[12507,12580,0],[3712,2972,0],[9043,7755,0],[4857,9636,0],[4735,2545,0],[11785,10399,0],[11785,10399,0],[4354,10639,0]] call BIS_fnc_selectRandom;
_position = [_randomPositionCalculated, 500] call ExileClient_util_math_getRandomPositionInCircle;
["toastRequest", ["InfoTitleAndText", ["Military Drop", "A crate of guns has been dropped, Check the Red Circle on your Map for the Location!"]]] call ExileServer_system_network_send_broadcast;
/*
 * Exile Marker

_marker = createMarker [ format["ExileSupplyBox%1", diag_tickTime], _position];
_marker setMarkerType "ExileHeart";

*/

_marker = 		createMarker [ format["ExileSupplyBox%1", diag_tickTime], _randomPosition];
_marker 		setMarkerShape "ELLIPSE";
_marker 		setMarkerColor "ColorRed";
_marker 		setMarkerBrush "SolidBorder";
_marker 		setMarkerSize [500,500];

_box = createVehicle ["Exile_Container_SupplyBox", [0, 0, 0], [], 0, "CAN_COLLIDE"];
_box setPosATL _position;
_box setDir (random 360);
clearBackpackCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
{
	_itemClassName = _x select 0;
	_itemCountMin  = _x select 1;
	_itemCountMax  = _x select 2;
	_itemCount = _itemCountMin + (round (random(_itemCountMax-_itemCountMin)));
	for "_i" from 1 to _itemCount do
	{
		[_box, _itemClassName] call ExileClient_util_containerCargo_add;
	};
}
forEach (getArray (_config >> "BoxTypes5" >> _boxType >> "items"));
_position = getPos _box;
//_randomBoxPosition set [2, 0];
_box setPos _position;
_box setVelocity [0, 0, 0];
uiSleep (60 * _markerTime);
deleteMarker _marker;