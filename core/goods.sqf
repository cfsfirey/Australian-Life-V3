/*
The Roleplay Project: Reloaded
Copyright (C) 2011  Matthew Simms
*/

RPP_var_goods =
[
	["Null", ["ITEM", "SPECIAL"], ["Error - No item", "Please report how you got this item."], [0, 0], 0, "core\items\noUse.sqf", 0, false, [   ], false ],
    ["Money", ["ITEM", "SPECIAL"], ["Money", "No description"], [0, 0], 0, "core\items\noUse.sqf", 0, true, [   ], false ],
    ["Keychain", ["ITEM", "SPECIAL"], ["Keychain", "No description"], [0, 0], 0.0, "core\items\keychain.sqf", 0, false, [], false],
    ["MedicalBag", ["ITEM", "SPECIAL"], ["Medical Bag", "No description"], [150, 80], 2, "core\items\medic.sqf", 0, true, [2, [ ["wood", 1], ["Rubber", 2]]], false],

    /* Tools */
    ["Pickaxe", ["ITEM", "TOOL"], ["Pickaxe", localize "STRS_item_pickaxeDesc"], [400, 260], 9, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["wood", 2]]], false],
    ["sickle", ["ITEM", "TOOL"], ["Sickle", "No description"], [400, 290], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["wood", 2]]], false],
	["Hatchet", ["ITEM", "TOOL"], ["Hatchet", "No description"], [800, 410], 9, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 2], ["wood", 1]]], false],
	["Pump", ["ITEM", "TOOL"], ["Oil Pump", "No description"], [1500, 1000], 20, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["ElecComp", 1], ["Rubber", 1], ["Copper", 1]]], false],
	["Shovel", ["ITEM", "TOOL"], ["Shovel", "No description"], [400, 260], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["wood", 2], ["Rubber", 1]]], false],

    /* Equipment */
    ["ItemMap", ["WEAPON", "ITEM"], ["Map", "No description"], [100, 80], 0, "core\items\noUse.sqf", 0, true, [], false],
    ["ItemCompass", ["WEAPON", "ITEM"], ["Compass", "No description"], [200, 100], 0, "core\items\noUse.sqf", 0, true, [], false],
    ["ItemWatch", ["WEAPON", "ITEM"], ["Watch", "No description"], [200, 100], 0, "core\items\noUse.sqf", 0, true, [], false],
    ["ItemRadio", ["WEAPON", "ITEM"], ["Radio", "No description"], [800, 650], 0.5, "core\items\noUse.sqf", 0, true, [], false],
    ["ItemGPS", ["WEAPON", "ITEM"], ["GPS", "No fdescription"], [1600, 1250], 0.5, "core\items\noUse.sqf", 0, true, [], false],
    ["ACRE_PRC148_UHF", ["WEAPON", "ITEM"], ["PRC-148 UHF RADIO", "No description"], [1600, 1250], 1, "core\items\noUse.sqf", 0, true, [], false],
    ["ACRE_PRC119", ["WEAPON", "ITEM"], ["PRC-119 RADIO", "No description"], [687, 375], 1, "core\items\noUse.sqf", 0, true, [], false],
	["ACRE_PRC148", ["WEAPON", "ITEM"], ["PRC-148 UHF RADIO", "No description"], [1600, 1250], 1, "core\items\noUse.sqf", 0, true, [], false],
    ["ACRE_PRC343", ["WEAPON", "ITEM"], ["PRC-343 RADIO", "No description"], [687, 375], 1, "core\items\noUse.sqf", 0, true, [], false],
    ["ACRE_PRC117F", ["WEAPON", "ITEM"], ["PRC-117F RADIO", "No description"], [1600, 1250], 1, "core\items\noUse.sqf", 0, true, [], false],
	//[format["%0", acre_api_fnc_getCurrentRadioList], ["WEAPON", "ITEM"], ["PRC-148 UHF RADIO", "No description"], [1600, 1250], 1, "core\items\noUse.sqf", 0, true, [], false],
    //[format["%1", acre_api_fnc_getCurrentRadioList], ["WEAPON", "ITEM"],["PRC-343 RADIO", "No description"], [687, 375], 1, "core\items\noUse.sqf", 0, true, [], false],
    //[format["%2", ALR_var_acre_radio], ["PRC-117F RADIO", "No description"], [1600, 1250], 1, "core\items\noUse.sqf", 0, true, [], false],
    
	["Handcuffs", ["ITEM", "TOOL"], ["Handcuffs", "No description"], [0, 0], 1, "core\items\handcuffs.sqf", 0, true, [], false],
    
    /* Misc_Items & Tools */
    ["Lockpick", ["ITEM", "TOOL"], ["Lockpick", "No description"], [1000, 160], 0.5, "core\items\lockpick.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
    ["Crowbar", ["ITEM", "TOOL"], ["Crowbar", "No description"], [400, 330], 2, "core\items\crowbar.sqf", 0, true, [1, [ ["IronBar", 2]]], false],
   	["Phone", ["ITEM", "MOBILE"], ["Mobile Phone", "No description"], [1500, 900], 0.5, "core\items\phone.sqf", 0, true, [1, [ ["IronBar", 1], ["ElecComp", 1], ["Copper", 1]]], false],
    ["RepairKit", ["ITEM", "ITEM"], ["RepairKit", "No description"], [600, 440], 10, "core\items\repairKit.sqf", 0, true, [1, [ ["IronBar", 1], ["Rubber", 1], ["Copper", 1], ["Tyre", 1]]], false],
	["Can", ["ITEM", "ITEM"], ["Can", "No description"], [180, 130], 1, "core\items\refuelCan.sqf", 0, true, [1, [ ["Copper", 1]]], false],
    ["RefuelCan", ["ITEM", "ITEM"], ["RefuelCan", "No description"], [450, 350], 9, "core\items\refuelCan.sqf", 0, true, [1, [ ["Can", 1], ["Petrol", 8]]], false],

    /* Objects */
    ["Land_Farm_Cowshed_c", ["ITEM", "OBJECT"], ["Cowshed", localize "STRS_object_desc"], [10000,5000], 5, "core\items\object.sqf", 0, true, [], false],
    ["cl_Spikestrip", ["ITEM", "OBJECT"], ["Spikestrip", localize "STRS_object_desc"], [700,0], 5, "core\items\object.sqf", 0, true, [], true],
	["Land_MBG_GER_RHUS_4", ["ITEM", "OBJECT"], ["House 1", localize "STRS_object_desc"], [10000,5000], 5, "core\items\object.sqf", 0, true, []],
	["Land_MBG_GER_RHUS_3", ["ITEM", "OBJECT"], ["House 2", localize "STRS_object_desc"], [10000,5000], 5, "core\items\object.sqf", 0, true, []],
	["Land_MBG_GER_RHUS_5", ["ITEM", "OBJECT"], ["House 3", localize "STRS_object_desc"], [10000,5000], 5, "core\items\object.sqf", 0, true, []],
	["Land_MBG_GER_RHUS_2", ["ITEM", "OBJECT"], ["House 4", localize "STRS_object_desc"], [10000,5000], 5, "core\items\object.sqf", 0, true, []],
    
    //["Wall_FenW2_6_EP1", ["ITEM", "OBJECT"], ["Fence", localize "STRS_object_desc"], [0,0], 5, "core\items\object.sqf", 0, true, []],
	
    /* Food & Drink */
    ["Soup", ["ITEM", "FOOD"], ["Soup", "No Desc"], [5, 2], 0.2, "core\items\food.sqf", 0, true, [], false], 
    ["Sandwich", ["ITEM", "FOOD"], ["Sandwich", "No Desc"], [20, 16], 0.5, "core\items\food.sqf", 0, true, [1, [ ["Bread", 1]]], false], 
    ["Bread", ["ITEM", "FOOD"], ["Bread", "No Desc"], [15, 10], 1, "core\items\food.sqf", 0, true, [1, [ ["Wheat", 3]]], false], 
    ["Donut", ["ITEM", "FOOD"], ["Donut", "No Desc"], [12, 7], 0.5, "core\items\food.sqf", 0, true, [1, [ ["Wheat", 2]]], false], 
    ["Low_bottleWater", ["ITEM", "DRINK"], ["Small Bottled Water", "No Desc"], [25, 10], 1, "core\items\drink.sqf", 0, true, [1, [ ["Bottle", 1]]], false],
    ["High_bottleWater", ["ITEM", "DRINK"], ["Bottled Water", "No Desc"], [30, 15], 2, "core\items\drink.sqf", 0, true, [1, [ ["Bottle", 1]]], false],
    ["Bottle", ["ITEM", "DRINK"], ["Bottle", "No Desc"], [50, 25], 1, "core\items\noUse.sqf", 0, true, [1, [ ["Glass", 1]]], false],
	["Apple", ["ITEM", "FOOD"], ["Apple", "No Desc"], [7,3], 0.2, "core\items\food.sqf", 0, true, [], false],
	["Pumpkin", ["ITEM", "FOOD"], ["Pumpkin", "No Desc"], [25,15], 2, "core\items\food.sqf", 0, true, [], false],
	["Cabbage", ["ITEM", "FOOD"], ["Cabbage", "No Desc"], [15,7], 0.5, "core\items\food.sqf", 0, true, [], false],
	["Potato", ["ITEM", "FOOD"], ["Potato", "No Desc"], [10,5], 0.1, "core\items\food.sqf", 0, true, [], false], 
	["Meat", ["ITEM", "FOOD"], ["Meat", "No Desc"], [40,25], 1, "core\items\food.sqf", 0, true, [], false],	
	["ApplePie", ["ITEM", "DRINK"], ["Apple Pie", "No Desc"], [50, 25], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["Bread", 1], ["Apple", 2]]], false],
    
    /* Boats */
    ["Fishing_Boat", ["VEHICLE", "BOAT"], ["Fishing Boat", "No Desc"], [26000, 12000], 1600, "core\items\noUse.sqf", 400, true, [1, [ ["IronBar", 5], ["ElecComp", 6], ["wood", 40], ["Copper", 5]]], false],
    ["Smallboat_1", ["VEHICLE", "BOAT"], ["Small Boat 1", "No Desc"], [13000, 10000], 660, "core\items\noUse.sqf", 140, true, [1, [ ["IronBar", 2], ["ElecComp", 4], ["wood", 20], ["Copper", 2]]], false],
    ["Smallboat_2", ["VEHICLE", "BOAT"], ["Small Boat 2", "No Desc"], [13000, 10000], 660, "core\items\noUse.sqf", 140, true, [1, [ ["IronBar", 2], ["ElecComp", 4], ["wood", 20], ["Copper", 2]]], false],
    ["PBX", ["VEHICLE", "BOAT"], ["PBX", "No Desc"], [1000, 800], 220, "core\items\noUse.sqf", 60, true, [1, [ ["IronBar", 1], ["ElecComp", 4], ["Rubber", 20], ["Copper", 2]]], false],
    
    /* Fishing */
    ["Fishing_rod", ["ITEM", "TOOL"], ["Fishing rod", "No Desc"], [400, 220], 2, "core\items\fishingUse.sqf", 0, true, [1, [ ["IronBar", 1], ["wood", 1]]], false],
	["Fishing_net", ["ITEM", "TOOL"], ["Fishing net", "No Desc"], [680, 330], 20, "core\items\fishingUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Rubber", 1], ["Copper", 1]]], false],
    ["Harpoon", ["ITEM", "TOOL"], ["Harpoon", "No Desc"], [2500, 1250], 20, "core\items\fishingUse.sqf", 0, true, [1, [ ["IronBar", 3],["wood", 6], ["Rubber", 5], ["Copper", 3]]], false],
	
	["Minnow", ["ITEM", "BAIT"], ["Minnow", "No Desc"], [20, 10], 1, "core\items\food.sqf", 0, true, [], false],
    ["Worm", ["ITEM", "BAIT"], ["Worm", "No Desc"], [5, 1], 0, "core\items\noUse.sqf", 0, true, [], false],
    
    /* Fishing Rod Arrays */
    ["Bluegill", ["ITEM", "FISH"], ["Bluegill", "No Desc"], [50, 25], 2, "core\items\food.sqf", 0, true, [], false],
    ["Catfish", ["ITEM", "FISH"], ["Catfish", "No Desc"], [100, 50], 3, "core\items\food.sqf", 0, true, [], false],
    ["Perch", ["ITEM", "FISH"], ["Perch", "No Desc"], [75, 50], 2, "core\items\food.sqf", 0, true, [], false],
    ["Trout", ["ITEM", "FISH"], ["Trout", "No Desc"], [90, 60], 3, "core\items\food.sqf", 0, true, [], false],
    ["RockBass", ["ITEM", "FISH"], ["RockBass", "No Desc"], [150, 100], 4, "core\items\food.sqf", 0, true, [], false],
	
    /* Fishing net Arrays */
    ["Shrimp", ["ITEM", "FISH"], ["Shrimp", "No Desc"], [25, 12], 0.1, "core\items\food.sqf", 0, true, [], false],
    ["Sardine", ["ITEM", "FISH"], ["Sardine", "No Desc"], [75, 45], 0.1, "core\items\food.sqf", 0, true, [], false],
    ["Monkfish", ["ITEM", "FISH"], ["Monkfish", "No Desc"], [450, 300], 2, "core\items\food.sqf", 0, true, [], false],
    ["Salmon", ["ITEM", "FISH"], ["Salmon", "No Desc"], [350, 200], 4, "core\items\food.sqf", 0, true, [], false],
	
    /* Harpoon */
    ["Shark", ["ITEM", "FISH"], ["Shark", "No Desc"], [670,500], 30, "core\items\food.sqf", 0, true, [], false],
    ["Tuna", ["ITEM", "FISH"], ["Tuna", "No Desc"], [150,100], 5, "core\items\food.sqf", 0, true, [], false],
    ["Whale", ["ITEM", "FISH"], ["Whale", "No Desc"], [1200,700], 45, "core\items\food.sqf", 0, true, [], true],
    ["Swordfish", ["ITEM", "FISH"], ["Swordfish", "No Desc"], [600,350], 30, "core\items\food.sqf", 0, true, [], false],
   
    	/* Air */
	["usec_bell206_uscg", ["VEHICLE", "AIR"], ["USEC Bell Police", "No Desc"], [290000, 120000], 1450, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 120],["Tyre", 4], ["Rubber", 80], ["Copper", 70], ["Leather" , 30], ["ElecComp", 100], ["AdvChipset", 30], ["Glass", 20]]], false],	
	["usec_bell206_2", ["VEHICLE", "AIR"], ["USEC Bell Dragon Fly", "No Desc"], [418000, 220000], 1450, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 120],["Tyre", 4], ["Rubber", 80], ["Copper", 70], ["Leather" , 30], ["ElecComp", 100], ["AdvChipset", 30], ["Glass", 20]]], false],
	["qantas_C130", ["VEHICLE", "AIR"], ["QANTAS C130", "No Desc"], [750500, 395000], 272333, "core\items\noUse.sqf", 80000, true, [1, [ ["IronBar", 100],["Tyre", 6], ["Rubber", 100], ["Copper", 120], ["Leather" , 80], ["ElecComp", 150], ["AdvChipset", 60], ["Glass", 40]]], false],
	["airnz_C130", ["VEHICLE", "AIR"], ["AIR NEW ZEALAND C130", "No Desc"], [750500, 395000], 272333, "core\items\noUse.sqf", 80000, true, [1, [ ["IronBar", 100],["Tyre", 6], ["Rubber", 100], ["Copper", 120], ["Leather" , 80], ["ElecComp", 150], ["AdvChipset", 60], ["Glass", 40]]], false],
	["usec_bell206_1", ["VEHICLE", "AIR"], ["USEC Bell White", "No Desc"], [418000, 220000], 1450, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 120],["Tyre", 4], ["Rubber", 80], ["Copper", 70], ["Leather" , 30], ["ElecComp", 100], ["AdvChipset", 30], ["Glass", 20]]], false],
	["GNT_C185F", ["VEHICLE", "AIR"], ["Cessna 185 Amphibian", "No Desc"], [100000, 50000], 440, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 110], ["Rubber", 80], ["Copper", 100], ["Leather" , 20], ["ElecComp", 90], ["AdvChipset", 22], ["Glass", 10]]], false],
	["kyo_microlight_blue", ["VEHICLE", "AIR"], ["Kyo Microlight Blue", "No Desc"], [60000, 25000], 100, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 80], ["Rubber", 20], ["Copper", 100], ["Leather" , 10], ["ElecComp", 30]]], false],
	["kyo_microlight", ["VEHICLE", "AIR"], ["Kyo Microlight Red", "No Desc"], [60000, 25000], 100, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 80], ["Rubber", 20], ["Copper", 100], ["Leather" , 10], ["ElecComp", 30]]], false],
	["kyo_microlight_yellow", ["VEHICLE", "AIR"], ["Kyo Microlight Yellow", "No Desc"], [60000, 25000], 100, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 80], ["Rubber", 20], ["Copper", 100], ["Leather" , 10], ["ElecComp", 30]]], false],
    ["FougaMagister4", ["VEHICLE", "AIR"], ["Fouga CM-170 Magister", "No Desc"], [100000, 85000], 650, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 40], ["Rubber", 10], ["Copper", 50], ["Leather" , 5], ["ElecComp", 15]]], false],

    //Cars
    ["Skoda", ["VEHICLE", "CAR"], ["Skoda White", "No Desc"], [600, 300], 680, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 16],["Tyre", 4], ["Rubber", 10], ["Copper", 8], ["Vinyl" ,4], ["ElecComp", 5]]], false],
    ["SkodaRed", ["VEHICLE", "CAR"], ["Skoda Red", "No Desc"], [600, 300], 680, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 16],["Tyre", 4], ["Rubber", 10], ["Copper", 8], ["Vinyl" ,4], ["ElecComp", 5]]], false],
    ["SkodaBlue", ["VEHICLE", "CAR"], ["Skoda Blue", "No Desc"], [600, 300], 680, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 16],["Tyre", 4], ["Rubber", 10], ["Copper", 8], ["Vinyl" ,4], ["ElecComp", 5]]], false],
    ["SkodaGreen", ["VEHICLE", "CAR"], ["Skoda Green", "No Desc"], [600, 300], 680, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 16],["Tyre", 4], ["Rubber", 10], ["Copper", 8], ["Vinyl" ,4], ["ElecComp", 5]]], false],
    ["VWGolf", ["VEHICLE", "CAR"], ["VW Golf", "No Desc"], [5000, 2500], 1323, "core\items\noUse.sqf", 60, true, [1, [ ["IronBar", 16],["Tyre", 4], ["Rubber", 10], ["Copper", 12], ["Vinyl" ,4], ["ElecComp", 6]]], false],
    ["car_hatchback", ["VEHICLE", "CAR"], ["Hatchback", "No Desc"], [800, 400], 1190, "core\items\noUse.sqf", 60, true, [1, [ ["IronBar", 15],["Tyre", 4], ["Rubber", 10], ["Copper", 12], ["Leather" ,4], ["ElecComp", 5]]], false],
    ["car_sedan", ["VEHICLE", "CAR"], ["Sedan", "No Desc"], [1000, 500], 1260, "core\items\noUse.sqf", 70, true, [1, [ ["IronBar", 15],["Tyre", 4], ["Rubber", 8], ["Copper", 12], ["Vinyl" ,4], ["ElecComp", 5]]], false],
    ["Lada1_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Lada Green", "No Desc"], [500, 250], 1068, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 9],["Tyre", 4], ["Rubber", 5], ["Copper", 12], ["Vinyl" ,4], ["ElecComp", 5]]], false],
    ["Lada2_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Lada Decorated", "No Desc"], [500,250], 1068, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 9],["Tyre", 4], ["Rubber", 5], ["Copper", 12], ["Vinyl" ,4], ["ElecComp", 5]]], false],
    ["Volha_1_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Old Car (Blue)", "No Desc"], [800,400], 1068, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 9],["Tyre", 4], ["Rubber", 5], ["Copper", 8], ["Vinyl" ,4], ["ElecComp", 5]]], false],
    ["Volha_2_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Old Car (White)", "No Desc"], [800, 400], 1412, "core\items\noUse.sqf", 80, true, [1, [ ["IronBar", 9],["Tyre", 4], ["Rubber", 5], ["Copper", 8], ["Vinyl" ,4],["ElecComp", 5]]], false],
    ["Civcarwh", ["VEHICLE", "CAR"], ["Holden Monaro White.", "No Desc"], [15000, 7000], 1645, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["Civcarsl", ["VEHICLE", "CAR"], ["Holden Monaro.", "No Desc"], [15000, 7000], 1645, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["Civcarre", ["VEHICLE", "CAR"], ["Holden Monaro Red.", "No Desc"], [15000, 7000], 1645, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["Civcar", ["VEHICLE", "CAR"], ["Holden Monaro.", "No Desc"], [15000, 7000], 1645, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["Civcargr", ["VEHICLE", "CAR"], ["Holden Monaro Green.", "No Desc"], [15000, 7000], 1645, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["Civcarbu", ["VEHICLE", "CAR"], ["Holden Monaro Blue.", "No Desc"], [15000, 7000], 1645, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["civcarbl", ["VEHICLE", "CAR"], ["Holden Monaro Black SUPERCHARGED", "No Desc"], [35000, 17000], 1645, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    
	// ford
	["FORD_MUSTANG_SHELBY_COBRA3", ["VEHICLE", "CAR"], ["Ford Shelby Cobra.", "No Desc"], [45000, 20000], 1416, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["FORD_MUSTANG_SHELBY_COBRA2", ["VEHICLE", "CAR"], ["Ford Shelby Cobra.", "No Desc"], [45000, 20000], 1416, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["FORD_MUSTANG_SHELBY_COBRA", ["VEHICLE", "CAR"], ["Ford Shelby Cobra.", "No Desc"], [45000, 20000], 1416, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["FordFalconBlack", ["VEHICLE", "CAR"], ["Ford Falcon Black XR6 Turbo", "No Desc"], [22000, 14000], 1620, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["FordFalconBlue", ["VEHICLE", "CAR"], ["Ford Falcon Blue.", "No Desc"], [12000, 6000], 1620, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["FordFalconGreen", ["VEHICLE", "CAR"], ["Ford Falcon Green.", "No Desc"], [12000, 6000], 1620, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["FordFalcon", ["VEHICLE", "CAR"], ["Ford Falcon.", "No Desc"], [12000, 6000], 1620, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["FordFalconRed", ["VEHICLE", "CAR"], ["Ford Falcon Red.", "No Desc"], [12000, 6000], 1620, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["FordFalconSilver", ["VEHICLE", "CAR"], ["Ford Falcon Silver.", "No Desc"], [12000, 6000], 1620, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["FordFalconWhite", ["VEHICLE", "CAR"], ["Ford Falcon White.", "No Desc"], [12000, 6000], 1620, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
	["FORD_SHELBY_GT", ["VEHICLE", "CAR"], ["FORD SHELBY GT", "No Desc"], [82000, 68000], 1720, "core\items\noUse.sqf", 240, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
	
	
	/*  bmw shop */
	["BMW_M6", ["VEHICLE", "CAR"], ["BMW M6", "No Desc"], [127000, 112000], 1786, "core\items\noUse.sqf", 260, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 7]]], false],
    ["cl_bmwm3b", ["VEHICLE", "CAR"], ["BMW M3 SUPERCHARGED", "No Desc"], [97000, 89000], 1533, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 7]]], false],
    ["BMW_135I", ["VEHICLE", "CAR"], ["BMW 135I", "No Desc"], [17000, 14000], 1485, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 7]]], false],
    ["BMW_M3", ["VEHICLE", "CAR"], ["BMW M3", "No Desc"], [47000, 34000], 1300, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 7]]], false],
   
   /* merc shop*/
	["MERCEDES_BENZ_SL_65_AMG", ["VEHICLE", "CAR"], ["MERCEDES BENZ SL 65 AMG", "No Desc"], [147000, 134000], 1900, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 7]]], false],
    ["MERCEDES_BENZ_CLK_500", ["VEHICLE", "CAR"], ["MERCEDES BENZ CLK 500", "No Desc"], [37000, 24000], 1626, "core\items\noUse.sqf", 220, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 7]]], false],
    ["MERCEDES_BENZ_SLR", ["VEHICLE", "CAR"], ["MERCEDES BENZ SLR", "No Desc"], [239000, 220000], 1752, "core\items\noUse.sqf", 160, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 7]]], false],
    
	/* LAMBO SHOP */
	["CL_LAMBORGHINI_GT3", ["VEHICLE", "CAR"], ["Lamborghini GT3", "Green"], [599000, 500000], 1300, "core\items\noUse.sqf", 80, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["LAMBORGHINI_GALLARDO", ["VEHICLE", "CAR"], ["Lamborghini Gallardo", "No Desc"], [279000, 240000], 1520, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["LAMBORGHINI_REVENTON", ["VEHICLE", "CAR"], ["Lamborghini Reventon", "no desc"], [399000, 320000], 1665, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["LAMBORGHINI_MURCIELAGO", ["VEHICLE", "CAR"], ["Lamborghini Murcielago", "no desc"], [349000, 301000], 1650, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    
	/* exotics */
	["MCLAREN_F1", ["VEHICLE", "CAR"], ["MCLAREN F1", "no desc"], [379000, 312000], 1140, "core\items\noUse.sqf", 80, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["BUGATTI_VEYRON", ["VEHICLE", "CAR"], ["BUGATTI VEYRON", "no desc"], [849000, 731000], 1888, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["PAGANI_ZONDA_F", ["VEHICLE", "CAR"], ["PAGANI ZONDA", "no desc"], [249000, 215000], 1230, "core\items\noUse.sqf", 80, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["FORD_GT", ["VEHICLE", "CAR"], ["FORD GT", "no desc"], [412000, 375000], 1520, "core\items\noUse.sqf", 100, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    
	/* Porsche shop */
	["PORSCHE_997_GT3_RSR", ["VEHICLE", "CAR"], ["PORSCHE 997", "no desc"], [170000, 146000], 1440, "core\items\noUse.sqf", 150, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    
	/* Koenigsegg shop */
	["KOENIGSEGG_CCX1", ["VEHICLE", "CAR"], ["KOENIGSEGG CCX", "no desc"], [415000, 379000], 1280, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["KOENIGSEGG_CCX2", ["VEHICLE", "CAR"], ["KOENIGSEGG CCX", "no desc"], [415000, 379000], 1280, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["KOENIGSEGG_CCX3", ["VEHICLE", "CAR"], ["KOENIGSEGG CCX", "no desc"], [415000, 379000], 1280, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["KOENIGSEGG_CCX", ["VEHICLE", "CAR"], ["KOENIGSEGG CCX", "no desc"], [415000, 379000], 1280, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    
	/* misc shop */
	["SUBARU_IMPREZA_WRX_STI_AWD", ["VEHICLE", "CAR"], ["SUBARU IMPREZA WRX STI AWD", "no desc"], [53000, 42000], 1270, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["ALFA_ROMEO_BRERA", ["VEHICLE", "CAR"], ["ALFA ROMEO BRERA", "no desc"], [18000, 14500], 1470, "core\items\noUse.sqf", 140, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["AUDI_FSI_LE_MANS", ["VEHICLE", "CAR"], ["AUDI R8", "no desc"], [79000, 52000], 1560, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["RENAULT_CLIO_SPORT_V6", ["VEHICLE", "CAR"], ["RENAULT CLIO SPORT V6", "no desc"], [23000, 14500], 1130, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    
	/* mazda shop */
	["MAZDA_RX_71", ["VEHICLE", "CAR"], ["Mazda RX7", "no desc"], [39000, 26000], 1282, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["MAZDA_RX_74", ["VEHICLE", "CAR"], ["Mazda RX7", "no desc"], [39000, 26000], 1282, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["MAZDA_RX_7", ["VEHICLE", "CAR"], ["Mazda RX7", "no desc"], [39000, 26000], 1282, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["MAZDA_RX_72", ["VEHICLE", "CAR"], ["Mazda RX7", "no desc"], [39000, 26000], 1282, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    
	/* muscle */
	["CORVETTE_Z06", ["VEHICLE", "CAR"], ["CORVETTE Z06", "no desc"], [59000, 41500], 1421, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["chevrolet_chevelle", ["VEHICLE", "CAR"], ["Chevrolet Chevelle", "no desc"], [63000, 51000], 1600, "core\items\noUse.sqf", 220, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["CHEVROLET_CAMARO_SS_396", ["VEHICLE", "CAR"], ["CHEVROLET CAMARO SS 396", "no desc"], [39000, 27000], 1520, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["ASTON_MARTIN_DB9", ["VEHICLE", "CAR"], ["ASTON MARTIN DB9", "no desc"], [123000, 103000], 1695, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["DODGE_VIPER_SRT10", ["VEHICLE", "CAR"], ["DODGE VIPER SRT10", "no desc"], [89000, 76000], 1490, "core\items\noUse.sqf", 160, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["CHRYSLER_W_limmo", ["VEHICLE", "CAR"], ["Chrysler 300C LIMO", "no desc"], [60000, 46000], 2130, "core\items\noUse.sqf", 280, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["JAGUAR_XK", ["VEHICLE", "CAR"], ["JAGUAR XK", "no desc"], [71000, 59000], 1810, "core\items\noUse.sqf", 220, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["CHRYSLER_P_limmo", ["VEHICLE", "CAR"], ["Chrysler 300C LIMO", "no desc"], [60000, 46000], 2130, "core\items\noUse.sqf", 280, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["CHRYSLER_300", ["VEHICLE", "CAR"], ["CHRYSLER 300", "no desc"], [52000, 41000], 1860, "core\items\noUse.sqf", 260, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    
	/* nissan shop */
    ["NISSAN_SKYLINE_GT_R_Z3", ["VEHICLE", "CAR"], ["1969 Nissan Skyline GTR", "No Desc"], [10200, 9000], 1100, "core\items\noUse.sqf", 140, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["NISSAN_SKYLINE_V_SPEC", ["VEHICLE", "CAR"], ["Nissan Skyline R34 Thunder", "No Desc"], [36600, 25800], 1560, "core\items\noUse.sqf", 160, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["NISSAN_350Z", ["VEHICLE", "CAR"], ["Nissan 350Z.", "No Desc"], [31900, 21800], 1446, "core\items\noUse.sqf", 140, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["NISSAN_SKYLINE_GT_R_Z2", ["VEHICLE", "CAR"], ["1969 Nissan Skyline GTR", "No Desc"], [10200, 11800], 1100, "core\items\noUse.sqf", 140, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["NISSAN_SKYLINE_V_SPEC1", ["VEHICLE", "CAR"], ["Nissan Skyline V Spec.", "No Desc"], [36000, 25800], 1560, "core\items\noUse.sqf", 160, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["NISSAN_370Z", ["VEHICLE", "CAR"], ["Nissan Skyline 370Z.", "No Desc"], [50000, 36000], 1466, "core\items\noUse.sqf", 140, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["NISSAN_GTR_SPECV3", ["VEHICLE", "CAR"], ["Nissan Skyline V Spec.", "No Desc"], [130000, 100800], 1740, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["NISSAN_GTR_SPECV", ["VEHICLE", "CAR"], ["Nissan Skyline V Spec.", "No Desc"], [126000, 98800], 1740, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["NISSAN_GTR_SPECV2", ["VEHICLE", "CAR"], ["Nissan Skyline V Spec.", "No Desc"], [126000, 98800], 1740, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["NISSAN_GTR_SPECV1", ["VEHICLE", "CAR"], ["Nissan Skyline V Spec.", "No Desc"], [126000, 98800], 1740, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["a2l_taxi", ["VEHICLE", "CAR"], ["Taxi Cab.", "No Desc"], [4560, 3800], 1690, "core\items\noUse.sqf", 220, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],

	/*Sports Cars */
	["PORSCHE_911_TURBO", ["VEHICLE", "CAR"], ["Porsche 911 Turbo", "No Desc"], [140000, 100000], 1584, "core\items\noUse.sqf", 150, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["PORSCHE_911_GT3_RS", ["VEHICLE", "CAR"], ["Porsche 911 Turbo GT3 RS", "No Desc"], [228000, 110000], 1320, "core\items\noUse.sqf", 150, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["CL_PORSCHE_997", ["VEHICLE", "CAR"], ["Porsche 997 RSR", "No Desc"], [310000, 267000], 1440, "core\items\noUse.sqf", 150, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["cl_charger", ["VEHICLE", "CAR"], ["Charger", "No Desc"], [58000, 44000], 1979, "core\items\noUse.sqf", 230, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 7]]], false],
    ["CL_LAMBORGHINI_GT3", ["VEHICLE", "CAR"], ["Lamborghini GT3", "Green"], [399000, 260000], 1300, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    
    /* Classic Cars */
    ["monaco", ["VEHICLE", "CAR"], ["1968 Dodge Monaco", "No Desc"], [22600, 11800], 2023, "core\items\noUse.sqf", 280, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["roadrunner2", ["VEHICLE", "CAR"], ["1969 Road Runner", "Yellow"], [26000, 11800], 1720, "core\items\noUse.sqf", 280, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["barcuda", ["VEHICLE", "CAR"], ["1970 Plymouth Barracuda", "No Desc"], [45000, 20000], 1530, "core\items\noUse.sqf", 280, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["fury", ["VEHICLE", "CAR"], ["1977 Plymouth Fury", "No Desc"], [19000, 10000], 3510, "core\items\noUse.sqf", 260, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["challenger", ["VEHICLE", "CAR"], ["2008 Dodge Challenger Concept", "No Desc"], [50000, 20000], 1302, "core\items\noUse.sqf", 180, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 7]]], false],
    ["civic", ["VEHICLE", "CAR"], ["1989 Honda Civic", "No Desc"], [6000, 20000], 1182, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 7]]], false],
    ["roadrunner", ["VEHICLE", "CAR"], ["1969 Road Runner", "Green"], [26000, 11800], 1720, "core\items\noUse.sqf", 280, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    ["cuda", ["VEHICLE", "CAR"], ["1970 Plymouth AAR Cuda.", "No Desc"], [27000, 15000], 1530, "core\items\noUse.sqf", 280, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 18], ["Leather" , 8], ["ElecComp", 6]]], false],
    
	//Police Cars
	["Copcar", ["VEHICLE", "CAR"], ["Holden Monaro Standard", "No Desc"], [15500, 10000], 1645, "core\items\noUse.sqf", 200, true, [], false],
	["Fordpatrolbasic", ["VEHICLE", "CAR"], ["Ford Falcon Standard", "No Desc"], [15500, 10000], 1620, "core\items\noUse.sqf", 220, true, [], false],
	["FordUC", ["VEHICLE", "CAR"], ["Ford Falcon UnderCover", "No Desc"], [30000, 15000], 1620, "core\items\noUse.sqf", 220, true, [], false],
	["FordUCBlack", ["VEHICLE", "CAR"], ["Ford Falcon UnderCover", "No Desc"], [30000, 15000], 1620, "core\items\noUse.sqf", 220, true, [], false],
	["FordUCBlue", ["VEHICLE", "CAR"], ["Ford Falcon UnderCover", "No Desc"], [30000, 15000], 1620, "core\items\noUse.sqf", 220, true, [], false],
	["FordUCGreen", ["VEHICLE", "CAR"], ["Ford Falcon UnderCover", "No Desc"], [30000, 15000], 1620, "core\items\noUse.sqf", 220, true, [], false],
	["FordUCRed", ["VEHICLE", "CAR"], ["Ford Falcon UnderCover", "No Desc"], [30000, 15000], 1620, "core\items\noUse.sqf", 220, true, [], false],
	["FordUCSilver", ["VEHICLE", "CAR"], ["Ford Falcon UnderCover", "No Desc"], [30000, 15000], 1620, "core\items\noUse.sqf", 220, true, [], false],
	["FordUCWhite", ["VEHICLE", "CAR"], ["Ford Falcon UnderCover", "No Desc"], [30000, 15000], 1620, "core\items\noUse.sqf", 220, true, [], false],


	["CopcarAus", ["VEHICLE", "CAR"], ["Holden Monaro Blue", "No Desc"], [140000, 100000], 1645, "core\items\noUse.sqf", 200, true, [], false],
	["CopcarAusgreen", ["VEHICLE", "CAR"], ["Holden Monaro Green", "No Desc"], [140000, 100000], 1645, "core\items\noUse.sqf", 200, true, [], false],
	["Copcarhw", ["VEHICLE", "CAR"], ["Holden Monaro Highway Patrol", "No Desc"], [74000, 58000], 1645, "core\items\noUse.sqf", 200, true, [], false],
	["CopcarHW2", ["VEHICLE", "CAR"], ["Holden Monaro Highway Patrol", "No Desc"], [74000, 58000], 1645, "core\items\noUse.sqf", 200, true, [], false],
	["SUV_TK_CIV_EP1", ["VEHICLE", "CAR"], ["SWAT SUV", "No Desc"], [200000, 90000], 1995, "core\items\noUse.sqf", 250, true, [], false, [true, "singleBlue", [[[0, 0.1, 0.3], [0, 0, 1], 0.04]]]],
	["CopcarNZ", ["VEHICLE", "CAR"], ["Holden Monaro NZ", "No Desc"], [15500, 10000], 1645, "core\items\noUse.sqf", 200, true, [], false],
	["qin_evoix_black", ["VEHICLE", "CAR"], ["Police Evo Black", "No Desc"], [15500, 10000], 1165, "core\items\noUse.sqf", 140, true, [], false,[true, "singleBlue", [[[0, 0.1, 0.3], [0, 0, 1], 0.04]]]],
	["CL_LAMBORGHINIclpd", ["VEHICLE", "CAR"], ["Police Lamborghini", "No Desc"], [375500, 295000], 1300, "core\items\noUse.sqf", 80, true, [], false,[true, "singleBlue", [[[0, 0.1, 0.3], [0, 0, 1], 0.04]]]],
	["CL_PORSCHEclpd", ["VEHICLE", "CAR"], ["Police Porsche", "No Desc"], [269500, 215000], 1440, "core\items\noUse.sqf", 150, true, [], false,[true, "singleBlue", [[[0, 0.1, 0.3], [0, 0, 1], 0.04]]]],
	

	
	//Emergency Vehicles
	["a2l_kme", ["VEHICLE", "CAR"], ["FireTruck", "No Desc"], [15500, 10000], 13365, "core\items\noUse.sqf", 420, true, [], false],
	["a2l_ambulance", ["VEHICLE", "CAR"], ["Ambulance", "No Desc"], [15500, 10000], 2365, "core\items\noUse.sqf", 350, true, [], false],
	["CL_chargerclEMT", ["VEHICLE", "CAR"], ["Sprint Car", "No Desc"], [25000, 10000], 1979, "core\items\noUse.sqf", 220, true, [], false],
	
    //Pickups
    ["datsun1_civil_1_open", ["VEHICLE", "CAR"], ["Datsun Open (Blue)", "No Desc"], [300, 150], 820, "core\items\noUse.sqf", 320, true, [1, [ ["IronBar", 18],["Tyre", 4], ["Rubber", 20], ["Copper", 15], ["Vinyl" , 6], ["ElecComp", 5]]], false],
    ["datsun1_civil_2_covered", ["VEHICLE", "CAR"], ["Datsun Covered", "No Desc"], [300, 150], 830, "core\items\noUse.sqf", 320, true, [1, [ ["IronBar", 18],["Tyre", 4], ["Rubber", 20], ["Copper", 15], ["Vinyl" , 6], ["ElecComp", 5]]], false],
    ["datsun1_civil_3_open", ["VEHICLE", "CAR"], ["Datsun Tubeframe", "No Desc"], [300, 150], 821, "core\items\noUse.sqf", 320, true, [1, [ ["IronBar", 18],["Tyre", 4], ["Rubber", 20], ["Copper", 15], ["Vinyl" , 6], ["ElecComp", 5]]], false],
    ["hilux1_civil_1_open", ["VEHICLE", "CAR"], ["Hilux Open (Gold)", "No Desc"], [12000, 5000], 1270, "core\items\noUse.sqf", 420, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 15], ["Leather" , 6], ["ElecComp", 5]]], false],
    ["hilux1_civil_2_covered", ["VEHICLE", "CAR"], ["Hilux Covered (Red)", "No Desc"], [12000, 5000], 1270, "core\items\noUse.sqf", 420, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 15], ["Leather" , 6], ["ElecComp", 5]]], false],
    ["hilux1_civil_3_open", ["VEHICLE", "CAR"], ["Hilux Open (White)", "No Desc"], [12000, 5000], 1270, "core\items\noUse.sqf", 420, true, [1, [ ["IronBar", 22],["Tyre", 4], ["Rubber", 20], ["Copper", 15], ["Leather" , 6], ["ElecComp", 5]]], false],
    ["LandRover_CZ_EP1", ["VEHICLE", "CAR"], ["Landrover", "No Desc"], [6000, 2500], 2419, "core\items\noUse.sqf", 400, true, [1, [ ["IronBar", 20],["Tyre", 4], ["Rubber", 20], ["Copper", 15], ["Leather" , 6], ["ElecComp", 5]]], false],
    ["LandRover_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Landrover (Red)", "No Desc"], [6000, 2500], 2419, "core\items\noUse.sqf", 400, true, [1, [ ["IronBar", 20],["Tyre", 4], ["Rubber", 20], ["Copper", 15], ["Leather" , 6], ["ElecComp", 5]]], false],
    
    //Bikes
    ["MMT_Civ", ["VEHICLE", "CAR"], ["Mountain bike", "No Desc"], [150, 140], 10, "core\items\noUse.sqf", 8, true, [1, [ ["IronBar", 1],["Tyre", 2], ["Rubber", 2]]], false],
    ["Old_bike_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Old bike", "No Desc"], [50, 40], 10, "core\items\noUse.sqf", 8, true, [1, [ ["IronBar", 2],["Tyre", 2], ["Rubber", 8], ["Copper", 3], ["Vinyl" , 6], ["ElecComp", 1]]], false],
    ["Old_moto_TK_Civ_EP1", ["VEHICLE", "CAR"], ["Old motorbike", "No Desc"], [300, 150], 123, "core\items\noUse.sqf", 30, true, [1, [ ["IronBar", 2],["Tyre", 2], ["Rubber", 8], ["Copper", 3], ["Vinyl" , 6], ["ElecComp", 1]]], false],
    ["M1030", ["VEHICLE", "CAR"], ["M1030", "No Desc"], [400, 200], 180, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 2],["Tyre", 2], ["Rubber", 8], ["Copper", 3], ["Vinyl" , 6], ["ElecComp", 1]]], false],
    ["TT650_Civ", ["VEHICLE", "CAR"], ["TT650", "No Desc"], [450, 200], 135, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 2],["Tyre", 2], ["Rubber", 8], ["Copper", 3], ["Vinyl" , 6], ["ElecComp", 1]]], false],
    ["TT650_Gue", ["VEHICLE", "CAR"], ["TT650 (Pattern)", "No Desc"], [450, 200], 135, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 2],["Tyre", 2], ["Rubber", 8], ["Copper", 3], ["Vinyl" , 1], ["ElecComp", 1]]], false],
    ["TT650_TK_CIV_EP1", ["VEHICLE", "CAR"], ["TT650 (Rusty)", "No Desc"], [450, 200], 135, "core\items\noUse.sqf",40, true, [1, [ ["IronBar", 2],["Tyre", 2], ["Rubber", 8], ["Copper", 3], ["Vinyl" , 1], ["ElecComp", 1]]], false],
    ["ATV_US_EP1", ["VEHICLE", "CAR"], ["ATV", "No Desc"], [800, 400], 215, "core\items\noUse.sqf", 60, true, [1, [ ["IronBar", 2],["Tyre", 4], ["Rubber", 8], ["Copper", 3], ["Leather" , 1], ["ElecComp", 2]]], false],
    
    //Trucks
    ["cl_fuel_mackr", ["VEHICLE", "CAR"], ["Fuel Tanker", "No Desc"], [50080, 36000], 23000, "core\items\noUse.sqf", 13000, true, [1, [ ["IronBar", 50],["Tyre", 6], ["Rubber", 50], ["Copper", 30], ["Vinyl" , 12], ["ElecComp",6], ["wood", 20]]], false],
    ["KamazOpen", ["VEHICLE", "CAR"], ["Kamaz (Open)", "No Desc"], [14080, 5000], 6090, "core\items\noUse.sqf", 3500, true, [1, [ ["IronBar", 50],["Tyre", 6], ["Rubber", 50], ["Copper", 30], ["Vinyl" , 12], ["ElecComp",6], ["wood", 20]]], false],
    ["UralCivil", ["VEHICLE", "CAR"], ["Ural Civil", "No Desc"], [34880, 18500], 8120, "core\items\noUse.sqf", 5600, true, [1, [ ["IronBar", 40],["Tyre", 6], ["Rubber", 50], ["Copper", 30], ["Vinyl" , 12], ["ElecComp",6], ["wood", 20]]], false],
    ["UralCivil2", ["VEHICLE", "CAR"], ["Ural Civil 2", "No Desc"], [34880, 18500], 8120, "core\items\noUse.sqf", 5600, true, [1, [ ["IronBar", 40],["Tyre", 6], ["Rubber", 50], ["Copper", 30], ["Vinyl" , 12], ["ElecComp",6], ["wood", 20]]], false],
    ["UralOpen_INS", ["VEHICLE", "CAR"], ["Ural Camo", "No Desc"], [34880, 18500], 8110, "core\items\noUse.sqf", 5600, true, [1, [ ["IronBar", 40],["Tyre", 6], ["Rubber", 50], ["Copper", 30], ["Vinyl" , 12], ["ElecComp",6], ["wood", 20]]], false],
    ["MTVR", ["VEHICLE", "CAR"], ["MTVR", "No Desc"], [33380, 17750], 18000, "core\items\noUse.sqf", 11000, true, [1, [ ["IronBar", 30],["Tyre", 6], ["Rubber", 50], ["Copper", 30], ["Leather" , 12], ["ElecComp",7], ["wood", 20]]], false],
    ["mackr", ["VEHICLE", "CAR"], ["Mack Type R", "No Desc"], [25000, 20000], 5150, "core\items\noUse.sqf", 4600, true, [1, [ ["IronBar", 25],["Tyre", 6], ["Rubber", 50], ["Copper", 30], ["Vinyl" , 12], ["ElecComp",6], ["wood", 20]]], false],
    ["cl_flat_mackr", ["VEHICLE", "CAR"], ["Mack Tipper Truck", "No Desc"], [30000, 20000], 22215, "core\items\noUse.sqf", 11500, true, [1, [ ["IronBar", 25],["Tyre", 6], ["Rubber", 50], ["Copper", 30], ["Vinyl" , 12], ["ElecComp",6], ["wood", 20]]], false],
    ["V3S_Salvage_TK_GUE_EP1", ["VEHICLE", "CAR"], ["V3S Salvage", "No Desc"], [25000, 20000], 7049, "core\items\noUse.sqf", 2500, true, [1, [ ["IronBar", 25],["Tyre", 6], ["Rubber", 50], ["Copper", 30], ["Vinyl" , 12], ["ElecComp",6], ["wood", 20]]], false],
    ["cl_del_mackr", ["VEHICLE", "CAR"], ["Delivery Truck", "No Desc"], [480000, 32000], 17000, "core\items\noUse.sqf", 1250, true, [1, [ ["IronBar", 25],["Tyre", 6], ["Rubber", 50], ["Copper", 30], ["Vinyl" , 12], ["ElecComp",6], ["wood", 20]]], false],
    ["cl_flatbed_mackr", ["VEHICLE", "CAR"], ["Flatbed Truck", "No Desc"], [30000, 20000], 17000, "core\items\noUse.sqf", 10000, true, [1, [ ["IronBar", 25],["Tyre", 6], ["Rubber", 50], ["Copper", 30], ["Vinyl" , 12], ["ElecComp",6], ["wood", 20]]], false],

    ["Tractor", ["VEHICLE", "CAR"], ["Tractor", "No Desc"], [8000, 6500], 3250, "core\items\noUse.sqf", 230, true, [1, [ ["IronBar", 20],["Tyre", 4], ["Rubber", 20], ["Copper",15], ["Leather" , 4], ["ElecComp",4]]], false],
    
	//Weapons
   	["M9", ["WEAPON", "PISTOL"], ["M9", "No Desc"], [1520, 800], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 4], ["Copper",1]]], false],
   	["15Rnd_9x19_M9", ["MAGAZINE", "PISTOL"], ["M9 Magazine", "No Desc"], [560, 300], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper",1]]], false],
   	["Colt1911", ["WEAPON", "PISTOL"], ["Colt 1911", "No Desc"], [1520, 800], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 4], ["Copper",1]]], false],
   	["7Rnd_45ACP_1911", ["MAGAZINE", "PISTOL"], ["7Rnd M1911 .45 ACP Mag", "No Desc"], [560, 300], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper",1]]], false],
	["M1014", ["WEAPON", "RIFLE"], ["M1014", "No Desc"], [2800, 1500], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 8], ["Copper",1]]], true],
   	["8Rnd_B_Beneli_74Slug", ["MAGAZINE", "PISTOL"], ["8Rnds BeanBag Non-Lethal", "No Desc"], [560, 300], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper",1]]], true],
   	["x26", ["WEAPON", "PISTOL"], ["X26 Tazer", "No Desc"], [1780, 900], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper",1], ["ElecComp",1]]], true],
   	["x26_mag", ["MAGAZINE", "PISTOL"], ["X26 Cartridge", "No Desc"], [560, 300], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper",1], ["ElecComp",1]]], true],
	["G36a", ["WEAPON", "RIFLE"], ["G36", "No Desc"], [1520, 800], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 8], ["Copper",2]]], false],
   	["30Rnd_556x45_G36", ["MAGAZINE", "RIFLE"], ["G36 Magazine", "No Desc"], [560, 300], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper",1]]], false],
	["M4A1", ["WEAPON", "RIFLE"], ["M4A1", "No Desc"], [1520, 800], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 8], ["Copper",2]]], false],
   	["30Rnd_556x45_Stanag", ["MAGAZINE", "RIFLE"], ["M4A1 Magazine", "No Desc"], [560, 300], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper",1]]], false],
	["M24", ["WEAPON", "RIFLE"], ["M24", "No Desc"], [1520, 800], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 10], ["Copper",3], ["Glass",1]]], false],
   	["5Rnd_762x51_M24", ["MAGAZINE", "RIFLE"], ["M24 Magazine", "No Desc"], [560, 300], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper",1]]], false],
	["M8_sharpshooter", ["WEAPON", "RIFLE"], ["XM8 Sharpshooter", "No Desc"], [1520, 800], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 10], ["Copper",3], ["Glass",1]]], false],
   	["30Rnd_556x45_G36", ["MAGAZINE", "RIFLE"], ["XM8 Sharpshooter Magazine", "No Desc"], [560, 300], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper",1]]], false],
	["AKS_74_U", ["WEAPON", "RIFLE"], ["AKS74U", "No Desc"], [1520, 800], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 15], ["Copper",5]]], false],
   	["30Rnd_545x39_AK", ["MAGAZINE", "RIFLE"], ["AKS74U Magazine", "No Desc"], [560, 300], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper",1]]], false],
	["Igla", ["WEAPON", "RIFLE"], ["Igla", "No Desc"], [1520, 800], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 30], ["Copper",7]]], false],
   	["Igla", ["MAGAZINE", "RIFLE"], ["Igla Ammo", "No Desc"], [560, 300], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper",1]]], false],
	["PipeBomb", ["WEAPON", "RIFLE"], ["PipeBomb", "No Desc"], [1520, 800], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 2], ["Copper",5], ["ElecComp",6], ["AdvChipset", 10]]], false],
   	["TimeBomb", ["WEAPON", "RIFLE"], ["TimeBomb", "No Desc"], [560, 300], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 2], ["Copper",5], ["ElecComp",6], ["AdvChipset", 10]]], false],
       
 	/* Bushes/Seeds/Trees */
    ["mari_seed", ["ITEM", "SPROUT"], ["Marihuana Seed", "No Desc"], [50,5], 0, "core\items\sprout.sqf", 0, true, [], true],
	["herion_seed", ["ITEM", "SPROUT"], ["Herion Seed", "No Desc"], [50,5], 0, "core\items\sprout.sqf", 0, true, [], true],
	["cocaine_seed", ["ITEM", "SPROUT"], ["Cocaine Seeds", "No Desc"], [50,5], 0, "core\items\sprout.sqf", 0, true, [], true],
    ["apple_seed", ["ITEM", "SPROUT"], ["Apple Seed", "No Desc"], [4,1], 0, "core\items\sprout.sqf", 0, true, [], false],
    ["populus_seed", ["ITEM", "SPROUT"], ["Populus Seed", "No Desc"], [4,2], 0, "core\items\sprout.sqf", 0, true, [], false],
    ["larix_seed", ["ITEM", "SPROUT"], ["Larix Seed", "No Desc"], [5,2], 0, "core\items\sprout.sqf", 0, true, [], false],
    ["pine_seed", ["ITEM", "SPROUT"], ["Pine Seed", "No Desc"], [4,2], 0, "core\items\sprout.sqf", 0, true, [], false],
    ["potato_sprouts", ["ITEM", "SPROUT"], ["Potato Sprouts", "No Desc"], [6,2], 0, "core\items\sprout.sqf", 0, true, [], false],
    ["alder_seed", ["ITEM", "SPROUT"], ["Alder Seed", "No Desc"], [5,2], 0, "core\items\sprout.sqf", 0, true, [], false],
	["pumpkin_seed", ["ITEM", "SPROUT"], ["Pumpkin Seed", "No Desc"], [6,2], 0, "core\items\sprout.sqf", 0, true, [], false],
	["cabbage_seed", ["ITEM", "SPROUT"], ["Cabbage Seed", "No Desc"], [4,1], 0, "core\items\sprout.sqf", 0, true, [], false],
	["maple_seed", ["ITEM", "SPROUT"], ["Maple Seed", "No Desc"], [8,4], 0, "core\items\sprout.sqf", 0, true, [], false],
	["rubber_seed", ["ITEM", "SPROUT"], ["Rubber Seed", "No Desc"], [8,4], 0, "core\items\sprout.sqf", 0, true, [], false],
    
    ["mari", ["ITEM", "DRUG"], ["Marihuana", "No Desc"], [70,60], 1, "core\items\drugUse.sqf", 0, true, [], true],
	["cocaine", ["ITEM", "DRUG"], ["Cocaine", "No Desc"], [90,75], 1, "core\items\drugUse.sqf", 0, true, [], true],
	["herion", ["ITEM", "DRUG"], ["Herion", "No Desc"], [170,160], 1, "core\items\drugUse.sqf", 0, true, [], true],
	["Beer", ["ITEM", "DRUG"], ["Beer", "No Desc"], [10,5], 0, "core\items\drugUse.sqf", 0, true, [], true],
    	
	//Resources
	/* Food Resources */
	["Rabbit", ["ITEM", "RESOURCE"], ["Rabbit", "No desc"], [12,10], 0.5, "core\items\noUse.sqf", 0, true, [], false],
	["Chicken", ["ITEM", "RESOURCE"], ["Chicken", "No desc"], [2,1], 0.5, "core\items\noUse.sqf", 0, true, [], false],
	["Lamb", ["ITEM", "RESOURCE"], ["Lamb", "No desc"], [15,6], 5, "core\items\noUse.sqf", 0, true, [], false],
	["Cow", ["ITEM", "RESOURCE"], ["Cow", "No desc"], [15,6], 5, "core\items\noUse.sqf", 0, true, [], false],
	["Boar", ["ITEM", "RESOURCE"], ["Boar", "No desc"], [20,10], 5, "core\items\noUse.sqf", 0, true, [], false],
	
   	/* Primary Resources */
    ["GoldOre", ["ITEM", "RESOURCE"], ["Gold Ore", "No desc"], [40,20], 10, "core\items\noUse.sqf", 0, true, [], false],
    ["IronOre", ["ITEM", "RESOURCE"], ["Iron Ore", "No desc"], [30,15], 5, "core\items\noUse.sqf", 0, true, [], false],
	["CopperOre", ["ITEM", "RESOURCE"], ["Copper Ore", "No desc"], [25,12], 3, "core\items\noUse.sqf", 0, true, [], false],
	["Stone", ["ITEM", "RESOURCE"], ["Stone", "No desc"], [25,12], 3, "core\items\noUse.sqf", 0, true, [], false],
	["Sulphur", ["ITEM", "RESOURCE"], ["Sulphur", "No desc"], [25,12], 1, "core\items\noUse.sqf", 0, true, [], false],
	["Diamond", ["ITEM", "RESOURCE"], ["Diamond", "No desc"], [40,20], .05, "core\items\noUse.sqf", 0, true, [], false],
	["Silver", ["ITEM", "RESOURCE"], ["Silver", "No desc"], [50,25], .05, "core\items\noUse.sqf", 0, true, [], false],
    ["Sand", ["ITEM", "RESOURCE"], ["Sand", "No desc"], [4,2], 1, "core\items\noUse.sqf", 0, true, [], false],
	["Salt", ["ITEM", "RESOURCE"], ["Salt", "No desc"], [4,2], 1, "core\items\noUse.sqf", 0, true, [], false],
	["Clay", ["ITEM", "RESOURCE"], ["Clay", "No desc"], [5,2], 1, "core\items\noUse.sqf", 0, true, [], false],
	["Coal", ["ITEM", "RESOURCE"], ["Coal", "No desc"], [25,12], 1, "core\items\noUse.sqf", 0, true, [], false],
	["Oil", ["ITEM", "RESOURCE"], ["Oil", "No desc"], [20,10], 5, "core\items\noUse.sqf", 0, true, [], false],
	["Silicon", ["ITEM", "RESOURCE"], ["Silicon", "No desc"], [5,2], 1, "core\items\noUse.sqf", 0, true, [], false],
	["populus_log", ["ITEM", "RESOURCE"], ["Populus Log", "No Desc"], [5,2], 20, "core\items\noUse.sqf", 0, true, [], false],
	["alder_log", ["ITEM", "RESOURCE"], ["Alder Log", "No Desc"], [5,2], 20, "core\items\noUse.sqf", 0, true, [], false],
	["pine_log", ["ITEM", "RESOURCE"], ["Pine Log", "No Desc"], [6,3], 21, "core\items\noUse.sqf", 0, true, [], false],
	["larix_log", ["ITEM", "RESOURCE"], ["Larix Log", "No Desc"], [6,3], 21, "core\items\noUse.sqf", 0, true, [], false],
	["maple_log", ["ITEM", "RESOURCE"], ["Maple Log", "No Desc"], [8,3], 22, "core\items\noUse.sqf", 0, true, [], false],
	["rubber_log", ["ITEM", "RESOURCE"], ["Rubber Log", "No Desc"], [8,3], 20, "core\items\noUse.sqf", 0, true, [], false],
	["Wheat", ["ITEM", "RESOURCE"], ["Wheat", "No Desc"], [3,1], 3, "core\items\noUse.sqf", 0, true, [], false],
	["Flour", ["ITEM", "RESOURCE"], ["Flour", "No Desc"], [6,3], 2, "core\items\noUse.sqf", 0, true, [], false],
	    
	/* Secondary Resources */
	["wood", ["ITEM", "RESOURCE"], ["Wood", "No Desc"], [40,20], 5, "core\items\noUse.sqf", 0, true, [], false],
	["IronBar", ["ITEM", "RESOURCE"], ["Iron Bar", "No desc"], [160,80], 2, "core\items\noUse.sqf", 0, true, [], false],
	["Copper", ["ITEM", "RESOURCE"], ["Copper", "No desc"], [120,60], 2, "core\items\noUse.sqf", 0, true, [], false],
	["GoldBar", ["ITEM", "RESOURCE"], ["Gold Bar", "No desc"], [440,220], 5, "core\items\noUse.sqf", 0, true, [], false],
	["SilverBar", ["ITEM", "RESOURCE"], ["Silver Bar", "No desc"], [400,200], 5, "core\items\noUse.sqf", 0, true, [], false],
	["Glass", ["ITEM", "RESOURCE"], ["Glass", "No Desc"], [20,10], 2, "core\items\noUse.sqf", 0, true, [], false],
	["Bricks", ["ITEM", "RESOURCE"], ["Bricks", "No Desc"], [24,12], 2, "core\items\noUse.sqf", 0, true, [], false],
	["Petrol", ["ITEM", "RESOURCE"], ["Petrol", "No Desc"], [20,14], 1, "core\items\noUse.sqf", 0, true, [], false],
	["Rubber", ["ITEM", "RESOURCE"], ["Rubber", "No Desc"], [14,7], 1, "core\items\noUse.sqf", 0, true, [], false],
	["Tyre", ["ITEM", "RESOURCE"], ["Rubber Tyre", "No Desc"], [140,70], 5, "core\items\noUse.sqf", 0, true, [2, [["Rubber", 2] ]], false],
	["Leather", ["ITEM", "RESOURCE"], ["Leather", "No Desc"], [140,70], 5, "core\items\noUse.sqf", 0, true, [], false],
	["Vinyl", ["ITEM", "RESOURCE"], ["Vinyl", "No Desc"], [120,60], 2, "core\items\noUse.sqf", 0, true, [], false],
	
	/* Tertiary Resources */
	["ElecComp", ["ITEM", "RESOURCE"], ["Electric Components", "No Desc"], [610,305], 3, "core\items\noUse.sqf", 0, true, [1, [ ["Copper", 2],["Silicon", 2] ]], false],
	["AdvChipset", ["ITEM", "RESOURCE"], ["Advanced Chipset", "No Desc"], [3200,1750], 5, "core\items\noUse.sqf", 0, true, [1, [ ["ElecComp", 2],["GoldBar", 1], ["Silicon", 2]]], false],
	["Plank", ["ITEM", "RESOURCE"], ["Plank", "No Desc"], [190,95], 3, "core\items\noUse.sqf", 0, true, [1, [ ["wood", 2]]], false],
	["Nails", ["ITEM", "RESOURCE"], ["Nails", "Ram these into things just like I rammed your mother last night."], [5,3], 0.1, "core\items\noUse.sqf", 0, true, [10, [["IronBar", 1]]], false],
	["Screws", ["ITEM", "RESOURCE"], ["Screws", "Hold stuff together with these nifty screws."], [5,3], 0.1, "core\items\noUse.sqf", 0, true, [10, [["IronBar", 1]]], false],
	["Tempered Glass", ["ITEM", "RESOURCE"], ["Tempered Glass", "A toughened glass pane for use in the automotive and housing industry."], [60,40], 1, "core\items\noUse.sqf", 0, true, [1, [["Glass", 2]]], false],
	["Windshield", ["ITEM", "RESOURCE"], ["Windshield", "A special wide pane of glass for use on vehicles"], [60,40], 4, "core\items\noUse.sqf", 0, true, [1, [["Glass", 4]]], false],
	["Aggrigate", ["ITEM", "RESOURCE"], ["Aggrigate", "Crushed up stone, used in the creation of concrete"], [20,14], 1, "core\items\noUse.sqf", 0, true, [1, [["Stone", 1]]], false],
	["Concrete", ["ITEM", "RESOURCE"], ["Concrete", "Used in numerous applications, this tough and universal material is in almost anything that does not move."], [900,800], 10, "core\items\noUse.sqf", 0, true, [1, [["Aggrigate", 2], ["Sand", 4], ["High_bottleWater", 5]]], false],
	["Beam", ["ITEM", "RESOURCE"], ["Beam", "No Desc"], [380,190], 3, "core\items\noUse.sqf", 0, true, [1, [ ["wood", 4]]], false]
	

	///NO COMMA!
	
];
	
