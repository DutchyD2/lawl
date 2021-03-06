#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",10000],
			["C_Hatchback_01_sport_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
		["B_Quadbike_01_F",5000],
		["C_Hatchback_01_F",15000],
		["C_Hatchback_01_sport_F",70000],
		["C_Offroad_01_F",25000],
		["C_SUV_01_F",50000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_fuel_F",50000],
			["C_Van_01_transport_F",60000],
			["C_Van_01_box_F",80000],
			["I_Truck_02_transport_F",100000],
			["I_Truck_02_covered_F",120000],
			["O_Truck_01_transport_F",150000],
			["O_Truck_01_covered_F",175000],
			["O_Truck_01_box_F",250000],
			["O_Truck_03_device_F",300000]
		];	
	};
	
	
	case "reb_car":
	{
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_Quadbike_01_F",2500]];
			_return set[count _return,
			["B_G_Offroad_01_F",15000]];
			_return set[count _return,
			["O_MRAP_02_F",150000]];
			_return set[count _return,
			["B_G_Offroad_01_armed_F",1000000]];
			_return set[count _return,
			["O_MRAP_02_hmg_F",700000]];
		};
	};
	
	case "reb_air":
	{
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",250000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",300000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",350000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",1000000]];
			_return set[count _return,
			["B_Heli_Light_01_armed_F",2500000]];
			_return set[count _return,
			["I_Heli_light_03_F",2500000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Hatchback_01_F",10000]];
		_return set[count _return,
		["C_Offroad_01_F",20000]];
		_return set[count _return,
		["C_SUV_01_F",30000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Truck_01_Repair_F",50000]];
			_return set[count _return,
			["B_Truck_01_fuel_F",50000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",30000]];
			_return set[count _return,
			["B_Truck_01_ammo_F",50000]];
			_return set[count _return,
			["B_Truck_01_medical_F",50000]];
			_return set[count _return,
			["B_MRAP_01_F",50000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_MRAP_03_F",50000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_gmg_F",70000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",70000]];
			_return set[count _return,
			["I_MRAP_03_gmg_F",40000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",50000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",100000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",200000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
			_return set[count _return,
			["B_Heli_Transport_01_F",400000]];
			_return set[count _return,
			["B_Heli_Transport_01_camo_F",400000]];
			_return set[count _return,
			["B_Heli_Light_01_armed_F",2500000]];
			_return set[count _return,
			["B_UAV_01_F",70000]];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",100000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",200000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
			_return set[count _return,
			["B_Heli_Transport_01_F",400000]];
			_return set[count _return,
			["B_Heli_Transport_01_camo_F",400000]];
			_return set[count _return,
			["B_Heli_Light_01_armed_F",2500000]];
			_return set[count _return,
			["B_UAV_01_F",70000]];
		};
	};

	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;