// Parameters for burning fire...
AFS_Fire_Params =
{
		_Fire setParticleParams 
		[["\Ca\Data\ParticleEffects\Universal\Universal",16,10, 32],
		"", "BillBoard", 1, _int/2, 
		 [_x_pos,_y_pos,_z_pos],[0,0, 1],
		0, 10, 7.9,1, [0.2+_int/2,0.2+ _int/10], 
		_colorArray, 
		[0.5, 1], 1, 0, "","",_obj];
		
		if (_int <= 3) then {_Fire setDropInterval 0.04} else {_Fire setDropInterval 0.02};
		
		_Fire setParticleRandom [0.03*_int, [0.1*_int,0.1*_int, 0.1*_int],[0.05*_int, 0.05*_int, 0.05*_int],0, 0.06*_int, [0, 0, 0, 0], 0, 0];
};	

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

// Parameters for smoke...
AFS_Smoke_Params =
{
		if (_obj isKindOf "MAN") then 
		{
				_smk setParticleParams 
				[["\Ca\Data\ParticleEffects\Universal\Universal",16,7, _int*3],
				 "", "Billboard", 1, 2, 
				 [_x_pos,_y_pos,_z_pos],[0,0,(0.7+random 0.3)],
				1,_int/50,_int/60,_int/50,  [0.7, 1+_int/10], 
				[[0.3, 0.3, 0.3, 0.05],[0.3, 0.3, 0.3, 0.125],[0.5, 0.5, 0.5, 0]],
				[0.8,0.3,0.25], 1, 0, "", "", _obj];
				_smk setParticleRandom [0.5, [0.2*_int, 0.2*_int, 0], [0.1, 0.2, 0.05], 0.3, 0.3, [0,0,0, 0.1], 0, 0];				
				_smk setDropInterval _int/50;
				//_smk setParticleCircle [0.5,[0,0,0]];
			}else
			{
				_smk setParticleParams 
				[["\Ca\Data\ParticleEffects\Universal\Universal",16,7, _int*3],
				 "", "Billboard", 1, 2*_int, 
				 [_x_pos,_y_pos,_z_pos],[velocity _obj select 0,velocity _obj select 1,(0.7+random 0.3)],
				0,_int/50,_int/60,_int/50,  [0.5,_int,2*_int], 
				_smkColorArray,
				[0.8,0.3,0.25], 1, 0.2, "", "", _obj];
				_smk setParticleRandom [1.5, [0.2*_int, 0.2*_int, 0], [0.1, 0.2, 0.05], 0.3, 0.3, [0, 0, 0, 0.1], 0, 0, 360];				
				_smk setDropInterval _int/50;
				};
};

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

// Make a burning unit run around like hell
AFS_RunAround = 
{
		private ["_r","_u","_nearGuys","_tRun","_initBehaviour","_initSpeedMode","_randX","_randY","_pWep"];

		_pWep ="";
		_randX = 0;
		_randY = 0;
		_nearGuys = [];
		_r = OBJECT;

		_u=_this select 0; // Burning Unit

		_tRun=20+random 6; // Time To Run

		if (not (_u isKindOF "MAN")) exitWith {};
		_pWep = primaryWeapon _u;
		removeAllWeapons _u;
		sleep 0.5;
		_u switchMove "";
		if (_pWep != "") then
		{
			_pWep createVehicle getpos _u;
		};

		_initBehaviour=behaviour _u;
		_initSpeedMode=speedmode _u;

		_u setbehaviour "CARELESS";
		_u setspeedmode "FULL";


		while {_tRun > 1 AND _u getVariable "AFS_Burning"} do
		{	
			_nearGuys = nearestObjects [_u,["MAN"],15];
			_nearGuys = _nearGuys - [_u];
			if (count _nearGuys == 0) then
			{
				_randX = (random 25 - random 25);
				_randY = (random 25 - random 25);
				{if (_x < -1) then {_x = _x + 5} else {_x = _x - 5}}foreach [_randX,_randY];
				
				_u move [(getpos _u select 0) + _randX,(getpos _u select 1) + _randX,0];
			}else
			{
				_r = _nearGuys select (floor (random (count _nearGuys)));
				if (random 1 < 0.5) then 
				{
					_u move [(getpos _r select 0)+(random 3 - random 3),(getpos _r select 1)+(random 3 - random 3),0];
				}else
				{
					_u move [(getpos _r select 0)+(random 20 - random 20),(getpos _r select 1)+(random 20 - random 20),0];
					sleep 0.5;
				};			
			};
			sleep 0.5;
			waitUntil {moveToCompleted _u OR moveToFailed _u OR Not (alive _u) OR !(canMove _u)};	
			_tRun=_tRun-1;
			if (not (alive _u)) exitWith {};	
		};

		//Restore Initial Behaviours
		_u setbehaviour _initBehaviour;
		_u setspeedmode _initSpeedMode;
		if (true) exitWith {};
};
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -