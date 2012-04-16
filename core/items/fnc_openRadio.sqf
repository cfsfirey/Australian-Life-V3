/*
	Copyright © 2010,International Development & Integration Systems, LLC
	All rights reserved.
	http://www.idi-systems.com/

	For personal use only. Military or commercial use is STRICTLY
	prohibited. Redistribution or modification of source code is 
	STRICTLY prohibited.

	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
	"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
	LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
	FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE 
	COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
	INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES INCLUDING,
	BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; 
	LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
	CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
	LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN 
	ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
	POSSIBILITY OF SUCH DAMAGE.
*/
//#define DEBUG_MODE_FULL
#include "script_component.hpp"

private["_radioName", "_realRadio", "_baseConfig", "_guiFunction", "_run", "_go", "_display", "_oblix"];

// Find the base radio class they are opening
_radioName = player getVariable ACTIVE_RADIO;
_baseConfig = inheritsFrom (configFile >> "CfgWeapons" >> _radioName);
_realRadio = configName ( _baseConfig );
_guiFunction = getText ( configFile >> "CfgAcreRadios" >> _realRadio >> "guiFunction");

// get the current variables on this radio, AND RUN IT
_run = "[""" + _radioName  + """] call " + _guiFunction + ";";

//if(!(_radioName in acre_sys_remote_radio_localUsedRadioList)) then {
	if(isNil QUOTE(GVAR(currentRadioDialog))) then {
		GVAR(currentRadioDialog) = _radioName;
		
		// spawn our monitor that will toss an event handler onto it.
		//[_radioName] spawn FUNC(watchForDialog);
		
		_go = compile _run;
		_display = call _go;
	} else {
		closeDialog 0;
	};
//} else {
//	hint "Someone else is using this radio right now!";
//};

false