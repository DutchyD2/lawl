enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.3.5";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "Admin\anticheat.sqf";
[] execVM "scripts\BW_Fence_Fix\RepairAirPortFence.sqf";
[] execVM "scripts\BW_Fence_Cutter\Init.sqf";
[] execVM "scripts\Fastroping\fastrope.sqf";
[] execVM "scripts\Keys\Keys.sqf";
[] execVM "scripts\StatusBar\fn_statusBar.sqf";
[
		60, // seconds to delete dead bodies (0 means don't delete) 
		0, // seconds to delete dead vehicles (0 means don't delete)
		60, // seconds to delete dropped weapons (0 means don't delete)
		0, // seconds to deleted planted explosives (0 means don't delete)
		0 // seconds to delete dropped smokes/chemlights (0 means don't delete)
	] execVM 'scripts\Cleanup\repetitive_cleanup.sqf';
waitUntil {time > 0};
execVM "scripts\ETV\EtV.sqf";
waitUntil {!isNil "EtVInitialized"};
[player] call EtV_Actions;

call compile preprocessFile "scripts\=BTC=_TK_punishment\=BTC=_tk_init.sqf";

StartProgress = true;