RPP_fnc_itemGetArray =
{
    private ["_id", "_arr", "_getID"];
    _id = _this;
    _arr = [];

	if (RPP_AcreEnabled) then {
		_acreID = [_id] call acre_api_fnc_getBaseRadio;

		if (typeName _acreID == "STRING") then {
			_id = _acreID;
		};
	};
    
    {
        _getID = (_x select 0);
          
        if (_id == _getID) exitWith
        {
            _arr = _x;
        };
    } forEach RPP_var_goods;

	if (count _arr == 0) then {
		_arr = "Null" call RPP_fnc_itemGetArray;	
	};
    
    _arr
};

RPP_fnc_itemGetAmount = 
{
    private ["_class", "_amount"];
    _class = _this;
    _amount = 0;
    {
        if (_x select 0 == _class) exitwith
        {
            _amount = _x select 1;
        }; 
    } forEach RPP_var_inventory;
    
    _amount
};

RPP_fnc_itemGetClass = 
{
    ((_this call RPP_fnc_itemGetArray) select 0)
};

RPP_fnc_itemGetType1 =
{
    (((_this call RPP_fnc_itemGetArray) select 1) select 0)
};

RPP_fnc_itemGetType2 =
{
    (((_this call RPP_fnc_itemGetArray) select 1) select 1)
};

