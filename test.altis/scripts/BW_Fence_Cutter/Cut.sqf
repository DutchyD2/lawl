// Fence Cut by Big_Wilk see readme for info

private ["_Object","_fence","_dir","_pos","_replacement","_caller","_count"];

_caller = _this select 1;

// List of all Fences can be added too
_Object = nearestObjects [_caller, [
	
	"Fence",
		"A3_Structures_F_Walls",
			"Wire",
				"WireFence",

	"Land_IndFnc_9_F",
	
	"Mil_WiredFenceD_F",
		"Mil_WiredFenceD_F.p3d", // Returned class name for fences on map by default does not work ..
    "Land_Mil_WiredFence_F", 
    "Land_Mil_WiredFenceD_F", 

    "Land_Net_Fence_4m_F", 
    "Land_Net_Fence_8m_F", 
	
    "Land_New_WiredFence_5m_F", 
    "Land_New_WiredFence_10m_F", 
	
    "Land_Wired_Fence_4m_F", 
    "Land_Wired_Fence_8m_F"
	
], 6];

if (count _Object == 0) exitWith {_caller groupChat "Looks like we can't cut through this!"};
_caller groupChat "I'm cutting the fence cover me!";

_caller playMoveNow "gear";
[[_caller],"BW_Temp_Tool",false,false] spawn BIS_fnc_MP;
sleep 1;
_caller say3D "Acts_carFixingWheel";

_count = 0; 

While {_count < 4} do {

_caller playActionNow "PutDown";
sleep 2;
_count = _count + 1; 

};

_fence = _Object select 0;
//hint format ["%1",_fence]; // Debug Only

[[_fence],"BW_Fence_Destroy",false,false] spawn BIS_fnc_MP;