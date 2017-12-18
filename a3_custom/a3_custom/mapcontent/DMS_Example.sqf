//A DMS mission load
private _objects = [
	//["object",[X,Y,Z],[[direction],[vector]],[simulated,damageable]],
	//["Land_PowLines_ConcL",[18709.1,9507.74,-2.59942],[[-0.339454,-0.940623,0],[0,0,1]],[true,false]],
	//["Land_PowLines_ConcL",[18725,9503.88,-3.04034],[[-0.939693,0.34202,0],[0,0,1]],[true,false]]
					];
{
	private _object = (_x select 0) createVehicle [0,0,0];
	_object setPosASL (_x select 1);
	_object setVectorDirAndUp (_x select 2);
	_object enableSimulationGlobal ((_x select 3) select 0);
	_object allowDamage ((_x select 3) select 1);
} forEach _objects;