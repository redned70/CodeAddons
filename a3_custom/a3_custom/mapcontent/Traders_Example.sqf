//a trader load
private _objects = [
	//["Land_LampShabby_F",[17161.7,3477.28,303.275],[[0.927567,0.373658,0],[0,0,1]],[true,false]],
	//["Land_MedicalTent_01_white_generic_open_F",[17242.2,3541.85,300.936],[[-0.00231718,0.997082,-0.0763051],[0.197997,0.0752521,0.97731]],[false,true]]
					];
{
	private _object = (_x select 0) createVehicle [0,0,0];
	_object setPosASL (_x select 1);
	_object setVectorDirAndUp (_x select 2);
	_object enableSimulationGlobal ((_x select 3) select 0);
	_object allowDamage ((_x select 3) select 1);
} forEach _objects;