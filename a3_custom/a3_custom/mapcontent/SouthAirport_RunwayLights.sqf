// runway objects
private _objects = [
	["Land_Flush_Light_green_F",[18586.2,2522.38,134.594],[[0,1,0],[0,0,1]],[true,false]],
	["Land_Flush_Light_yellow_F",[18150,1949.86,134.595],[[0,1,0],[0,0,1]],[true,false]]
					];
{
	private _object = (_x select 0) createVehicle [0,0,0];
	_object setPosASL (_x select 1);
	_object setVectorDirAndUp (_x select 2);
	_object enableSimulationGlobal ((_x select 3) select 0);
	_object allowDamage ((_x select 3) select 1);
} forEach _objects;