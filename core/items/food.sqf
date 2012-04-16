_class = _this select 0;
_amount = _this select 1;

_fillHunger = 0;
_text = "";

if (_class call RPP_fnc_itemGetAmount < _amount) exitWith 
{
    localize "STRS_food_notEnough" call RPP_fnc_hint;
};

closeDialog 0;


_foodArray =
[
    ["Minnow", 15, localize "STRS_food_minnow"],
    ["Bluegill", 25, localize "STRS_food_bluegill"],
	["Catfish", 10, "You ate the Catfish(s)"],
	["Perch", 15, "You ate the Perch(s)"],
	["Trout", 25, "You ate the Trout(s)"],
	["RockBass", 25, "You ate the RockBass(s)"],
	
	["Shrimp", 10, "You ate the Shrimp(s)"],
	["Sardine", 10, "You ate the Sardine(s)"],
	["Monkfish", 15, "You ate the Monkfish(s)"],
	["Salmon", 50, "You ate the Salmon(s)"],
	["Shark", 100, "You ate the Shark(s)"],	
	["Tuna", 40, "You ate the Tuna(s)"],	
	["Whale", 100, "You ate the Whale(s)"],	
	["Swordfish", 20, "You ate the Swordfish(s)"],	
	
	["Rabbit", 45, "You ate the Rabbit(s)"],	
	["Chicken", 50, "You ate the Chicken(s)"],	
	["Lamb", 50, "You ate the Lamb(s)"],	
	["Cow", 80, "You ate the Cow(s)"],
	["Boar", 60, "You ate the Boar(s)"],
	
	["Soup", 50, "You eat the Soup(s)"],
	["CookedMeat", 25, "You eat the Meat"],
    ["Sandwich", 25, "You eat the Sandwich(s)"],
    ["Bread", 15, "You eat the Bread"],
	["Apple", 20, "You eat the Apple(s)"],
	["Pumpkin", 20, "You ate the Pumpkin"],
    ["Cabbage", 10, "You ate the Cabbage(s)"],
    ["Potato", 15, "You ate the Potato"],
	["Meat", 15, "You eat the Meat"],
	
    ["Donut", 30, "You eat the Donut(s)"]
];

{
    if (_x select 0 == _class) exitWith
    {
        _fillHunger = _x select 1;
        _text = _x select 2;
    };
} forEach _foodArray;

["Hunger", _fillHunger * _amount] call RPP_fnc_increaseDynamic;

if (("Hunger" call RPP_fnc_getDynamicVal) > 100) then
{
    ["Hunger", 100] call RPP_fnc_setDynamic;
};

format["%1", _text] call RPP_fnc_hint;
[_class, -(_amount)] call RPP_fnc_addInventoryItem;
