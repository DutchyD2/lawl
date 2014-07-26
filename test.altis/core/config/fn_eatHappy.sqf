/*
	File: fn_eatFood.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main handling system for eating food.
	*Needs to be revised and made more modular and more indept effects*
*/
private["_happy","_val","_sum","_suicide"];
_happy = [_this,0,"",[""]] call BIS_fnc_param;
if(_happy == "") exitWith {};
_val = 0;


{                                                     
	switch (_happy) do
	{
		case "marijuana": {_val = 15};
		case "cocainep": {_val = 25};
		case "crackp": {_val = 30};
	};

	_sum = life_happy + _val;
	if(_sum > 100) then {_sum = 100; _smoke attachTo [player, [0,-0.1,1.5]];}; _smoke = "SmokeShellRed" createVehicle position player;; hint "You seem to be high as fuck! Red trail activated";};
	life_happy = _sum;
};

if(life_happy <= 5) then {player addAction ["Commit Suicide", { hint format ["You killed yourself because you're too much of an unhappy cunt.", player setDamage 100] }, name player];};
if(life_happy > 5) then {player removeAction ["Commit Suicide", { hint format ["You killed yourself because you're too much of an unhappy cunt.", player setDamage 100] }, name player];};