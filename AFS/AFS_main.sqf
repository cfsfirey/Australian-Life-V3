/*

A D V A N C E D   F I R E   S I M U L A T I O N 
BY
H A R O O N 1 9 9 2 

Version : 0.9

IMPORTANT!
Put the following line in init.sqf of your mission.

_nul = [] execVM "AFS\AFS_Init.sqf";

NOTE!
It's best to put at least a 0.1 second delay before executing AFS using the 'spawn' command.
Because it takes a tiny little time for the execution of the AFS_Init script by the init.sqf.


===========
FEATURES
===========
 -Create fire on any object specified.

 -The intensity,color,position and alpha channels of the fire can be defined in the game.
 [Color and alpha channels can be left empty and default values will be set to them]
 
 -Fire reacts to the type of object,if the object is a Building, the fire will burn for the longest time.
 (Infantry units are the weakest and buildings are the strongest)[Damage can be Disabled]
  
`-Smoke is also simulated,the amount and density of smoke relies on the Intensity defined.
 [Smoke disperses as soon as the fire is deleted]
 
 -The burning fire can spread to nearby infantry units.[Can be Disabled]
 
 -The fire will eventually wear out,and this is also affected by rain.[Can be Disabled]
 
 -The time for how long the fire will be burning can be defined.
 [After that time has reached,the fire will die quickly,and no damage will be applied to anything]
 
===========
ARGUMENTS
===========

_nul = [obj,time,inten,relpos,killfire, enableDamage,debug,colArray] spawn AFS
															    					        			^	^		
Explanation :

object=	 
the object the fire will burn on;

time   = 	
time for the fire to burn;
--------------
intensity =	
intensity of fire (must be between 0.5 and 15.5);
--------------
relative position=	
position of fire relative to object.Format is in [x,y,z] (x=left/right,y=front/back,z=up/down)   e.g [0,0,1]
--------------
kill fire = 		
true to kill the fire.
(If this is enabled, the fire will be reduced eventually and worn out when the time given reaches zero.
The fire may become extinguished before time runs out if it is raining.)
--------------
enable damage =	 
1 = enable damage (the amount of damage depends on the kind of the object)
2 = enable damage (the object will be destroyed after the time given to burn)

*ANY number OTHER than the two above means "Disable Damage"*
--------------
enable debug = 	
true to enable the debugger
--------------
color array =	 
The color array for fire, including alpha channel.
Sample : [[1,1,1,0],[1,1,1,1]] 
(means fire will start with color [1,1,1,0] and ends with [1,1,1,1])
REMEMBER THAT THE COLOR ARRAYS ARE NESTED INSIDE THE MAIN ARRAY! ([[color1],[color2],[color3]])

===========
CHANGEABLE PARAMETERS
===========

[These values can be changed anytime in game.
The characters are NOT case-sensitive.]

AFS_BurnNearbyUnits
---------------------
TRUE or FALSE
TRUE = Enable the burning to nearby units.(Nearby units will catch fire)
FALSE = Disable burning to nearby units by the fire.

AFS_FleeFrom_Fire
--------------------
TRUE or FALSE
TRUE = Make unit run recklessly if he catches fire.
FALSE = Unit do nothing even if he's on fire.

AFS_EnableSpeedCheck
--------------------
TRUE or FALSE
TRUE = Enable speed check (will raise/lower intensity according to speed of object)
FALSE = disable speed check.


***************************************************************************************************************	
***************************************************************************************************************	
***************************************************************************************************************	
***************************************************************************************************************	
***************************************************************************************************************	
*/
if (isNil "AFS_Init_Run") then {_nul = [] execVM "AFS\AFS_init.sqf"};
waitUntil {Not (isNil "AFS_Initialized")};
private ["_obj","_burningTime","_int","_rel_pos","_killFire","_enableDamage","_FireDebug","_colorArray","_smkColorArray","_dmg","_dmgStat","_unit_onfire","_sSource","_x_pos","_y_pos","_z_pos","_init_Z_pos","_x_velocity","_y_velocity","_z_velocity","_Fire","_smk","_li","_unitsNearFire","_rand_dmg","_burningUnit_pos","_h_red","_h_green","_h_blue","_i","_init_Int"];
sleep 0.3;

