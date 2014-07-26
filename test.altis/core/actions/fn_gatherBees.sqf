/*
	File: fn_gatherBees.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers Bees
*/
private["_sum"];
_sum = ["bees",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText[format[localize "STR_NOTF_Gathering",localize "STR_Item_Bees"],"PLAIN"];
	titleFadeOut 5;
	if(([true,"bees",1] call life_fnc_handleInv)) then
	{
		titleText[format[localize "STR_NOTF_Collected",localize "STR_Item_Bees"],"PLAIN"];
	};
}
else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_inUse = false;