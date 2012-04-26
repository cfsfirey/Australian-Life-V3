if (AFS_Init_Run) exitWith {};
AFS_Init_Run = TRUE;

//Cut and paste these two lines to init.sqf if you want to execute
// AFS using 'spawn' command right at the start of the mission (eg : init box of object,etc)
AFS=compile preprocessFile "AFS\AFS_Main.sqf";
Mando_Getpos= compile preprocessFile "AFS\mando_getpos.sqf";

player globalChat "Advanced-Fire-Simulation Initializing...";

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//	GLOBAL PARAMETERS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if (isNil "AFS_BurnNearbyUnits") then 
{
	// Burn nearby units
	AFS_BurnNearbyUnits=true;
	};

if (isNil "AFS_FleeFrom_Fire") then 
{
	// Flee when burning (for burning nearby units!)
	AFS_FleeFrom_Fire=true;
	};
	
if (isNil "AFS_EnableSpeedCheck") then 
{
	// Enable SpeedCheck to raise fire intensity when obj is moving fast.
	AFS_EnableSpeedCheck=true;
	
	};
if (isNil "AFS_AfterBurnFX") then
{
	// Smoke Effects after burning...
	AFS_AfterBurnFX = true;
};
_nul = [] execVM "AFS\AFS_Functions.sqf";

AFS_Initialized = TRUE;
[west,"HQ"] sideChat "[Advanced Fire Simulation - v0.8] Initialized.";



