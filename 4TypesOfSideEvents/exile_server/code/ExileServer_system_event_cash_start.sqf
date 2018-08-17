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

 // Modified to make it an cash mission by [CiC]red_ned, all credits to Exile Mod Team
 // Credtis to the orignal idea, @Aidem

private["_randomPositions","_marker","_config","_markerTime","_filteredAirportPositions","_dropAltitude","_dropRadius","_boxType","_randomPosition","_position","_marker","_box","_itemClassName","_itemCount","_itemCountMax","_itemCountMin","_i","_supplySmoke","_parachute","_cash"];

// Here is cash setting for box
_cash = (1000 + round (random (2500)));       //this gives 1000 to 26000 cash so adjust to fit

_randomPositions = call ExileClient_util_world_getAllAirportPositions;
_config = configFile >> "CfgSettings" >> "Events" >> "CASH";
_markerTime = getNumber (_config >> "markerTime");
if (_randomPositions isEqualTo []) exitWith
{
	"The current map has no airports. Skipping cash box drop event." call ExileServer_util_log;
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
	"The current map has airports, but they are too close to traders. Skipping cash box drop event." call ExileServer_util_log;
};
_config = configFile >> "CfgSettings" >> "Events" >> "CASH";
_dropAltitude = getNumber (_config >> "dropAltitude");
_dropRadius = getNumber (_config >> "dropRadius");
_boxType = selectRandom (getArray (_config >> "types"));
_randomPosition = [[7000,7000,0], 1, 7000, 3, 0, 20, 0] call BIS_fnc_findSafePos;
_boxHeight = [0];
_randomPositionCalculated = _randomPosition + _boxHeight;

_position = [_randomPositionCalculated, 500] call ExileClient_util_math_getRandomPositionInCircle;
["toastRequest", ["InfoTitleAndText", ["Cash Box", "An armoured car lost its Cargo, Check the Green Circle on your Map for the Location!"]]] call ExileServer_system_network_send_broadcast;

_marker = 		createMarker [ format["ExileSupplyBox%1", diag_tickTime], _randomPosition];
_marker 		setMarkerShape "ELLIPSE";
_marker 		setMarkerColor "ColorGreen";
_marker 		setMarkerBrush "SolidBorder";
_marker 		setMarkerSize [500,500];

_box = createVehicle ["Exile_Container_SupplyBox", [0, 0, 0], [], 0, "CAN_COLLIDE"];
_box setPosATL _position;
_box setDir (random 360);
clearBackpackCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;

_position = getPos _box;
_box setPos _position;
_box setVelocity [0, 0, 0];

// Loading cash into crate
_box setVariable ["ExileMoney", _cash,true];

uiSleep (60 * _markerTime);
deleteMarker _marker;