RPP_fnc_itemGetName =
{
    (((_this call RPP_fnc_itemGetArray) select 2) select 0)
};

RPP_fnc_itemGetDesc =
{
    (((_this call RPP_fnc_itemGetArray) select 2) select 1)
};

RPP_fnc_itemGetBuyPrice =
{
    (((_this call RPP_fnc_itemGetArray) select 3) select 0)
};

RPP_fnc_itemGetSellPrice =
{
    (((_this call RPP_fnc_itemGetArray) select 3) select 1)
};

RPP_fnc_itemGetMass =
{
    ((_this call RPP_fnc_itemGetArray) select 4)
};

RPP_fnc_itemGetScript =
{
    ((_this call RPP_fnc_itemGetArray) select 5)
};

RPP_fnc_itemGetTrunkSize =
{
    ((_this call RPP_fnc_itemGetArray) select 6)
};

RPP_fnc_itemGetCanDrop =
{
    ((_this call RPP_fnc_itemGetArray) select 7)
};

RPP_fnc_itemGetFactoryCost = 
{
    ((_this call RPP_fnc_itemGetArray) select 8)
};

RPP_fnc_itemGetIllegal = 
{
    ((_this call RPP_fnc_itemGetArray) select 9)
};

RPP_fnc_itemGetSiren = 
{
    ((_this call RPP_fnc_itemGetArray) select 10)
};

