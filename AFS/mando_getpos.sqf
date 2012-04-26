// mando_getpos.sqf v1.0
// By Mandoble April 2007
//
// Check prone, crouch or standing up state of a soldier
//
//
// Returns 0 for standing up, 1 for crouch, 2 for prone, -1 for unkown.
// calling example:
// (first get the code handle: mando_getpos = compile (preprocessFileLineNumbers "mando_getpos.sqf")
// then call the function as many times as needed:
// _pos = [player] call mando_getpos
//
// Note: Adjust _alts array if needed for different soldier heights

private ["_unit", "_alts", "_found", "_vdir", "_dir", "_i", "_pos1", "_pos2", "_selection"];
_unit = _this select 0;
_alts = [1.4, 1, 0.2];
_found = -1;
_vdir = vectorDir _unit;
_dir = (_vdir select 0) atan2 (_vdir select 1);
for [{_i = 0},{_i < 3},{_i = _i + 1}] do
{
   _pos1 = [(getPos _unit select 0)+sin(_dir+180)*2, (getPos _unit select 1)+cos(_dir+180)*2, (getPos _unit select 2)+(_alts select _i)-(_vdir select 2)*2];
   _pos2 = [(getPos _unit select 0)+sin(_dir)*2, (getPos _unit select 1)+cos(_dir)*2, (getPos _unit select 2)+(_alts select _i)+(_vdir select 2)*2];
   _selection = [_unit, "FIRE"] intersect [_pos1, _pos2];
   if ((count _selection > 0) && (_found == -1)) then
   {
      _found = _i;
   };
};
_found;