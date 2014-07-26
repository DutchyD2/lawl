#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["U_B_Protagonist_VR",nil,500000]];
			_ret set[count _ret,["U_O_Protagonist_VR",nil,500000]];
			_ret set[count _ret,["U_I_Protagonist_VR",nil,500000]];
		};
	};	
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,100]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_Shemag_khk",nil,100]];
			_ret set[count _ret,["H_Shemag_olive",nil,100]];
			_ret set[count _ret,["H_Shemag_olive_hs",nil,100]];
			_ret set[count _ret,["H_Shemag_tan",nil,100]];
			_ret set[count _ret,["H_ShemagOpen_tan",nil,100]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_BandollierB_blk",nil,1500]];
			_ret set[count _ret,["V_BandollierB_cbr",nil,1500]];
			_ret set[count _ret,["V_BandollierB_khk",nil,1500]];
			_ret set[count _ret,["V_BandollierB_oli",nil,1500]];
			_ret set[count _ret,["V_BandollierB_rgr",nil,1500]];
		}; 
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["V_PlateCarrier1_rgr",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier3_rgr",nil,1500]];
			_ret set[count _ret,["V_PlateCarrierGL_rgr",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier_Kerry",nil,1500]];
			_ret set[count _ret,["V_PlateCarrierL_CTRG",nil,1500]];
			_ret set[count _ret,["V_PlateCarrierH_CTRG",nil,1500]];
			_ret set[count _ret,["V_PlateCarrierSpec_rgr",nil,1500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret set[count _ret,["B_Kitbag_cbr",nil,800]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["B_FieldPack_cbr",nil,1500]];
			_ret set[count _ret,["B_FieldPack_blk",nil,1500]];
			_ret set[count _ret,["B_Kitbag_cbr",nil,800]];
			_ret set[count _ret,["B_AssaultPack_cbr",nil,700]];
			_ret set[count _ret,["B_Bergen_sgg",nil,2500]];
			_ret set[count _ret,["B_Bergen_mcamo",nil,2000]];
			_ret set[count _ret,["B_Bergen_rgr",nil,2000]];
			_ret set[count _ret,["B_Bergen_blk",nil,2000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["B_Carryall_ocamo",nil,2000]];
			_ret set[count _ret,["B_Carryall_oucamo",nil,2000]];
			_ret set[count _ret,["B_Carryall_mcamo",nil,2000]];
			_ret set[count _ret,["B_Carryall_oli",nil,2000]];
			_ret set[count _ret,["B_Carryall_khk",nil,2000]];
			_ret set[count _ret,["B_Carryall_cbr",nil,2000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["B_UAV_01_backpack_F",nil,150000]];
			_ret set[count _ret,["B_Parachute",nil,2000]];
		};
	};	
};

_ret;