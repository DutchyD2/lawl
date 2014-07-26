// Fence Cut by Big_Wilk see readme for info

BW_JIP_Fence_Destroy = {

private ["_fence"];
_fence = _this select 0;
_fence setDamage 1;

};

BW_Fence_Destroy = {
private ["_fence","_dir","_pos","_replacement"];
_fence = _this select 0;

if ((damage _fence) == 1) exitWith {};

_pos = getPosASL _fence;
_dirVector = vectorDir _fence;
_vectorUp = vectorUp _fence;

[[_fence],"BW_JIP_Fence_Destroy",nil,true] spawn BIS_fnc_MP;

if (_fence isKindOf "Land_Net_Fence_8m_F") then {_replacement = createVehicle ["Land_Net_FenceD_8m_F", [_pos select 0, _pos select 1, _pos select 2], [], 0, "CAN_COLLIDE"];_replacement setPosASL _pos; _replacement setVectorDirAndUp [[_dirVector select 0, _dirVector select 1, _dirVector select 2],[_vectorUp select 0, _vectorUp select 1, _vectorUp select 2]];};

if (_fence isKindOf "Land_Mil_WiredFence_F") then {_replacement = createVehicle ["Land_Mil_WiredFenceD_F", [_pos select 0, _pos select 1, _pos select 2], [], 0, "CAN_COLLIDE"];_replacement setPosASL _pos; _replacement setVectorDirAndUp [[_dirVector select 0, _dirVector select 1, _dirVector select 2],[_vectorUp select 0, _vectorUp select 1, _vectorUp select 2]];};	
 
if (_fence isKindOf "Land_New_WiredFence_10m_F") then {_replacement = createVehicle ["Land_New_WiredFence_10m_Dam_F", [_pos select 0, _pos select 1, _pos select 2], [], 0, "CAN_COLLIDE"];_replacement setPosASL _pos; _replacement setVectorDirAndUp [[_dirVector select 0, _dirVector select 1, _dirVector select 2],[_vectorUp select 0, _vectorUp select 1, _vectorUp select 2]];};
if (_fence isKindOf "Land_New_WiredFence_5m_F") then {_replacement = createVehicle ["Land_New_WiredFence_10m_Dam_F", [_pos select 0, _pos select 1, _pos select 2], [], 0, "CAN_COLLIDE"];_replacement setPosASL _pos; _replacement setVectorDirAndUp [[_dirVector select 0, _dirVector select 1, _dirVector select 2],[_vectorUp select 0, _vectorUp select 1, _vectorUp select 2]];};

if (_fence isKindOf "Land_Wired_Fence_4m_F") then {_replacement = createVehicle ["Land_Wired_Fence_4mD_F", [_pos select 0, _pos select 1, _pos select 2], [], 0, "CAN_COLLIDE"];_replacement setPosASL _pos; _replacement setVectorDirAndUp [[_dirVector select 0, _dirVector select 1, _dirVector select 2],[_vectorUp select 0, _vectorUp select 1, _vectorUp select 2]];};
if (_fence isKindOf "Land_Wired_Fence_8m_F") then {_replacement = createVehicle ["Land_Wired_Fence_8mD_F", [_pos select 0, _pos select 1, _pos select 2], [], 0, "CAN_COLLIDE"];_replacement setPosASL _pos; _replacement setVectorDirAndUp [[_dirVector select 0, _dirVector select 1, _dirVector select 2],[_vectorUp select 0, _vectorUp select 1, _vectorUp select 2]];};
	
};

BW_Temp_Tool = {

// Borrowed idea from btk_wirecutter coz it looks cool
private ["_Tool","_caller"];
_caller = _this select 0;

_Tool = createVehicle ["Land_Pliers_F", getpos _caller, [], 0, "NONE"];
_Tool attachTo [_caller, [-0.05, -0.05, 0.05], "LeftHandMiddle1"];
_Tool setVectorUp [1, 0, 0];
sleep 9;
deleteVehicle _Tool;

};

if(isDedicated) exitWith {};

waitUntil {!isNull player && player == player};

	ActNGS = player addAction [("<t color=""#CC2900"">" + ("Cut Fence") + "</t>"), "scripts\BW_Fence_Cutter\cut.sqf", "radio", -1, false, true,"", "_this == _target && ""ToolKit"" in (items _this)"];
	player addEventHandler ["Cut Fence", {ActNGS = (_this select 0) addAction [("<t color=""#CC2900"">" + ("Support Menu") + "</t>"), "scripts\BW_Fence_Cutter\cut.sqf", "radio", -1, false, true,"", "_this == _target && ""ToolKit"" in (items _this)"] }];	