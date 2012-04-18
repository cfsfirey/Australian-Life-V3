// Obj is the unit searching 0-359;
// Deg is the area that the unit will search;
// null=[obj,deg] execVM "core\actions\searchlight.sqf";

_unit = _this select 0;
_deg  = _this select 1;

_face = getdir _unit;
_gman = (gunner (vehicle _unit));

while {(alive _gman) &&  (alive _unit)} do
{
_gman setformdir _face+((random -(_deg)+(_deg/2)));

sleep (random 12)+6;
};