_i = 0;
_dmg = 0;
_dmgStat=0;
_unit_onfire=FALSE;
_smkColorArray = [];

//Default values of arguments

_killFire=true;	
_enableDamage = 1;
_FireDebug=false;

// _colorArray= [[1,1,1,0],[1,1,1,-1],[1,1,1,0]];
_colorArray = [[1,1,1,-0], [1,1,1,-1], [1,1,1,-1], [1,1,1,-1], [1,1,1,-1], [1,1,1,0]];

//Velocity of Fire/Smoke (in meters per second, Change to any thing you wish)
_x_velocity=0;
_y_velocity=0;
_z_velocity=1.2;


// ==================
//  A R G U M E N T S
// ==================

_obj=_this select 0;

_burningTime=_this select 1;
_int=_this select 2;
_rel_pos=_this select 3;
if (count _this > 4) then {_killFire=_this select 4};
if (count _this > 5) then {_enableDamage=_this select 5};
if (count _this > 6) then {_FireDebug=_this select 6};
if (count _this > 7) then {_colorArray=_this select 7};


if (_int < 0.5 OR _int > 15.5) exitWith {hint "Intensity must be inside 0.5 AND 15.5"};

_x_pos=_rel_pos select 0;
_y_pos=_rel_pos select 1;
_z_pos=_rel_pos select 2;
_init_Z_pos=_z_pos;
	

_obj setVariable ["AFS_Burning",TRUE];
_init_Int = _Int;

// ==================
//	RUN AROUND
// ==================

if (AFS_FleeFrom_Fire AND _obj isKindOf "CAManBase") then 
{
	_nul=[_obj] spawn AFS_RunAround;
};

// ==================
//	CREATE PARTICLES
// ==================

// Fire
_Fire = "#particlesource" createVehicleLocal getpos _obj;
_Fire setdropinterval 0.02;

// Smoke
_smk = "#particlesource" createVehicleLocal getpos _obj;

// Light
_li="#lightpoint" createVehicleLocal getpos _obj;
_li lightAttachObject [_fire,[0,0,0]];

// Create Sound Source
_sSource = createSoundSource ["sound_fire", getpos _obj, [], 0];
sleep 0.05;

//0.5+_int/10
	


// ==================

//	M A I N  L O O P
	
// ==================

