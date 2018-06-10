/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de

	Copyright infiSTAR - 2011 - 2018. All rights reserved.
	Christian (Chris) L. (infiSTAR23@gmail.com) Developer of infiSTAR

	Description:
	Arma AntiHack & AdminTools - infiSTAR.de


	READ:
	type 0 = just execute
	type 1 = toggleable function
	type 2 = function targets the selected player (it will be _this)

	name = name shown in the admin menu (this is also what has to be put in the EXILE_AHAT_CONFIG.sqf as Admin Power!)

	code = code to execute - if you have a linebreak within the code, you need to put a \ at the end of each line!
*/
class CfgCustomFunctions {
	class custom1 {
		type = 0;	// just execute
		name = "Spawn_bandits_Mission";
		code = "call fn_spawn_bandits";
	};
	class custom2 {
		type = 0;	// just execute
		name = "Spawn_bauhaus_Mission";
		code = "call fn_spawn_bauhaus";
	};
	class custom3 {
		type = 0;	// just execute
		name = "Spawn_beertransport_Mission";
		code = "call fn_spawn_beertransport";
	};
	class custom4 {
		type = 0;	// just execute
		name = "Spawn_behindenemylines_Mission";
		code = "call fn_spawn_behindenemylines";
	};
	class custom5 {
		type = 0;	// just execute
		name = "Spawn_blackhawkdown_Mission";
		code = "call fn_spawn_blackhawkdown";
	};
	class custom6 {
		type = 0;	// just execute
		name = "Spawn_cardealer_Mission";
		code = "call fn_spawn_cardealer";
	};
	class custom7 {
		type = 0;	// just execute
		name = "Spawn_construction_Mission";
		code = "call fn_spawn_construction";
	};
	class custom8 {
		type = 0;	// just execute
		name = "Spawn_donthasslethehoff_Mission";
		code = "call fn_spawn_donthasslethehoff";
	};
	class custom9 {
		type = 0;	// just execute
		name = "Spawn_foodtransport_Mission";
		code = "call fn_spawn_foodtransport";
	};
	class custom10 {
		type = 0;	// just execute
		name = "Spawn_guntransport_Mission";
		code = "call fn_spawn_guntransport";
	};
	class custom11 {
		type = 0;	// just execute
		name = "Spawn_humanitarian_Mission";
		code = "call fn_spawn_humanitarian";
	};
	class custom12 {
		type = 0;	// just execute
		name = "Spawn_lost_battalion_Mission";
		code = "call fn_spawn_lost_battalion";
	};
	class custom13 {
		type = 0;	// just execute
		name = "Spawn_medical_Mission";
		code = "call fn_spawn_medical";
	};
	class custom14 {
		type = 0;	// just execute
		name = "Spawn_mercbase_Mission";
		code = "call fn_spawn_mercbase";
	};
	class custom15 {
		type = 0;	// just execute
		name = "Spawn_mercenaries_Mission";
		code = "call fn_spawn_mercenaries";
	};
	class custom16 {
		type = 0;	// just execute
		name = "Spawn_nedbandit1_Mission";
		code = "call fn_spawn_nedbandit1_mission";
	};
	class custom17 {
		type = 0;	// just execute
		name = "Spawn_nedbuilding1_Mission";
		code = "call fn_spawn_nedbuilding1_mission";
	};
	class custom18 {
		type = 0;	// just execute
		name = "Spawn_nedcar_Mission";
		code = "call fn_spawn_nedcar_mission";
	};
	class custom19 {
		type = 0;	// just execute
		name = "Spawn_nedcashbandits_Mission";
		code = "call fn_spawn_nedcashbandits_mission";
	};
	class custom20 {
		type = 0;	// just execute
		name = "Spawn_neddrinkstransport_Mission";
		code = "call fn_spawn_neddrinkstransport_mission";
	};
	class custom21 {
		type = 0;	// just execute
		name = "Spawn_nedguns1_Mission";
		code = "call fn_spawn_nedguns1_mission";
	};
	class custom22 {
		type = 0;	// just execute
		name = "Spawn_nedhatchback_Mission";
		code = "call fn_spawn_nedhatchback_mission";
	};
	class custom23 {
		type = 0;	// just execute
		name = "Spawn_nedhuey_Mission";
		code = "call fn_spawn_nedhuey_mission";
	};
	class custom24 {
		type = 0;	// just execute
		name = "Spawn_nedhunter_Mission";
		code = "call fn_spawn_nedhunter_mission";
	};
	class custom25 {
		type = 0;	// just execute
		name = "Spawn_nedifrit_Mission";
		code = "call fn_spawn_nedifrit_mission";
	};
	class custom26 {
		type = 0;	// just execute
		name = "Spawn_nedlittlebird_Mission";
		code = "call fn_spawn_nedlittlebird_mission";
	};
	class custom27 {
		type = 0;	// just execute
		name = "Spawn_nedmedical1_Mission";
		code = "call fn_spawn_nedmedical1_mission";
	};
	class custom28 {
		type = 0;	// just execute
		name = "Spawn_nedoffroad_Mission";
		code = "call fn_spawn_nedoffroad_mission";
	};
	class custom29 {
		type = 0;	// just execute
		name = "Spawn_nedresearch_Mission";
		code = "call fn_spawn_nedresearch_mission";
	};
	class custom30 {
		type = 0;	// just execute
		name = "Spawn_nedsnipercamp_Mission";
		code = "call fn_spawn_nedsnipercamp_mission";
	};
	class custom31 {
		type = 0;	// just execute
		name = "Spawn_nedstrider_Mission";
		code = "call fn_spawn_nedstrider_mission";
	};
	class custom32 {
		type = 0;	// just execute
		name = "Spawn_nedbtrader_Mission";
		code = "call fn_spawn_nedbtrader_mission";
	};
	class custom33 {
		type = 0;	// just execute
		name = "Spawn_nedural_Mission";
		code = "call fn_spawn_nedural_mission";
	};
	class custom34 {
		type = 0;	// just execute
		name = "Spawn_roguenavyseals_Mission";
		code = "call fn_spawn_roguenavyseals";
	};
	class custom35 {
		type = 0;	// just execute
		name = "Spawn_thieves_Mission";
		code = "call fn_spawn_thieves";
	};
	class custom36 {
		type = 0;	// just execute
		name = "Spawn_walmart_Mission";
		code = "call fn_spawn_walmart";
	};
	class custom37 {
		type = 0;
		name = "==== Bandit Missions ====";			// This is just a menu marker
		code = "systemChat 'Choose mission'";		// If clicked it says message to admin
	};	
/*	Example of static mission							// delete if you want to
	class custom38 {									// next number up
		type = 0;										// just execute
		name = "Spawn_roguenavyseals_Mission";			// name of menu item - must be unique
		code = "_this call Spawn_slums_Mission";		// name of function called - must be unique
	};	*/	
};