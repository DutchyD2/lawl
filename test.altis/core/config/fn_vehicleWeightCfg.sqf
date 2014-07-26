/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	
	case "B_Quadbike_01_F": {25};
	case "C_Hatchback_01_F": {50};
	case "C_Offroad_01_F": {70};
	case "C_SUV_01_F": {80};
	case "B_G_Offroad_01_F": {65};
	case "B_MRAP_01_F": {65};
	case "B_MRAP_02_gmg_F": {65};
	case "B_MRAP_02_hmg_F": {65};
	case "I_MRAP_03_gmg_F": {65};    
	case "I_MRAP_03_hmg_F": {65};
	case "C_Hatchback_01_sport_F": {150};
	case "B_G_Offroad_01_armed_F": {200};
	case "B_Truck_01_Repair_F": {50};
	case "B_Truck_01_fuel_F": {50};
	case "B_Truck_01_ammo_F": {50};
	case "B_Truck_01_medical_F": {50};
	case "C_Van_01_transport_F": {100};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {100};
	case "I_Truck_02_transport_F": {400};
	case "I_Truck_02_covered_F": {400};
	case "B_Truck_01_transport_F": {400};
	case "B_Truck_01_covered_F": {400};
	case "B_Truck_01_box_F": {65};
	case "O_Truck_02_transport_F": {300};
	case "O_Truck_02_covered_F": {300};
	case "O_Truck_02_box_F": {300};
	case "O_Truck_02_medical_F": {300};
	case "O_Truck_02_fuel_F": {300};
	case "O_Truck_03_device_F": {350};
	case "B_Heli_Light_01_armed_F": {65};
	case "I_Heli_Light_03_F": {400};
	case "O_Heli_Light_02_unarmed_F": {300};
	case "O_Heli_Light_02_F": {300};
	case "O_MRAP_02_F": {200}; 
	case "O_MRAP_02_hmg_F": {200};
	case "O_MRAP_02_gmg_F": {200};
	case "I_MRAP_03_F": {65};
	case "I_MRAP_03_gmg_F": {65};    
	case "I_MRAP_03_hmg_F": {65};
	case "B_Heli_Light_01_F": {65};
	case "O_Heli_Light_02_unarmed_F": {300};
	case "I_Heli_Light_03_unarmed_F": {150};
	case "I_Heli_Transport_02_F": {450};
	case "C_Boat_Civil_01_F": {800};
	case "C_Boat_Civil_01_police_F": {800};
	case "C_Boat_Civil_01_rescue_F": {800};
	case "C_Rubberboat": {800};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	default {-1};
};