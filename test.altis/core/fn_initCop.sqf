#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if ((str(player) in ["cop_1","cop_2","cop_3","cop_4","cop_5","cop_6","cop_7","cop_8","cop_9","cop_10","cop_11","cop_12","cop_13","cop_14","cop_15","cop_16","cop_17","cop_18","cop_19","cop_20","cop_21","cop_22","cop_23","cop_24","cop_25"])) then
{
    [] call life_fnc_spawnMenu;
}
else
{
    if ((str(player) in ["cop_26","cop_27","cop_28","cop_29","cop_30"])) then
    {
        if(__GETC__(life_coplevel) == 5) then
        {
            [] call life_fnc_spawnMenu;
        }
        else
        {
            ["NotWhitelisted",false,true] call BIS_fnc_endMission;
            sleep 35;
        };
    }
    else
    {
        if ((str(player) in ["cop_31","cop_32","cop_33"])) then
        {
			if((__GETC__(life_coplevel) == 6) && (__GETC__(life_adminlevel) == 3)) then 
            {
                [] call life_fnc_spawnMenu;
            }
            else
            {
                ["NotWhitelisted",false,true] call BIS_fnc_endMission;
                sleep 35;
            };
        
		};
    };
};

player setVariable["rank",(__GETC__(life_coplevel)),true];
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.