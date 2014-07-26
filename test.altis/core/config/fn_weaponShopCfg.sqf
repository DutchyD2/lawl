#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default 
			{
				["Hospital EMS Shop",
					[
						["Binocular",nil,300],
						["ItemGPS",nil,100],
						["ToolKit",nil,5000],
						["FirstAidKit",nil,400],
						["Medikit",nil,7500],
						["NVGoggles",nil,2000],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	
	case "cop_gear":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Gear Shop",
					[
						["Binocular",nil,300],
						["ItemGPS",nil,100],
						["ToolKit",nil,5000],
						["FirstAidKit",nil,400],
						["Medikit",nil,7500],
						["NVGoggles",nil,2000],
						["MineDetector",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_private":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Public - Private Weapons",
					[
						["hgun_P07_snds_F","Stun Pistol",10000],
						["arifle_sdar_F","Taser Rifle",20000]
					]
				];
			};
		};
	};

	case "private_ammo":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Public - Private Ammo",
					[
						["16Rnd_9x21_Mag","Stun Pistol Magazine",500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",nil,1000]
					]
				];
			};
		};
	};
	
	case "cop_corporal":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not a Corporal"};
			default
			{
				["Corporal Weapons",
					[
						["hgun_P07_snds_F","Stun Pistol",8000],
						["arifle_sdar_F","Taser Rifle",18000],
						["hgun_PDW2000_F",nil,20000],
						["SMG_01_F",nil,25000],
						["SMG_02_F",nil,27500],
						["arifle_Mk20_F",nil,25000],
						["arifle_Mk20_plain_F",nil,25000],
						["arifle_TRG20_F",nil,25000],
						["arifle_TRG21_F",nil,25000]
					]
				];
			};
		};
	};

	case "corporal_ammo":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not a Corporal"};
			default
			{
				["Corporal Ammo",
					[
						["16Rnd_9x21_Mag","Stun Pistol Magazine",500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,27500],
						["30Rnd_9x21_Mag",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,1000]
					]
				];
			};
		};
	};
	
	case "corporal_att":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not a Corporal"};
			default
			{
				["Corporal Attachments",
					[
						["optic_Aco_smg",nil,500],
				        ["optic_ACO_grn_smg",nil,500],
						["optic_Aco",nil,500],
				        ["optic_ACO_grn",nil,500],
				        ["optic_Holosight",nil,500],
				        ["optic_Holosight_smg",nil,500],
						["acc_flashlight",nil,25000],
						["acc_pointer_IR",nil,25000]
					]
				];
			};
		};
	};
	
	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not a Sergeant"};
			default
			{
				["Sergeant Weapons",
					[
						["hgun_P07_snds_F","Stun Pistol",7000],
						["16Rnd_9x21_Mag","Stun Pistol Magazine",500],
						["arifle_sdar_F","Taser Rifle",16000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",nil,1000],
						["hgun_PDW2000_F",nil,18000],
						["SMG_01_F",nil,22500],
						["SMG_02_F",nil,25000],
						["arifle_Mk20_F",nil,25000],
						["arifle_Mk20_plain_F",nil,25000],
						["arifle_TRG20_F",nil,25000],
						["arifle_TRG21_F",nil,22000],
						["arifle_MXC_F",nil,30000],
						["arifle_MX_F",nil,30000]
					]
				];
			};
		};
	};
	
	case "sergeant_ammo":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not a Sergeant"};
			default
			{
				["Sergeant Ammo",
					[
						["16Rnd_9x21_Mag","Stun Pistol Magazine",500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,27500],
						["30Rnd_9x21_Mag",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,30000]
					]
				];
			};
		};
	};
	
	case "sergeant_att":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not a Sergeant"};
			default
			{
				["Sergeant Attachments",
					[
						["muzzle_snds_L",nil,500],
						["muzzle_snds_acp",nil,500],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_H",nil,1000],
						["optic_Aco_smg",nil,500],
				        ["optic_ACO_grn_smg",nil,500],
						["optic_Aco",nil,500],
				        ["optic_ACO_grn",nil,500],
				        ["optic_Holosight",nil,500],
				        ["optic_Holosight_smg",nil,500],
						["optic_MRCO",nil,500],
						["acc_flashlight",nil,25000],
						["acc_pointer_IR",nil,25000]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not a Lieutenant!"};
			default
			{
				["Lieutenant Weapons",
					[
						["hgun_P07_snds_F","Stun Pistol",6000],
						["arifle_sdar_F","Taser Rifle",14000],
						["hgun_Pistol_heavy_01_F","Lethal Pistol",15000],
						["hgun_Pistol_heavy_02_F","Lethal Pistol",15000],
						["hgun_PDW2000_F",nil,16000],
						["SMG_01_F",nil,20000],
						["SMG_02_F",nil,22500],
						["arifle_Mk20_F",nil,22000],
						["arifle_Mk20_plain_F",nil,25000],
						["arifle_TRG20_F",nil,22000],
						["arifle_TRG21_F",nil,22000],
						["arifle_MXC_F",nil,28000],
						["arifle_MX_F",nil,28000],
						["arifle_MX_GL_F",nil,30000],
						["arifle_MXM_F",nil,35000],						
						["arifle_MX_SW_F",nil,35000],
						["srifle_DMR_01_F",nil,40000],
						["srifle_EBR_F",nil,40000]
					]
				];
			};
		};
	};

	case "lieutenant_ammo":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not a Lieutenant!"};
			default
			{
				["Lieutenant Ammo",
					[
						["16Rnd_9x21_Mag","Stun Pistol Magazine",500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",nil,1000],
						["11Rnd_45ACP_Mag","Lethal Magazine",1000],
						["6Rnd_45ACP_Cylinder","Lethal Magazine",1000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
						["30Rnd_9x21_Mag",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,1000],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,1000],
						["10Rnd_762x51_Mag",nil,1000],
						["20Rnd_762x51_Mag",nil,1000]
					]
				];
			};
		};
	};
	
	case "lieutenant_att":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not a Lieutenant"};
			default
			{
				["Lieutenant Attachments",
					[
						["muzzle_snds_L",nil,500],
						["muzzle_snds_acp",nil,500],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_B",nil,1000],
						["optic_MRD",nil,500],
				        ["optic_Yorris",nil,500],
						["optic_Aco_smg",nil,500],
				        ["optic_ACO_grn_smg",nil,500],
						["optic_Aco",nil,500],
				        ["optic_ACO_grn",nil,500],
				        ["optic_Holosight",nil,500],
				        ["optic_Holosight_smg",nil,500],
						["optic_MRCO",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
				        ["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,1000]
					]
				];
			};
		};
	};
	
	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not a captain"};
			default
			{
				["Captain Weapons",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag","Stun Pistol Magazine",500],
						["arifle_sdar_F","Taser Rifle",12000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",nil,500],
						["hgun_Pistol_heavy_01_F","Lethal Pistol",12000],
						["hgun_Pistol_heavy_02_F","Lethal Pistol",12000],
						["hgun_PDW2000_F",nil,14000],
						["SMG_01_F",nil,18000],
						["SMG_02_F",nil,20000],
						["arifle_Mk20_F",nil,20000],
						["arifle_Mk20_plain_F",nil,25000],
						["arifle_TRG21_F",nil,20000],
						["arifle_MXC_F",nil,25000],
						["arifle_MX_F",nil,25000],
						["arifle_MX_GL_Black_F",nil,28000],
						["arifle_MXM_Black_F",nil,30000],
						["arifle_MX_SW_Black_F",nil,30000],
						["srifle_DMR_01_F",nil,35000],
						["srifle_EBR_F",nil,35000],
						["LMG_Mk200_F",nil,50000],
						["srifle_LRR_F",nil,80000],
						["srifle_GM6_F",nil,100000],
						["launch_RPG32_F",nil,25000],
                        ["launch_B_Titan_short_F",nil,60000],
						["launch_Titan_F",nil,80000]
                    ]
				];
			};
		};
	};

	case "captain_ammo":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not a captain"};
			default
			{
				["Captain Ammo",
					[
						["16Rnd_9x21_Mag","Stun Pistol Magazine",500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",nil,1000],
						["11Rnd_45ACP_Mag","Lethal Magazine",1000],
						["6Rnd_45ACP_Cylinder","Lethal Magazine",1000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
						["30Rnd_9x21_Mag",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,1000],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,1000],
						["10Rnd_762x51_Mag",nil,1000],
						["20Rnd_762x51_Mag",nil,1000],
						["200Rnd_65x39_cased_Box",nil,5000],
						["200Rnd_65x39_cased_Box_Tracer",nil,5000],
						["7Rnd_408_Mag",nil,5000],
						["5Rnd_127x108_Mag",nil,5000],
						["RPG32_HE_F",nil,20000],
						["RPG32_F",nil,20000],
						["Titan_AP",nil,10000],
						["Titan_AA",nil,60000],
						["APERSBoundingMine_Range_Mag",nil,30000],
						["APERSTripMine_Wire_Mag",nil,30000],
						["DemoCharge_Remote_Mag",nil,30000],
						["SatchelCharge_Remote_Mag",nil,30000],
						["B_UavTerminal",nil,50000]
					]
				];
			};
		};
	};
	
	case "captain_att":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not a captain"};
			default
			{
				["Captain Attachments",
					[
						["muzzle_snds_L",nil,500],
						["muzzle_snds_acp",nil,500],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_H_MG",nil,2000],
						["optic_MRD",nil,500],
				        ["optic_Yorris",nil,500],
						["optic_Aco_smg",nil,500],
				        ["optic_ACO_grn_smg",nil,500],
						["optic_Aco",nil,500],
				        ["optic_ACO_grn",nil,500],
				        ["optic_Holosight",nil,500],
				        ["optic_Holosight_smg",nil,500],
						["optic_MRCO",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
				        ["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500],
				        ["optic_tws_mg",nil,500],
				        ["optic_tws",nil,500],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,1000]
					]
				];
			};
		};
	};
	
	case "colonel_ammo":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not a Specialist"};
			default
			{
				["Specialist Ammo",
					[
						["16Rnd_9x21_Mag","Stun Pistol Magazine",50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",nil,100],
						["11Rnd_45ACP_Mag","Lethal Magazine",100],
						["6Rnd_45ACP_Cylinder","Lethal Magazine",100],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_556x45_Stanag",nil,100],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,100],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,100],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,100],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag_Tracer",nil,100],
						["10Rnd_762x51_Mag",nil,100],
						["20Rnd_762x51_Mag",nil,100],
						["200Rnd_65x39_cased_Box",nil,500],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
						["7Rnd_408_Mag",nil,500],
						["5Rnd_127x108_Mag",nil,500],
						["5Rnd_127x108_APDS_Mag",nil,500],
						["RPG32_HE_F",nil,2000],
						["RPG32_F",nil,2000],
						["Titan_AT",nil,10000],
						["Titan_AP",nil,10000],
						["Titan_AA",nil,10000],
						["APERSBoundingMine_Range_Mag",nil,3000],
						["APERSTripMine_Wire_Mag",nil,3000],
						["DemoCharge_Remote_Mag",nil,3000],
						["SatchelCharge_Remote_Mag",nil,3000],
						["B_UavTerminal",nil,5000]
					]
				];
			};
		};
	};	        
								
	case "cop_smoke":
	{
		switch(true) do
	    {
      		case (playerSide != west): {"You are not a Cop!"};
			case (__GETC__(life_coplevel) < 3): {"You Can't Use GL Attachments!"};
			default
			{
	            ["Cop GL Attachments",
				    [
				        ["1Rnd_HE_Grenade_shell",nil,1000],
						["UGL_FlareWhite_F",nil,100],
						["UGL_FlareGreen_F",nil,100],
						["UGL_FlareRed_F",nil,100],
						["UGL_FlareYellow_F",nil,100],
						["1Rnd_SmokeRed_Grenade_shell",nil,100],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeGreen_Grenade_shell",nil,100],
						["1Rnd_SmokeYellow_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["3Rnd_SmokeRed_Grenade_shell",nil,100],
						["3Rnd_HE_Grenade_shell",nil,3000],
						["3Rnd_UGL_FlareWhite_F",nil,100],
						["3Rnd_UGL_FlareGreen_F",nil,100],
						["3Rnd_UGL_FlareRed_F",nil,100],
						["3Rnd_UGL_FlareYellow_F",nil,100],
						["3Rnd_Smoke_Grenade_shell",nil,100],
						["3Rnd_SmokePurple_Grenade_shell",nil,100],
						["3Rnd_SmokeGreen_Grenade_shell",nil,100],
						["3Rnd_SmokeYellow_Grenade_shell",nil,100],
						["3Rnd_SmokeBlue_Grenade_shell",nil,100],
						["3Rnd_SmokeOrange_Grenade_shell",nil,100]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Rebel Shop",
					[
						["hgun_Rook40_F",nil,10000],
						["hgun_ACPC2_F",nil,15000],
						["SMG_01_F",nil,25000],
						["SMG_02_F",nil,25000],
						["arifle_SDAR_F",nil,30000],
						["arifle_TRG20_F",nil,35000],
						["arifle_TRG21_F",nil,35000],
						["arifle_Katiba_C_F",nil,50000],
						["arifle_Katiba_F",nil,50000],
						["arifle_Katiba_GL_F",nil,60000],
						["srifle_DMR_01_F",nil,70000],
						["srifle_EBR_F",nil,80000],
						["LMG_Mk200_F",nil,100000],
						["LMG_Zafir_F",nil,120000],
						["launch_RPG32_F",nil,45000]
					]
				];
			};
		};
	};
	
	case "rebel_ammo":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Rebel Ammo",
					[
						["16Rnd_9x21_Mag","Stun Pistol Magazine",500],
						["30Rnd_9x21_Mag",nil,1000],
						["9Rnd_45ACP_Mag",nil,1000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,1000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,1000],
						["10Rnd_762x51_Mag",nil,1000],
						["20Rnd_762x51_Mag",nil,1000],
						["200Rnd_65x39_cased_Box",nil,5000],
						["200Rnd_65x39_cased_Box_Tracer",nil,5000],
						["150Rnd_762x51_Box",nil,5000],
						["150Rnd_762x51_Box_Tracer",nil,5000],
						["RPG32_F",nil,20000],
						["RPG32_HE_F",nil,20000],
						["APERSBoundingMine_Range_Mag",nil,50000],
						["APERSTripMine_Wire_Mag",nil,50000],
						["DemoCharge_Remote_Mag",nil,50000],
						["SatchelCharge_Remote_Mag",nil,50000]
					]
				];
			};
		};
	};
	
	case "rebel_att":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Rebel Shop",
					[
						["muzzle_snds_L",nil,500],
						["muzzle_snds_acp",nil,500],
						["muzzle_snds_M",nil,500],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_B",nil,500],
						["muzzle_snds_H_MG",nil,500],
						["optic_MRD",nil,500],
				        ["optic_Yorris",nil,500],
						["optic_Aco_smg",nil,500],
				        ["optic_ACO_grn_smg",nil,500],
						["optic_Aco",nil,500],
				        ["optic_ACO_grn",nil,500],
				        ["optic_Holosight",nil,500],
				        ["optic_Holosight_smg",nil,500],
						["optic_MRCO",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
				        ["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,1000]
					]
				];
			};
		};
	};
	
	case "rebel_smoke":
	{
		switch(true) do
	    {
      		case (playerSide != civilian): {"You are not a Civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
	            ["Rebel Smokes",
				    [
				        ["1Rnd_HE_Grenade_shell",nil,1000],
						["UGL_FlareWhite_F",nil,1000],
						["UGL_FlareGreen_F",nil,1000],
						["UGL_FlareRed_F",nil,1000],
						["UGL_FlareYellow_F",nil,1000],
						["1Rnd_SmokeRed_Grenade_shell",nil,1000],
						["1Rnd_Smoke_Grenade_shell",nil,1000],
						["1Rnd_SmokePurple_Grenade_shell",nil,1000],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1000],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1000],
						["1Rnd_SmokeBlue_Grenade_shell",nil,1000],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1000],
						["3Rnd_SmokeRed_Grenade_shell",nil,1000],
						["3Rnd_HE_Grenade_shell",nil,3000],
						["3Rnd_UGL_FlareWhite_F",nil,1000],
						["3Rnd_UGL_FlareGreen_F",nil,1000],
						["3Rnd_UGL_FlareRed_F",nil,1000],
						["3Rnd_UGL_FlareYellow_F",nil,1000],
						["3Rnd_Smoke_Grenade_shell",nil,1000],
						["3Rnd_SmokePurple_Grenade_shell",nil,1000],
						["3Rnd_SmokeGreen_Grenade_shell",nil,1000],
						["3Rnd_SmokeYellow_Grenade_shell",nil,1000],
						["3Rnd_SmokeBlue_Grenade_shell",nil,1000],
						["3Rnd_SmokeOrange_Grenade_shell",nil,1000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,10000],
						["16Rnd_9x21_Mag",nil,500],
						["hgun_ACPC2_F",nil,15000],
						["9Rnd_45ACP_Mag",nil,750],
						["hgun_PDW2000_F",nil,20000],
						["30Rnd_9x21_Mag",nil,1000],
						["optic_Aco",nil,2500],
						["FirstAidKit",nil,500],
						["U_C_HunterBody_grn",nil,2500],
						["V_Rangemaster_belt",nil,2500]
					]
				];
			};
		}; 
	};

	case "gang":
 	{
 		switch(true) do
 		{
 			case (playerSide != civilian): {"You are not a civilian!"};
 			default
 			{
 				["Hideout Weapons",
 					[
						["hgun_Rook40_F",nil,10000],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,10000],
						["hgun_PDW2000_F",nil,20000],
						["SMG_01_F",nil,25000],
						["SMG_02_F",nil,27500],
						["arifle_Mk20_F",nil,25000],
						["arifle_TRG20_F",nil,25000],
						["arifle_TRG21_F",nil,25000],
						["arifle_MXC_F",nil,30000],
						["arifle_MX_F",nil,30000],
						["arifle_MX_GL_Black_F",nil,15000],
						["arifle_Katiba_C_F",nil,30000],
						["arifle_Katiba_F",nil,30000],
						["arifle_Katiba_GL_F",nil,30000],
						["srifle_DMR_01_F",nil,30000],
						["srifle_EBR_F",nil,30000],
						["LMG_Mk200_F",nil,50000],
						["LMG_Zafir_F",nil,500000],
						["srifle_LRR_F",nil,80000],
						["srifle_GM6_F",nil,80000],
						["launch_RPG32_F",nil,25000],
                        ["launch_B_Titan_short_F",nil,120000],
						["launch_Titan_F",nil,180000]
                    ]
 				];
 			};
 		};
	};
	
	case "gang_ammo":
	{
		switch(true) do
	    {
      		case (playerSide != civilian): {"You are not a Civilian!"};
			default
			{
	            ["Gang Ammo",
		            [
				        ["16Rnd_9x21_Mag",nil,500],
						["30Rnd_9x21_Mag",nil,1000],
						["9Rnd_45ACP_Mag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["11Rnd_45ACP_Mag",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,1000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,1000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,1000],
						["10Rnd_762x51_Mag",nil,1000],
						["20Rnd_762x51_Mag",nil,1000],
						["200Rnd_65x39_cased_Box",nil,5000],
						["200Rnd_65x39_cased_Box_Tracer",nil,5000],
						["150Rnd_762x51_Box",nil,5000],
						["150Rnd_762x51_Box_Tracer",nil,5000],
						["7Rnd_408_Mag",nil,5000],
						["5Rnd_127x108_Mag",nil,5000],
						["RPG32_F",nil,20000],
						["RPG32_HE_F",nil,20000],
						["Titan_AP",nil,100000],
						["Titan_AA",nil,100000],
						["APERSBoundingMine_Range_Mag",nil,30000],
						["APERSTripMine_Wire_Mag",nil,30000],
						["DemoCharge_Remote_Mag",nil,30000],
						["SatchelCharge_Remote_Mag",nil,30000]
			        ]
				];
			};
		};
	};
	
	case "gang_att":
 	{
 		switch(true) do
 		{
 			case (playerSide != civilian): {"You are not a civilian!"};
 			default
 			{
 				["Gang Attachments",
 					[
						["muzzle_snds_L",nil,500],
						["muzzle_snds_acp",nil,500],
						["muzzle_snds_M",nil,500],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_B",nil,500],
						["muzzle_snds_H_MG",nil,500],
						["optic_MRD",nil,500],
				        ["optic_Yorris",nil,500],
						["optic_Aco_smg",nil,500],
				        ["optic_ACO_grn_smg",nil,500],
						["optic_Aco",nil,500],
				        ["optic_ACO_grn",nil,500],
				        ["optic_Holosight",nil,500],
				        ["optic_Holosight_smg",nil,500],
						["optic_MRCO",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
				        ["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500],
				        ["optic_tws_mg",nil,500],
				        ["optic_tws",nil,500],
						["optic_Nightstalker",nil,500],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,1000]
                    ]
 				];
 			};
 		};
	};
	
	case "gang_smoke":
	{
		switch(true) do
	    {
      		case (playerSide != civilian): {"You are not a Civilian!"};
			default
			{
	            ["Gang Smokes",
				    [
				        ["1Rnd_HE_Grenade_shell",nil,1000],
						["UGL_FlareWhite_F",nil,1000],
						["UGL_FlareGreen_F",nil,1000],
						["UGL_FlareRed_F",nil,1000],
						["UGL_FlareYellow_F",nil,1000],
						["1Rnd_SmokeRed_Grenade_shell",nil,1000],
						["1Rnd_Smoke_Grenade_shell",nil,1000],
						["1Rnd_SmokePurple_Grenade_shell",nil,1000],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1000],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1000],
						["1Rnd_SmokeBlue_Grenade_shell",nil,1000],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1000],
						["3Rnd_SmokeRed_Grenade_shell",nil,1000],
						["3Rnd_HE_Grenade_shell",nil,3000],
						["3Rnd_UGL_FlareWhite_F",nil,1000],
						["3Rnd_UGL_FlareGreen_F",nil,1000],
						["3Rnd_UGL_FlareRed_F",nil,1000],
						["3Rnd_UGL_FlareYellow_F",nil,1000],
						["3Rnd_Smoke_Grenade_shell",nil,1000],
						["3Rnd_SmokePurple_Grenade_shell",nil,1000],
						["3Rnd_SmokeGreen_Grenade_shell",nil,1000],
						["3Rnd_SmokeYellow_Grenade_shell",nil,1000],
						["3Rnd_SmokeBlue_Grenade_shell",nil,1000],
						["3Rnd_SmokeOrange_Grenade_shell",nil,1000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,300],
			    ["ItemGPS",nil,100],
				["ToolKit",nil,5000],
				["FirstAidKit",nil,400],
				["Medikit",nil,7500],
				["NVGoggles",nil,2000] 
			]
		];
	};
};
	