while {_burningTime > 0} do 
{
		//_smkColorArray = [[-0.1,-0.1,-0.1,0.1],[0.5,0.5,0.5,-0.5],[-0.1,-0.1,-0.1,0.3],[-0.1,-0.1,-0.1,0.4]];
		_smkColorArray =[[0.3,0.3,0.3,0.2 + (random 0.2)],[0.5,0.5,0.5,0.4 + (random 0.2)],[.1,.1,.1,0.35 + (random 0.2)],[0.3,0.3,0.3,0.26 + (random 0.2)],[1,1,1,0]];
		
	// ------------------------------------	
	//	D E B U G G I N G 	
	// ------------------------------------
		if (_FireDebug) then 
		{
			 hintSilent format ["FIRE SCRIPT by HAROON1992\nSCRIPT VERSION : 0.9\nX : %1\nY : %2\nZ : %3\n\nObject ID :\n%4\n\nObject Type : %5\nObject Health : %6\nObject Speed: %7\n\nObject Pos:\n %8\n\nDamage : %9\nIntensity : %10\nCurrent Rain:%11\nTime Left To Extinguish : %12",	_x_pos,_y_pos,_z_pos,_obj,typeOf _obj,getdammage _obj,speed _obj,getpos _obj,_dmgStat,_int,rain,_burningTime];
			 };
			 
	//------------------------------------------------------------
	//	B U R N  N E A R B Y  U N I T	
	//------------------------------------------------------------

		//Burn nearby units.
		if ( AFS_BurnNearbyUnits) then 
		{		
			_unitsNearFire=nearestObjects [_obj,["MAN"],25];
			sleep 0.1;
			{		
				IF(_x !=_obj AND (vehicle _x isKindOF "MAN")) THEN
				{	
					if (_x distance _Fire < _int*0.6 AND alive _x) then 
					{
						if (isNil {_x getVariable "AFS_Burning"}) then
						{
							_nul = [_x, 10+random 10, 2.5, [0,0,0.8], TRUE, 1] spawn AFS;
							}else
							{
								sleep 0.5;
								if (NOT (_x getVariable "AFS_Burning")) then
								{
									hintSilent format ["Burning\n%1",getpos player];
									_nul = [_x, 10+random 10, 2.5, [0,0,1], TRUE, 1] spawn AFS;
									};
							};
						};
					};
				}foreach _unitsNearFire;
			};
		 
	// ------------------------------------		
	//  F I R E 
	// ------------------------------------			 
	call AFS_Fire_Params;
	
	// ------------------------------------		
	// S M O K E
	// ------------------------------------		
	call AFS_Smoke_Params;
	
	
	//NOTE : You can find the two functions above in "AFS_Functions.sqf"
	
	// ------------------------------------		
	//	 L I G H T
	// ------------------------------------		

		//Light Params
		//_li setpos [(getpos _Fire select 0),(getpos _Fire select 1),(getpos _Fire select 2)];
		_li setLightAmbient [0.09*_int,0.04*_int , 0.04*_int];
		_li setLightColor [0.5,0.1,0.1];
		_li setLightBrightness _int*0.02;
		
		
	//------------------------------------------------------------
	//	D A M A G E 
	//------------------------------------------------------------


		//Applies damage according to the type of the object.
		//Building are the toughest and infantry units are the weakest.	
		if (_enableDamage == 1 AND alive _obj) then 
		{
		
				//BUILDING
				if (_obj isKindOf "STATIC") then {_dmg = _int/200};
				//UNITS
				if (_obj isKindOf "MAN") then {_dmg = _int/25};
				//LAND VEHICLES
				if (_obj isKindOf "LANDVEHICLE") then {_dmg = _int/125};
				//TANKS
				if (_obj isKindOf "TANK" OR _obj isKindOF "WHEELEDAPC") then {_dmg = _int/350};
				//AIR-CRAFTS
				if (_obj isKindOf "AIR") then {_dmg = _int/220};
				//NAVY
				if (_obj isKindOf "SHIP") then {_dmg = _int/160};
					
			_rand_dmg=random 0.002;
			_obj setdammage getdammage _obj+ _dmg +_rand_dmg;
			_dmgStat= _dmg+_rand_dmg;
			};// END OF DAMAGE
			
		if (_enableDamage == 2) then
		{
			_obj setDammage getDammage _obj + (_int/_burningtime);
			_dmgStat = _int/_burningtime;
		};
		
		
	//------------------------------------------------------------
	//	S P E E D   C H E C K
	//------------------------------------------------------------

			if (not (typeOf _obj in ["BUILDING","STATIC","EMPTY"]) AND AFS_EnableSpeedCheck AND alive _obj) then 
			{
					//Increases/Decreases intensity of fire according to speed of object
					//[Does not apply to Buildings]
				if (speed _obj > 70) then 
				{
					if (_int < 5) then { _int=_int+0.2};
					if (_int >=5) then {_int=_int+0.4};
								};
				if (speed _obj > 30 AND speed _obj <= 70) then 
				{
					if (_int < 5) then { _int=_int+0.1};
					if (_int >=5) then {_int=_int+0.2};
							};
				if (speed _obj > 10 AND speed _obj <=30)  then 
				{
					if (_int < 5) then 
					{
						if (_obj iskindOf "MAN") then 
						{
							 _int=_int+0.08;
						 }else { _int=_int+0.05};
						 };
					if (_int >=5) then {_int=_int+0.1};			
				};
				if (speed _obj <= 10) then 
				{
					if (_int < 5) then { _int=_int+0.025};
					if (_int >=5) then {_int=_int+0.05};
					};
			};//END OF SPEED CHECK



	//------------------------------------------------------------
	//	K I L L   F I R E 
	//------------------------------------------------------------

		if (_killFire) then 
		{	
		 	if (rain > 0) then {_int = _int - (rain/2)};
			_int=_int - _int/_burningtime;
		};
		
		if (_int < 1) then {_burningTime=0};		
		//hint "Fire Deleted";_obj=objNull;
		
			
	//------------------------------------------------------------
	//	S T A N C E   C H E C K
	//------------------------------------------------------------


		//Lower position of fire if unit is dead
		if (_obj isKindOf "MAN" AND not (alive _obj)) then 
		{	
				_z_pos=0.1;		
			};
		//Lower position of fire if unit is prone/crouched (uses Mandoble's Position Checking Script)
		if (_obj isKindOf "MAN") then 
		{
			_burningUnit_pos=[_obj] call Mando_Getpos;
			if (_burningUnit_pos==1) then 
			{ 
				_z_pos=0.1;
				if (_int > 5) then {_int=_int-0.3};
				if (_int < 3) then {if (speed _obj > 5) then {_int=_int-0.5} else {_int = _int-0.2}};
			}else { 
			if (_burningUnit_pos==2) then {_z_pos=0.3};
			if (_burningUnit_pos==0) then {_z_pos=_init_Z_pos};
			};
		};
		
	//------------------------------------------------------------
	//	VEHICLE   DEATH   CHECK
	//------------------------------------------------------------
	
		//Check for vehicles,fire will be deleted if vehicle is wrecked.
		//Because BIS Fire will start when a vehicle is wrecked.
		if (Not (alive _obj) AND typeOf _obj in ["LANDVEHICLE","AIR"] ) then
		   {
			   sleep 1;
			   _burningTime = 0;		
			  		};
			  
			  
	_burningTime=_burningTime - 1;
	sleep 0.9;
	
};// END OF "MAIN LOOP"


