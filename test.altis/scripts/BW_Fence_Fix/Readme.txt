Fence / Wall Repair 
by Big_Wilk

Media: https://www.youtube.com/watch?v=juUZuZ4SjJs&feature=youtu.be

>>>>What does it do?<<<< 

It will hide objects with a misson maker defined class nameand replace them fence with another type of ojbect defined by the mission maker.

In this demo we replace all damaged fences around altis main airport with an undamaged version.  

>>>>How to get it to to work:<<<< 

place a map marker on the map the default name for this marker should be "centrefeild" (see Editing notes for more detail). 

Place the BW_Fence_Fix folder included in this download into your missions folder.

Add the init.sqf to your mission as well. Or if you already have an init.sqf add this line:

[] execVM "BW_Fence_Fix\RepairAirPortFence.sqf";

>>>>Limitations:<<<< 

It will not work on all fence / wall types already on the map due to an inconsitanceys in the way bis has made 
their maps. It will work on the fence types around altis airport for example, but not on the fences around
the solar power station to the south of the airport. Its a case of trail and error to see what will work. 

>>>>Editing:<<<<

Go into "BW_Fence_Fix\RepairAirPortFence.sqf" and look for the section bellow "// Options" (line 9).

Here you will find sevral options that can be edited as bellow:

//Options:
_MarkerName = "Name"; // The centre of the area to be affected. This can be any name but must relate to a map markers name you have placed. 
_RadiusAroundMarkerName = 1200; // Radius around your marker to be affected. Default is 1200m. 
_RemoveType = "Class_Name1"; // Classname of object to be removed. This must always be a class name. See limitations for more details on what can be used. 
_ReplaceType = "Class_Name2"; // Classname of object that will replaced removed object. This must always be a class name. See limitations for more details on what can be used. 

>>>>Credits:<<<<

n/a 

>>>>Misc:<<<<

Ive tested this script in game I hosted with 8 people includeing the repair fence script with not problems detected please report any problems in this thread:




