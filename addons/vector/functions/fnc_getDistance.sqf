// by commy2
#include "script_component.hpp"

#define MIN_DISTANCE 10
#define MAX_DISTANCE [6000, 9000] select GVAR(useFeet)

private ["_dlgVector", "_distance"];

disableSerialization;
_dlgVector = GETUVAR(ACE_dlgVector,displayNull);

_distance = ctrlText (_dlgVector displayCtrl 151);

if (_distance == "----") exitWith {-1000};

_distance = round parseNumber _distance;

if (GVAR(useFeet)) then {
    _distance = 3.28084 * _distance;
};

if (_distance > MAX_DISTANCE) exitWith {-1000};
if (_distance < MIN_DISTANCE) exitWith {-1000};

_distance
