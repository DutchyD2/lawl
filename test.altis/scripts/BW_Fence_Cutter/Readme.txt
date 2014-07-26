Fence Cut 
by Big_Wilk

Media: https://www.youtube.com/watch?v=juUZuZ4SjJs&feature=youtu.be

>>>>What does it do?<<<< 

It will remove wired fences and and replace that fence with a damaged version where posible to
simulate a fence been cut. You require a tool kit to use the "cut fence" option.

This will work on all wired fences you place on the map as a mission maker, as well as most
wired fence objects already on the map by default, see limitations for more detail.

>>>>How to get it to to work:<<<< 

Place the BW_Fence_Cutter folder included in this download into your mission folder.

Add the init.sqf to your mission as well. Or if you already have an init.sqf add this line:

[] execVM "BW_Fence_Cutter\init.sqf";

The script will now work for everyone in the mission who has a tool kit on their person.

>>>>Limitations:<<<< 

While this script will work on all fence types placed by you on the map (wired fences) that are 
avalible in the vinilla version of Arma3. 
 
It will not work on all fence types already on the map due to an inconsitanceys in the way bis has made 
their maps. It will work on the fence types around altis airport for example, but not on the fences around
the solar power station to the south of the airport. 

Keep this in mind if you want to be able to cut fences you are not placeing on the map yourself and test 
it it works for your situation.

>>>>Editing:<<<<

You may edit this file for your own needs

To add more classnames of fence types you would like to be able cut in game add them to the list bellow line 8 in BW_Fence_CUtter\cut.sqf

If that new fence type has a "damaged" version of itself you'd like to replace the fence your cutting with add its classname to line 21 in BW_Fence_CUtter\init.sqf

For example:

if (_fence isKindOf "Fence_to_be_Removed_Classname") then {_replacement = createVehicle ["Replacements_Classname", [_pos select 0, _pos select 1, _pos select 2], [], 0, "CAN_COLLIDE"];_replacement setPosASL _pos; _replacement setVectorDirAndUp [[_dirVector select 0, _dirVector select 1, _dirVector select 2],[_vectorUp select 0, _vectorUp select 1, _vectorUp select 2]];};

>>>>Credits:<<<<

A feind asked me to make this and used sxp2high BTKs fence cutting script as an example of what he'd like written + a few other things. 

While this script is my own work I have borrowed the idea of attaching a tool to a units hand as they cut the fence from BTK as it looked cool!

Reffrence BTK fence cut Borrowed Code:
_Tool = createVehicle ["Land_Pliers_F", getpos _caller, [], 0, "NONE"];
_Tool attachTo [_caller, [-0.05, -0.05, 0.05], "LeftHandMiddle1"];
_Tool setVectorUp [1, 0, 0];

>>>>Misc:<<<<

Ive included my fence repair script to this download included in a seprate folder as a bonus! 

Ive tested this script in game I hosted with 8 people includeing the repair fence script with not problems detected please report any problems if easly replicateable. 



