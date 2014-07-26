_id = _this select 2;
_array = _this select 3;
_name = _array select 0;
BTC_tk_PVEH = [_name,name player];
publicVariable "BTC_tk_PVEH";
hint format ["%1 has teamkilled %2 and has been punished.",_name, name player];
player removeAction _id;