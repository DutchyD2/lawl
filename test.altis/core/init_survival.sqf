[] spawn  {
	private["_fnc_food","_fnc_water","fnc_happy"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint "You have starved to death.";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint "You have starved to death.";};
		switch(life_hunger) do {
			case 30: {hint "You haven't eaten anything in awhile, You should find something to eat soon!";};
			case 20: {hint "You are starting to starve, you need to find something to eat otherwise you will die.";};
			case 10: {hint "You are now starving to death, you will die very soon if you don't eat something";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint "You have died from dehydration.";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint "You have died from dehydration.";};
			switch(life_thirst) do 
			{
				case 30: {hint"You haven't drank anything in awhile, You should find something to drink soon.";};
				case 20: {hint "You haven't drank anything in along time, you should find something to drink soon or you'll start to die from dehydration"; player setFatigue 1;};
				case 10: {hint "You are now suffering from severe dehydration find something to drink quickly!"; player setFatigue 1;};
			};
		};
	};
	
    _fnc_happy =                // Add this area <----------------
	{
		if(life_happy < 2) then {hint "You are about to kill yourself.";}
		else
		{
			life_happy = life_happy - 10;
			[] call life_fnc_hudUpdate;
			if(life_happy < 5) then {hint "You are unhappy enough to commit suicide. Well done!";};
			switch(life_happy) do 
			{
				case 40: {hint "You're beginning to get a headache.";};
				case 30: {hint "You are getting stressed out.";};
				case 20: {hint "Dont cry. Dont Cry.";};
				case 15: {hint "You are no longer able to work because of your unhappiness.";};
				case 10: {hint "Even Jesus couldn't make you happy";};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
		sleep 250;
		[] call _fnc_happy;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		if (backpack player == "B_Carryall_cbr") then { _load = 160; };
		if (backpack player == "B_Carryall_khk") then { _load = 160; };
		if (backpack player == "B_Carryall_oli") then { _load = 160; };
		if (backpack player == "B_Carryall_ocamo") then { _load = 160; };
		if (backpack player == "B_Carryall_oucamo") then { _load = 160; };
		if (backpack player == "B_Carryall_mcamo") then { _load = 160; };
		if (backpack player == "B_BergenG") then { _load = 130; };
		if (backpack player == "B_BergenC_red") then { _load = 130; };
		if (backpack player == "B_BergenC_grn") then { _load = 130; };
		if (backpack player == "B_BergenC_blu") then { _load = 130; };
		if (backpack player == "B_Bergen_mcamo") then { _load = 130; };
		if (backpack player == "B_Bergen_rgr") then { _load = 130; };
		if (backpack player == "B_Bergen_blk") then { _load = 130; };
		if (backpack player == "B_Kitbag_mcamo") then { _load = 145; };
		if (backpack player == "B_Kitbag_sgg") then { _load = 145; };
		if (backpack player == "B_Kitbag_cbr") then { _load = 145; };
		if (backpack player == "B_AssaultPack_dgtl") then { _load = 120; };
		if (backpack player == "B_AssaultPack_rgr") then { _load = 120; };
		if (backpack player == "B_AssaultPack_sgg") then { _load = 120; };
		if (backpack player == "B_AssaultPack_blk") then { _load = 120; };
		if (backpack player == "B_AssaultPack_cbr") then { _load = 120; };
		if (backpack player == "B_AssaultPack_mcamo") then { _load = 120; };
		if (backpack player == "B_AssaultPack_ocamo") then { _load = 120; };
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint "You are over carrying your max weight! You will not be able to run or move fast till you drop some items!";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					life_happy = life_happy - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

[] spawn  {
	while{true} do
	{
		waitUntil {(player getVariable "missingOrgan")};
		life_max_health = .50;
		while{(player getVariable "missingOrgan")} do {
			life_thirst =  50;
			life_hunger =  50;
			if(damage player < (1 - life_max_health)) then {player setDamage (1 - life_max_health);};
			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [2];
			"dynamicBlur" ppEffectCommit 1;
			sleep 5;
		};
		"dynamicBlur" ppEffectEnable false;
		life_max_health = 1;
	};
};