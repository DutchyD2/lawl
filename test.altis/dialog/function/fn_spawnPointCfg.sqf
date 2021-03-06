#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_ret"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case independent:
	{
		_ret = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
	
	case west:
	{
		_ret = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_5","Highway Patrol","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
			if(__GETC__(life_coplevel) > 4) then {
			_ret = _ret + [
				["SWAT_Spawn_1","S.W.A.T 1","\a3\ui_f\data\map\Markers\Flags\uk_ca.paa"],
				["SWAT_Spawn_2","S.W.A.T 2","\a3\ui_f\data\map\Markers\Flags\uk_ca.paa"],
				["SWAT_Spawn_3","S.W.A.T 3","\a3\ui_f\data\map\Markers\Flags\uk_ca.paa"]
			];
		};
	};    

	case civilian:
	{
		_ret = [
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_ret set[count _ret,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};	
	};
};

_ret;