// ===================================
//			T I M E   R E A C H E D 
// ===================================

while {true} do
{
	_i = _i + 1;
	//F I R E 

	call AFS_Fire_Params;
		
	//S M O K E
	
	call AFS_Smoke_Params;
	
			
	//-------------------------------------------------------------------------------------------------------------	
	//	REDUCE INTENSITY QUICKLY AND EXIT AFTER IT REACHED ALMOST ZERO	
	//-------------------------------------------------------------------------------------------------------------
			
	if (_int < 1) then 
	{
		{deleteVehicle _x}foreach [_fire,_li,_sSource];

		if (typeName _obj == "OBJECT") then
		{
			if (alive _obj) then
			{
				if (NOT (isNil {_obj getVariable "AFS_Burning"})) then
				{
					_obj setVariable ["AFS_Burning",FALSE];
					};
				};
			if (AFS_AfterBurnFX) then
			{
				_int = _init_Int;
				_z_pos = _z_pos - 0.8;
				_smkColorArray =[[0.3, 0.3, 0.3, 0.3],[0.25, 0.25, 0.25, 0.2],[1,1,1,0]];
				call AFS_Smoke_params;
				sleep 20 + (round random 5);
				};
			};	
		if (_FireDebug) then { hint "This instance of AFS is successfully finished!"};
		if (true) exitWith {deleteVehicle _smk};
		};
	//hint "Fire Deleted";_obj=objNull;
	if (_int < 3) then 
	{
		_int = _int - 0.3;
		if (_z_velocity < 10) then {_z_velocity=_z_velocity-0.1;} else {_z_velocity = _z_velocity - 0.3};
	} else
	{
		_int=_int - 0.7;
	};
	if (_FireDebug) then { hintSilent format ["Time Is Up\nKilling Fire...\nIntensity : %1",_int]};
	sleep 1;
};
