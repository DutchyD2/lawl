/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {5000}; //Drivers License cost
	case "boat": {2500}; //Boating license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "gun": {25000}; //Firearm/gun license cost
	case "dive": {2500}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {30000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {10000}; //Coast guard license cost
	case "heroin": {75000}; //Heroin processing license cost
	case "marijuana": {50000}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {0}; //Gang license cost
	case "rebel": {100000}; //Rebel license cost
	case "truck": {25000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {12000};
	case "cocaine": {100000};
	case "sand": {14500};
	case "iron": {9500};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "home": {75000};
	case "crack": {250000};
};