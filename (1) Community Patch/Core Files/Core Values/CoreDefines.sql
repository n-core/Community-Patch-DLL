-- These two entries control whether AI major civs and City-States are able to move their starting Settler(s) from their starting plot - set to 0 to disable the ability
-- NOTE: They can always move their starting Settler(s) if they're not able to found a city in their starting location
INSERT INTO Defines(Name, Value) SELECT 'MAJORS_CAN_MOVE_STARTING_SETTLER', 1;
INSERT INTO Defines(Name, Value) SELECT 'CS_CAN_MOVE_STARTING_SETTLER', 0;

-- If > -1, a player with no cities but who is still alive (Complete Kills) will be granted a free Settler after this many turns
INSERT INTO Defines(Name, Value) SELECT 'COMPLETE_KILLS_TURN_TIMER', -1;

-- Maximum number of Ideology Tenets of each Level that a Player can have (should correspond to the limitations put on human players by the Ideology Selection UI)
INSERT INTO Defines(Name, Value) SELECT 'MAX_NUM_TENETS_LEVEL_1', 7;
INSERT INTO Defines(Name, Value) SELECT 'MAX_NUM_TENETS_LEVEL_2', 4;
INSERT INTO Defines(Name, Value) SELECT 'MAX_NUM_TENETS_LEVEL_3', 3;

-- Can units that ignore ALL terrain costs cross rivers without expending additional movement? Doesn't affect trait abilities.
-- 1 to enable, 0 to disable
INSERT INTO Defines (Name, Value) SELECT 'IGNORE_GLOBAL_TERRAIN_COSTS_INCLUDES_RIVERS', 1;

-- Can units that ignore SPECIFIC terrain costs via UnitPromotions_Features or UnitPromotions_Terrains cross rivers without expending additional movement? Doesn't affect trait abilities.
-- 1 to enable, 0 to disable
INSERT INTO Defines (Name, Value) SELECT 'IGNORE_SPECIFIC_TERRAIN_COSTS_INCLUDES_RIVERS', 0;

-- Victory conditions
INSERT INTO Defines (Name, Value) SELECT 'VICTORY_DOMINATION_CONTROL_PERCENT', 100;

-- Number of rings a new city starts with
INSERT INTO Defines (Name, Value) SELECT 'CITY_STARTING_RINGS', 1;
INSERT INTO Defines (Name, Value) SELECT 'MAXIMUM_WORK_PLOT_DISTANCE', 3;

-- Base vision when embarked
UPDATE Defines SET Value = 1 WHERE Name = 'EMBARKED_VISIBILITY_RANGE';

-- Player Proximity Values
UPDATE Defines SET Value = 8 WHERE Name = 'PROXIMITY_NEIGHBORS_CLOSEST_CITY_REQUIREMENT';
UPDATE Defines SET Value = 16 WHERE Name = 'PROXIMITY_CLOSE_CLOSEST_CITY_POSSIBILITY';
UPDATE Defines SET Value = 24 WHERE Name = 'PROXIMITY_FAR_DISTANCE_MAX';
UPDATE Defines SET Value = 5 WHERE Name = 'AI_DIPLO_PLOT_RANGE_FROM_CITY_HOME_FRONT'; -- this is in plots

-- Minimum war duration for AI players
INSERT INTO Defines(Name, Value) SELECT 'WAR_MAJOR_MINIMUM_TURNS', 10;
INSERT INTO Defines(Name, Value) SELECT 'WAR_MINOR_MINIMUM_TURNS', 1;

-- City strength threshold used for some policy bonuses (VP)
INSERT INTO Defines(Name, Value) SELECT 'CITY_STRENGTH_THRESHOLD_FOR_BONUSES', 10;

-- Minimum war duration for aggressively attacked City-States (scales with game speed)
INSERT INTO Defines (Name, Value) SELECT 'WAR_MINOR_PEACE_BLOCKED_TURNS', 2;

-- Number of turns a pledge of protection is blocked for after breaking it (scales with game speed)
INSERT INTO Defines (Name, Value) SELECT 'PLEDGE_BROKEN_MINIMUM_TURNS', 20;
INSERT INTO Defines (Name, Value) SELECT 'PLEDGE_BROKEN_MINIMUM_TURNS_BULLYING', 0; -- After bullying (VP)


-- Defensive Pact limits (note that these values are updated in (2) Vox Populi)
INSERT INTO Defines (Name, Value) SELECT 'DEFENSIVE_PACT_LIMIT_BASE', 99; -- The base number of Defensive Pacts that a civilization can form. If set to -1 or lower, Defensive Pacts cannot be formed. Each player on a team counts as 1 Defensive Pact.
INSERT INTO Defines (Name, Value) SELECT 'DEFENSIVE_PACT_LIMIT_SCALER', 0; -- Additional number of Defensive Pacts permitted for each X other major civilizations ingame. 0 disables the scaler.
INSERT INTO Defines (Name, Value) SELECT 'AI_DEFENSIVE_PACT_LIMIT_BASE', 2; -- Limit for AI players. Only does anything if lower than the base limit.
INSERT INTO Defines (Name, Value) SELECT 'AI_DEFENSIVE_PACT_LIMIT_SCALER', 10; -- Limit for AI players. Only does anything if lower than the base limit.


-- Unit Supply
INSERT INTO Defines (Name, Value) SELECT 'MAX_UNIT_SUPPLY_GROWTH_MOD', 70;
INSERT INTO Defines (Name, Value) SELECT 'PRODUCTION_PENALTY_PER_UNIT_OVER_SUPPLY', 10;
INSERT INTO Defines (Name, Value) SELECT 'GROWTH_PENALTY_PER_UNIT_OVER_SUPPLY', 0;
INSERT INTO Defines (Name, Value) SELECT 'UNIT_SUPPLY_BASE_TECH_REDUCTION_PER_ERA', 0;
INSERT INTO Defines (Name, Value) SELECT 'UNIT_SUPPLY_CITIES_TECH_REDUCTION_MULTIPLIER', 0;
INSERT INTO Defines (Name, Value) SELECT 'UNIT_SUPPLY_POPULATION_TECH_REDUCTION_MULTIPLIER', 0;
INSERT INTO Defines (Name, Value) SELECT 'UNIT_SUPPLY_WAR_WEARINESS_PERCENT_REDUCTION', 34;
INSERT INTO Defines (Name, Value) SELECT 'UNIT_SUPPLY_POPULATION_PUPPET_PERCENT', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_UNIT_SUPPLY_MODIFIER_CULTURED', 0;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_UNIT_SUPPLY_MODIFIER_MILITARISTIC', 0;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_UNIT_SUPPLY_MODIFIER_MARITIME', 0;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_UNIT_SUPPLY_MODIFIER_MERCANTILE', 0;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_UNIT_SUPPLY_MODIFIER_RELIGIOUS', 0;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_UNIT_SUPPLY_MODIFIER_FRIENDLY', 0;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_UNIT_SUPPLY_MODIFIER_NEUTRAL', 0;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_UNIT_SUPPLY_MODIFIER_HOSTILE', 0;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_UNIT_SUPPLY_MODIFIER_IRRATIONAL', 0;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_UNIT_SUPPLY_MULTIPLIER_PER_EXTRA_CITY', 0;

INSERT INTO Defines (Name, Value) SELECT 'UNIT_COST_WAR_WEARINESS_PERCENT_INCREASE', 75;


-- Great People Stuff
INSERT INTO Defines (Name, Value) SELECT 'MINIMUM_TOURISM_BLAST_STRENGTH', 100;


-- Additional Yield Modifiers for Puppets
INSERT INTO Defines (Name, Value) SELECT 'PUPPET_GROWTH_MODIFIER', 0;
INSERT INTO Defines (Name, Value) SELECT 'PUPPET_PRODUCTION_MODIFIER', 0;
INSERT INTO Defines (Name, Value) SELECT 'PUPPET_GOLDEN_AGE_MODIFIER', 0;
INSERT INTO Defines (Name, Value) SELECT 'PUPPET_TOURISM_MODIFIER', 0;


-- Golden Age Stuff
INSERT INTO Defines (Name, Value) SELECT 'GOLDEN_AGE_BASE_THRESHOLD_INITIAL', 500;
UPDATE Defines SET Value = 1 WHERE Name = 'GOLDEN_AGE_THRESHOLD_CITY_MULTIPLIER';


-- Combat Stuff
UPDATE Defines SET Value = 5 WHERE Name = 'AI_TACTICAL_MAP_TEMP_ZONE_TURNS'; -- Number of turns AI waits while recruiting before disbanding an operation
UPDATE Defines SET Value = 10 WHERE Name = 'AI_OPERATIONAL_MAX_RECRUIT_TURNS_ENEMY_TERRITORY'; -- ...in enemy territory
UPDATE Defines SET Value = 70 WHERE Name = 'AI_OPERATIONAL_PERCENT_HEALTH_FOR_OPERATION';
UPDATE Defines SET Value = 70 WHERE Name = 'AI_TACTICAL_MAP_DOMINANCE_PERCENTAGE';
UPDATE Defines SET Value = 5 WHERE Name = 'AI_HOMELAND_GREAT_PERSON_TURNS_TO_WAIT';

INSERT INTO Defines (Name, Value) SELECT 'BALANCE_BASIC_ATTACK_ARMY_SIZE', 6;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_ARMY_NAVY_START_SIZE', 3;
INSERT INTO Defines(Name, Value) SELECT 'AI_CONFIG_MILITARY_MELEE_PER_AA', 2; -- Number of melee units per AA unit before the AI considers that they have enough
INSERT INTO Defines(Name, Value) SELECT 'AI_CONFIG_MILITARY_TILES_PER_SHIP', 6; -- Number of water tiles per ship for (small?) bodies of water

UPDATE Defines SET Value = -40 WHERE Name = 'CITY_RANGED_ATTACK_STRENGTH_MULTIPLIER';
INSERT INTO Defines(Name, Value) SELECT 'BLOCKADED_CITY_ATTACK_MODIFIER', 0;

-- Combat mechanic changes that are considered "core"
UPDATE Defines SET Value = -50 WHERE Name = 'AIR_SWEEP_INTERCEPTION_DAMAGE_MOD';
UPDATE Defines SET Value = 10 WHERE Name = 'BONUS_PER_ADJACENT_FRIEND';

-- CP changed the wounded penalty from damage penalty to CS penalty. Adjust accordingly so it's actually 1% per 3HP lost.
UPDATE Defines SET Value = 34 WHERE Name = 'WOUNDED_DAMAGE_MULTIPLIER';

-- AI combat tuning knobs

-- this controls how much damage an attack needs to inflict to be considered worthwhile
-- default value 100. higher -> more aggressive
INSERT INTO Defines(Name, Value) SELECT 'COMBAT_AI_OFFENSE_DAMAGEWEIGHT', 100;

-- this controls whether ending the turn on a certain plot is acceptable (defense and offense)
-- default value 100. higher -> more timid
INSERT INTO Defines(Name, Value) SELECT 'COMBAT_AI_OFFENSE_DANGERWEIGHT', 100;

-- this controls whether a 'bad' offensive move should still be considered
-- default value 20. higher -> more reckless
INSERT INTO Defines(Name, Value) SELECT 'COMBAT_AI_OFFENSE_SCORE_BIAS', 20;

-- this controls whether a 'bad' defensive move should still be considered
-- default value 200. higher -> more desperate
INSERT INTO Defines(Name, Value) SELECT 'COMBAT_AI_DEFENSE_SCORE_BIAS', 200;


-- City Revolt Timer
UPDATE Defines SET Value = 10 WHERE Name = 'REVOLT_COUNTER_MIN';

-- WLTKD Reset Timer (<= 0 means disabled); scales with game speed
INSERT INTO Defines (Name, Value) SELECT 'WLTKD_RESOURCE_RESET_TURNS', 0;

-- Religion Spread Rework
UPDATE Defines SET Value = 9 WHERE Name = 'RELIGION_ADJACENT_CITY_DISTANCE';
INSERT INTO Defines(Name, Value) SELECT 'INQUISITION_EFFECTIVENESS', 100; -- expected value between 1 and 100. percentage of heretics' pressure to be removed by inquisitors. does not affect prophets.
INSERT INTO Defines(Name, Value) SELECT 'INQUISITOR_CONVERSION_REDUCTION_FACTOR', 2; -- only relevant if MOD_BALANCE_CORE_INQUISITOR_TWEAKS is active. divides missionary and prophet conversion strength by this number if an Inquisitor is defending the target city.
INSERT INTO Defines(Name, Value) SELECT 'RELIGION_MAXIMUM_FIXED_AMOUNT', 1; -- this number is added to the religion maximum (VP only)
INSERT INTO Defines(Name, Value) SELECT 'RELIGION_MAXIMUM_PER_PLAYER_DIVISOR', 200; -- the number of majors in the game * 100 / this number is added to the religion maximum (VP only)
INSERT INTO Defines(Name, Value) SELECT 'RELIGION_MAXIMUM_CAP', 8; -- cap on religion maximum (VP only)

-- Trade Stuff
INSERT INTO Defines (Name, Value) SELECT 'OPEN_BORDERS_MODIFIER_TRADE_GOLD', 20; -- Open Borders Trade Gold Value (halved if not mutual)
UPDATE Defines SET Value = 5 WHERE Name = 'EACH_GOLD_PER_TURN_VALUE_PERCENT'; -- Gold Per Turn Interest Rate for Trade Valuation

UPDATE Defines SET Value = 200 WHERE Name = 'DEMAND_LIMIT_MAX_VALUE'; -- maximum amount of gold that can be asked from the AI / that the AI can ask for when making demands
UPDATE Defines SET Value = 20 WHERE Name = 'DEMAND_LIMIT_GAMEPROGRESS_SCALING'; -- scaling factor of DEMAND_LIMIT_MAX_VALUE over the course of the game (the max demand value is DEMAND_LIMIT_MAX_VALUE * (1 + GameProgress * DEMAND_LIMIT_GAMEPROGRESS_SCALING), with GameProgress the percentage of researched techs)

-- City-State Stuff
UPDATE Defines SET Value = 120 WHERE Name = 'MINOR_CIV_GOLD_PERCENT'; -- CS buff to keep up with AI
UPDATE Defines SET Value = 40 WHERE Name = 'PERMANENT_WAR_AGGRESSOR_CHANCE';
UPDATE Defines SET Value = 20 WHERE Name = 'PERMANENT_WAR_OTHER_WARMONGER_CHANCE_DISTANT';
UPDATE Defines SET Value = 30 WHERE Name = 'PERMANENT_WAR_OTHER_WARMONGER_CHANCE_FAR';
UPDATE Defines SET Value = 50 WHERE Name = 'PERMANENT_WAR_OTHER_WARMONGER_CHANCE_CLOSE';
UPDATE Defines SET Value = 60 WHERE Name = 'PERMANENT_WAR_OTHER_WARMONGER_CHANCE_NEIGHBORS';
UPDATE Defines SET Value = 10 WHERE Name = 'PERMANENT_WAR_OTHER_CHANCE_DISTANT';
UPDATE Defines SET Value = 15 WHERE Name = 'PERMANENT_WAR_OTHER_CHANCE_FAR';
UPDATE Defines SET Value = 20 WHERE Name = 'PERMANENT_WAR_OTHER_CHANCE_CLOSE';
UPDATE Defines SET Value = 25 WHERE Name = 'PERMANENT_WAR_OTHER_CHANCE_NEIGHBORS';
UPDATE Defines SET Value = 20 WHERE Name = 'PERMANENT_WAR_OTHER_AT_WAR';
INSERT INTO Defines (Name, Value) SELECT 'MINOR_REMOVE_SPHERE_FRIENDSHIP', 0;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_LIBERATION_RESTING_INFLUENCE', 0;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_LANDMARK_RESTING_INFLUENCE', 0; -- scales with era; set to 0 to disable all effects
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_ROUTE_MAXIMUM_DISTANCE', 7;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_WONDER_COMPLETION_MAX_TURNS', 30;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_FIND_CITY_MIN_DISTANCE', 16;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_ARCHAEOLOGY_RANGE', 12;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_ACQUIRE_CITY_MINIMUM_POP', 6;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_ACQUIRE_CITY_MINIMUM_TURNS', 10;


-- Settler Stuff
UPDATE Defines SET Value = 5 WHERE Name = 'SETTLER_DISTANCE_DROPOFF_MODIFIER'; -- Start of settle plot devaluation (prefer close settling)
UPDATE Defines SET Value = 10 WHERE Name = 'SETTLER_EVALUATION_DISTANCE'; -- Max range for settling (unless offshore; time offset will be added)
UPDATE Defines SET Value = 6 WHERE Name = 'CITY_RING_1_MULTIPLIER'; -- there are 6 ring1 plots but don't overemphasize the very short term
UPDATE Defines SET Value = 6 WHERE Name = 'CITY_RING_2_MULTIPLIER'; -- there are 12 ring2 plots, workable soon
UPDATE Defines SET Value = 3 WHERE Name = 'CITY_RING_3_MULTIPLIER'; -- there are 18 ring3 plots, workable late and often conflicted
UPDATE Defines SET Value = 12 WHERE Name = 'SETTLER_FOOD_MULTIPLIER';
UPDATE Defines SET Value = 8 WHERE Name = 'SETTLER_PRODUCTION_MULTIPLIER';
UPDATE Defines SET Value = 8 WHERE Name = 'SETTLER_GOLD_MULTIPLIER';
UPDATE Defines SET Value = 5 WHERE Name = 'SETTLER_SCIENCE_MULTIPLIER';
UPDATE Defines SET Value = 4 WHERE Name = 'SETTLER_FAITH_MULTIPLIER';
UPDATE Defines SET Value = 35 WHERE Name = 'BUILD_ON_RIVER_PERCENT';
UPDATE Defines SET Value = 40 WHERE Name = 'SETTLER_BUILD_ON_COAST_PERCENT';
UPDATE Defines SET Value = -10 WHERE Name = 'BUILD_ON_RESOURCE_PERCENT';
UPDATE Defines SET Value = 3 WHERE Name = 'SETTLER_STRATEGIC_MULTIPLIER';
UPDATE Defines SET Value = 10 WHERE Name = 'CHOKEPOINT_STRATEGIC_VALUE';
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_BAD_TILES_STRATEGIC_VALUE', -34;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_FRESH_WATER_STRATEGIC_VALUE', 5;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_COAST_STRATEGIC_VALUE', 3;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_EMPIRE_BORDERLAND_STRATEGIC_VALUE', 30;

-- Worker Stuff
UPDATE Defines SET Value = 3 WHERE Name = 'BUILDER_TASKING_PLOT_EVAL_MULTIPLIER_FOOD';
UPDATE Defines SET Value = 2 WHERE Name = 'BUILDER_TASKING_PLOT_EVAL_MULTIPLIER_PRODUCTION';
UPDATE Defines SET Value = 2 WHERE Name = 'BUILDER_TASKING_PLOT_EVAL_MULTIPLIER_GOLD';
UPDATE Defines SET Value = 2 WHERE Name = 'BUILDER_TASKING_PLOT_EVAL_MULTIPLIER_SCIENCE';
UPDATE Defines SET Value = 3 WHERE Name = 'BUILDER_TASKING_PLOT_EVAL_MULTIPLIER_CULTURE';
UPDATE Defines SET Value = 1000 WHERE Name = 'BUILDER_TASKING_BASELINE_REPAIR';
UPDATE Defines SET Value = 750 WHERE Name = 'BUILDER_TASKING_BASELINE_BUILD_ROUTES';
UPDATE Defines SET Value = 300 WHERE Name = 'BUILDER_TASKING_BASELINE_BUILD_RESOURCE_IMPROVEMENTS';
UPDATE Defines SET Value = 100 WHERE Name = 'BUILDER_TASKING_BASELINE_BUILD_IMPROVEMENTS';
INSERT INTO Defines (Name, Value) SELECT 'BUILDER_TASKING_BASELINE_ADDS_FOOD', 180;
INSERT INTO Defines (Name, Value) SELECT 'BUILDER_TASKING_BASELINE_ADDS_GOLD', 80;
INSERT INTO Defines (Name, Value) SELECT 'BUILDER_TASKING_BASELINE_ADDS_FAITH', 200;
INSERT INTO Defines (Name, Value) SELECT 'BUILDER_TASKING_BASELINE_ADDS_PRODUCTION', 180;
INSERT INTO Defines (Name, Value) SELECT 'BUILDER_TASKING_BASELINE_ADDS_SCIENCE', 200;
INSERT INTO Defines (Name, Value) SELECT 'BUILDER_TASKING_BASELINE_ADDS_TOURISM', 200;
INSERT INTO Defines (Name, Value) SELECT 'BUILDER_TASKING_BASELINE_ADDS_CULTURE_LOCAL', 100;
INSERT INTO Defines (Name, Value) SELECT 'BUILDER_TASKING_BASELINE_ADDS_GOLDEN_AGE_POINTS', 200;
UPDATE Defines SET Value = 200 WHERE Name = 'BUILDER_TASKING_BASELINE_ADDS_CULTURE';

-- Scouts
INSERT INTO Defines (Name, Value) SELECT 'MAX_PLOTS_PER_EXPLORER', 20; -- Recon unit calculations

-- Automations
INSERT INTO Defines (Name, Value) SELECT 'UNIT_AUTO_EXTRA_AUTOMATIONS_DISABLED', 0;


-- Tech Stuff
UPDATE Defines SET Value = 0.035 WHERE Name = 'AI_RESEARCH_WEIGHT_MOD_PER_TURN_LEFT';
UPDATE Defines SET Value = 0.2 WHERE Name = 'AI_RESEARCH_WEIGHT_BASE_MOD';
UPDATE Defines SET Value = 25 WHERE Name = 'TECH_PRIORITY_UNIQUE_ITEM'; -- emphasis on uniques - changed formula

-- Policy Stuff
UPDATE Defines SET Value = 90 WHERE Name = 'POLICY_WEIGHT_PERCENT_DROP_NEW_BRANCH';
UPDATE Defines SET Value = 45 WHERE Name = 'IDEOLOGY_SCORE_PER_FREE_TENET';
UPDATE Defines SET Value = 10 WHERE Name = 'IDEOLOGY_SCORE_HAPPINESS';
UPDATE Defines SET Value = 1000 WHERE Name = 'IDEOLOGY_SCORE_GRAND_STRATS';
UPDATE Defines SET Value = 500 WHERE Name = 'IDEOLOGY_SCORE_HOSTILE';
UPDATE Defines SET Value = 250 WHERE Name = 'IDEOLOGY_SCORE_GUARDED';
UPDATE Defines SET Value = 150 WHERE Name = 'IDEOLOGY_SCORE_AFRAID';
UPDATE Defines SET Value = 25 WHERE Name = 'IDEOLOGY_SCORE_FRIENDLY';

-- Religion Stuff
UPDATE Defines SET Value = 2 WHERE Name = 'RELIGION_MAX_MISSIONARIES';
UPDATE Defines SET Value = 20 WHERE Name = 'RELIGION_MISSIONARY_RANGE_IN_TURNS';
UPDATE Defines SET Value = 6 WHERE Name = 'RELIGION_BELIEF_SCORE_CITY_MULTIPLIER';
UPDATE Defines SET Value = 4 WHERE Name = 'RELIGION_BELIEF_SCORE_UNOWNED_PLOT_MULTIPLIER'; -- Unowned but in range more valuable than before to make sure AI knows it's in a good position
UPDATE Defines SET Value = 8 WHERE Name = 'RELIGION_BELIEF_SCORE_OWNED_PLOT_MULTIPLIER'; -- Owned slightly more valuable than before

-- Tourism Stuff
UPDATE Defines SET Value = 25 WHERE Name = 'TOURISM_MODIFIER_SHARED_RELIGION'; -- percentage
INSERT INTO Defines (Name, Value) SELECT 'TOURISM_MODIFIER_SHARED_RELIGION_MAX', 0; -- maximum base percentage allowed (0 is no max)
INSERT INTO Defines (Name, Value) SELECT 'TOURISM_MODIFIER_SHARED_RELIGION_TYPE', 0; -- 0 = no scaling, 1 = scaling per city, 2 = scaling per population

-- AI Grand Strategy
UPDATE Defines SET Value = 10 WHERE Name = 'AI_GRAND_STRATEGY_NUM_TURNS_STRATEGY_MUST_BE_ACTIVE';
UPDATE Defines SET Value = 50 WHERE Name = 'AI_GRAND_STRATEGY_CURRENT_STRATEGY_WEIGHT';
UPDATE Defines SET Value = -100 WHERE Name = 'AI_GRAND_STRATEGY_CONQUEST_NOBODY_MET_WEIGHT';
UPDATE Defines SET Value = 600 WHERE Name = 'AI_GS_SS_TECH_PROGRESS_MOD';
UPDATE Defines SET Value = 60 WHERE Name = 'AI_GS_CULTURE_RATIO_MULTIPLIER';
UPDATE Defines SET Value = 80 WHERE Name = 'AI_GS_TOURISM_RATIO_MULTIPLIER';
UPDATE Defines SET Value = 33 WHERE Name = 'AI_GRAND_STRATEGY_OTHER_PLAYERS_GS_MULTIPLIER';
UPDATE Defines SET Value = 150 WHERE Name = 'AI_GRAND_STRATEGY_GUESS_POSITIVE_THRESHOLD';
UPDATE Defines SET Value = 80 WHERE Name = 'AI_GRAND_STRATEGY_GUESS_LIKELY_THRESHOLD';

-- AI City Specialization
UPDATE Defines SET Value = 35 WHERE Name = 'AI_CITY_SPECIALIZATION_REEVALUATION_INTERVAL';
UPDATE Defines SET Value = 20 WHERE Name = 'AI_CITY_SPECIALIZATION_PRODUCTION_WEIGHT_OPERATIONAL_UNITS_REQUESTED'; 
UPDATE Defines SET Value = 150 WHERE Name = 'AI_CITY_SPECIALIZATION_PRODUCTION_WEIGHT_CIVS_AT_WAR_WITH'; 
UPDATE Defines SET Value = 250 WHERE Name = 'AI_CITY_SPECIALIZATION_PRODUCTION_WEIGHT_WAR_MOBILIZATION'; 
UPDATE Defines SET Value = 250 WHERE Name = 'AI_CITY_SPECIALIZATION_PRODUCTION_WEIGHT_EMPIRE_DEFENSE'; 
UPDATE Defines SET Value = 1250 WHERE Name = 'AI_CITY_SPECIALIZATION_PRODUCTION_WEIGHT_EMPIRE_DEFENSE_CRITICAL'; 
UPDATE Defines SET Value = 250 WHERE Name = 'AI_CITY_SPECIALIZATION_PRODUCTION_WEIGHT_FLAVOR_WONDER';

-- Citizen allocation
-- should all be in the same ballpark, specialization decides which yield to maximize; food is always highly valued when needed
UPDATE Defines SET Value = 8 WHERE Name = 'AI_CITIZEN_VALUE_FOOD';
UPDATE Defines SET Value = 12 WHERE Name = 'AI_CITIZEN_VALUE_PRODUCTION';
UPDATE Defines SET Value = 12 WHERE Name = 'AI_CITIZEN_VALUE_GOLD';
UPDATE Defines SET Value = 20 WHERE Name = 'AI_CITIZEN_VALUE_SCIENCE';
UPDATE Defines SET Value = 20 WHERE Name = 'AI_CITIZEN_VALUE_CULTURE';
UPDATE Defines SET Value = 20 WHERE Name = 'AI_CITIZEN_VALUE_FAITH';

INSERT INTO Defines (Name, Value) SELECT 'AI_CITIZEN_VALUE_GPP', 8;
INSERT INTO Defines (Name, Value) SELECT 'AI_CITIZEN_VALUE_FOOD_NEED_GROWTH', 32;
INSERT INTO Defines (Name, Value) SELECT 'AI_CITIZEN_VALUE_FOOD_STARVING', 500;

INSERT INTO Defines (Name, Value) SELECT 'AI_CITIZEN_VALUE_GOLD_IN_DEBT', 24;
INSERT INTO Defines (Name, Value) SELECT 'AI_CITIZEN_SPECIALIST_COMBO_BONUS', 1000;
INSERT INTO Defines (Name, Value) SELECT 'AI_CITIZEN_UNHAPPINESS_VALUE_EMPIRE_VERY_UNHAPPY', -50000;
INSERT INTO Defines (Name, Value) SELECT 'AI_CITIZEN_UNHAPPINESS_VALUE_EMPIRE_UNHAPPY', -15000;
INSERT INTO Defines (Name, Value) SELECT 'AI_CITIZEN_UNHAPPINESS_VALUE_CITY_UNHAPPY', -5000;
INSERT INTO Defines (Name, Value) SELECT 'AI_CITIZEN_UNHAPPINESS_VALUE_EMPIRE_HAPPY', -2000;


-- AI City Strategy
UPDATE Defines SET Value = 7 WHERE Name = 'AI_CITYSTRATEGY_MEDIUM_CITY_POP_THRESHOLD';
UPDATE Defines SET Value = 15 WHERE Name = 'AI_CITYSTRATEGY_LARGE_CITY_POP_THRESHOLD';
UPDATE Defines SET Value = 5000 WHERE Name = 'AI_CITYSTRATEGY_OPERATION_UNIT_BASE_WEIGHT';
UPDATE Defines SET Value = 0.5 WHERE Name = 'AI_CITYSTRATEGY_YIELD_DEFICIENT_FOOD'; -- food is different because we include consumption.
UPDATE Defines SET Value = 1.0 WHERE Name = 'AI_CITYSTRATEGY_YIELD_DEFICIENT_PRODUCTION';
UPDATE Defines SET Value = 1.5 WHERE Name = 'AI_CITYSTRATEGY_YIELD_DEFICIENT_GOLD';
UPDATE Defines SET Value = 2.5 WHERE Name = 'AI_CITYSTRATEGY_YIELD_DEFICIENT_SCIENCE';
INSERT INTO Defines (Name, Value) SELECT 'AI_CITYSTRATEGY_YIELD_DEFICIENT_CULTURE', 2.5;
INSERT INTO Defines (Name, Value) SELECT 'AI_CITYSTRATEGY_YIELD_DEFICIENT_FAITH', 2.5;
UPDATE Defines SET Value = 3 WHERE Name = 'AI_CITYSTRATEGY_WANT_TILE_IMPROVERS_MINIMUM_SIZE';
UPDATE AICityStrategies SET WeightThreshold = 1 WHERE Type = 'AICITYSTRATEGY_WANT_TILE_IMPROVERS';

-- Number of cities the AI considers as core production cities for spaceship building
INSERT INTO Defines (Name, Value) SELECT 'AI_NUM_CORE_CITIES_FOR_SPACESHIP', 4;

-- AI Player Strategy
UPDATE Defines SET Value = 20 WHERE Name = 'AI_STRATEGY_EARLY_EXPANSION_NUM_UNOWNED_TILES_REQUIRED'; -- Was 25 before, making the AI miss out on possible good city spots just because there might be cities nearby

-- AI City Conquest logic: used when AI conquers a city and is deciding what to do with it
INSERT INTO Defines(Name, Value) SELECT 'AI_CITY_VALUE_MULTIPLIER', 100;
INSERT INTO Defines(Name, Value) SELECT 'AI_CAPITAL_VALUE_MULTIPLIER', 150;
INSERT INTO Defines(Name, Value) SELECT 'AI_MOSTLY_HAPPY_THRESHOLD', 40;
INSERT INTO Defines(Name, Value) SELECT 'AI_CITY_HIGH_VALUE_THRESHOLD', 80;
INSERT INTO Defines(Name, Value) SELECT 'AI_CITY_SOME_VALUE_THRESHOLD', 40;
INSERT INTO Defines(Name, Value) SELECT 'AI_CITY_PUPPET_BONUS_THRESHOLD', 25;

-- AI World Congress logic
INSERT INTO Defines (Name, Value) SELECT 'AI_WORLD_LEADER_BASE_WEIGHT_SELF', 1000;

-- AI purchase logic
INSERT INTO Defines (Name, Value) SELECT 'AI_GOLD_TREASURY_BUFFER', 150;
UPDATE Defines SET Value = 250 WHERE Name = 'AI_GOLD_PRIORITY_DEFENSIVE_BUILDING'; -- No idea why this was so high by default, spending gold on defensive buildings seems like a waste unless it's an emergency
UPDATE Defines SET Value = 500 WHERE Name = 'AI_GOLD_PRIORITY_UPGRADE_BASE';
UPDATE Defines SET Value = 100 WHERE Name = 'AI_GOLD_PRIORITY_UPGRADE_PER_FLAVOR_POINT';
UPDATE Defines SET Value = 80 WHERE Name = 'AI_PLOT_VALUE_STRATEGIC_RESOURCE'; -- Now equal to the luxury resource plot bonus (for luxuries we don't have yet)
UPDATE Defines SET Value = 150 WHERE Name = 'AI_GOLD_PRIORITY_MINIMUM_PLOT_BUY_VALUE';

-- City Growth Multiplier is a float
UPDATE Defines SET Value = 8.0 WHERE Name = 'CITY_GROWTH_MULTIPLIER';

-- Personality Flavors
UPDATE Defines SET Value = 1 WHERE Name = 'PERSONALITY_FLAVOR_MIN_VALUE';


-- Diplomacy Values

-- War Damage Values
UPDATE Defines SET Value = 175 WHERE Name = 'WAR_DAMAGE_LEVEL_CITY_WEIGHT';
UPDATE Defines SET Value = 150 WHERE Name = 'WAR_DAMAGE_LEVEL_INVOLVED_CITY_POP_MULTIPLIER';
INSERT INTO Defines (Name, Value) SELECT 'WAR_DAMAGE_LEVEL_WORLD_WONDER_MULTIPLIER', 200;
INSERT INTO Defines (Name, Value) SELECT 'PILLAGED_TILE_BASE_WAR_VALUE', 40;
INSERT INTO Defines (Name, Value) SELECT 'STOLEN_TILE_BASE_WAR_VALUE', 80;

-- War Damage Thresholds (used in the UI only)
UPDATE Defines SET Value = 15 WHERE Name = 'WAR_DAMAGE_LEVEL_THRESHOLD_MINOR';
UPDATE Defines SET Value = 30 WHERE Name = 'WAR_DAMAGE_LEVEL_THRESHOLD_MAJOR';
UPDATE Defines SET Value = 50 WHERE Name = 'WAR_DAMAGE_LEVEL_THRESHOLD_SERIOUS';
UPDATE Defines SET Value = 70 WHERE Name = 'WAR_DAMAGE_LEVEL_THRESHOLD_CRIPPLED';

-- Aggressive Postures
UPDATE Defines SET Value = 30 WHERE Name = 'EXPANSION_BICKER_TIMEOUT';
INSERT INTO Defines (Name, Value) SELECT 'EXPANSION_BICKER_RANGE_HIGH', 7;
INSERT INTO Defines (Name, Value) SELECT 'EXPANSION_BICKER_RANGE_MEDIUM', 6;
INSERT INTO Defines (Name, Value) SELECT 'EXPANSION_BICKER_RANGE_LOW', 5;

UPDATE Defines SET Value = 12 WHERE Name = 'PLOT_BUYING_POSTURE_INCREDIBLE_THRESHOLD';
UPDATE Defines SET Value = 9 WHERE Name = 'PLOT_BUYING_POSTURE_HIGH_THRESHOLD';
UPDATE Defines SET Value = 5 WHERE Name = 'PLOT_BUYING_POSTURE_MEDIUM_THRESHOLD';
UPDATE Defines SET Value = 3 WHERE Name = 'PLOT_BUYING_POSTURE_LOW_THRESHOLD';

UPDATE Defines SET Value = 12 WHERE Name = 'MILITARY_AGGRESSIVE_POSTURE_THRESHOLD_INCREDIBLE';
UPDATE Defines SET Value = 8 WHERE Name = 'MILITARY_AGGRESSIVE_POSTURE_THRESHOLD_HIGH';
UPDATE Defines SET Value = 6 WHERE Name = 'MILITARY_AGGRESSIVE_POSTURE_THRESHOLD_MEDIUM';
UPDATE Defines SET Value = 2 WHERE Name = 'MILITARY_AGGRESSIVE_POSTURE_THRESHOLD_LOW';

-- Dispute Levels
UPDATE Defines SET Value = 8 WHERE Name = 'LAND_DISPUTE_FIERCE_THRESHOLD';
UPDATE Defines SET Value = 4 WHERE Name = 'LAND_DISPUTE_STRONG_THRESHOLD';
UPDATE Defines SET Value = 1 WHERE Name = 'LAND_DISPUTE_WEAK_THRESHOLD';
UPDATE Defines SET Value = 50 WHERE Name = 'LAND_DISPUTE_CRAMPED_MULTIPLIER';

UPDATE Defines SET Value = 24 WHERE Name = 'WONDER_DISPUTE_FIERCE_THRESHOLD';
UPDATE Defines SET Value = 12 WHERE Name = 'WONDER_DISPUTE_STRONG_THRESHOLD';
UPDATE Defines SET Value = 1 WHERE Name = 'WONDER_DISPUTE_WEAK_THRESHOLD';

UPDATE Defines SET Value = 1400 WHERE Name = 'MINOR_CIV_DISPUTE_FIERCE_THRESHOLD';
UPDATE Defines SET Value = 1000 WHERE Name = 'MINOR_CIV_DISPUTE_STRONG_THRESHOLD';
UPDATE Defines SET Value = 700 WHERE Name = 'MINOR_CIV_DISPUTE_WEAK_THRESHOLD';

UPDATE Defines SET Value = 25 WHERE Name = 'VICTORY_DISPUTE_GRAND_STRATEGY_MATCH_POSITIVE';
UPDATE Defines SET Value = 15 WHERE Name = 'VICTORY_DISPUTE_GRAND_STRATEGY_MATCH_LIKELY';
UPDATE Defines SET Value = 5 WHERE Name = 'VICTORY_DISPUTE_GRAND_STRATEGY_MATCH_UNSURE';

INSERT INTO Defines (Name, Value) SELECT 'VICTORY_BLOCK_FIERCE_THRESHOLD', 40;
INSERT INTO Defines (Name, Value) SELECT 'VICTORY_BLOCK_STRONG_THRESHOLD', 30;
INSERT INTO Defines (Name, Value) SELECT 'VICTORY_BLOCK_WEAK_THRESHOLD', 20;
INSERT INTO Defines (Name, Value) SELECT 'VICTORY_BLOCK_GRAND_STRATEGY_DIFFERENCE_POSITIVE', 20;
INSERT INTO Defines (Name, Value) SELECT 'VICTORY_BLOCK_GRAND_STRATEGY_DIFFERENCE_LIKELY', 15;
INSERT INTO Defines (Name, Value) SELECT 'VICTORY_BLOCK_GRAND_STRATEGY_DIFFERENCE_UNSURE', 5;

INSERT INTO Defines (Name, Value) SELECT 'TECH_BLOCK_FIERCE_THRESHOLD', 30;
INSERT INTO Defines (Name, Value) SELECT 'TECH_BLOCK_STRONG_THRESHOLD', 20;
INSERT INTO Defines (Name, Value) SELECT 'TECH_BLOCK_WEAK_THRESHOLD', 10;

INSERT INTO Defines (Name, Value) SELECT 'POLICY_BLOCK_FIERCE_THRESHOLD', 24;
INSERT INTO Defines (Name, Value) SELECT 'POLICY_BLOCK_STRONG_THRESHOLD', 16;
INSERT INTO Defines (Name, Value) SELECT 'POLICY_BLOCK_WEAK_THRESHOLD', 8;

-- Skill Rating Calculation
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_RATING_STARTING_VALUE', 1000;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_RATING_PER_ADVANCED_START_ERA', 1000;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_RATING_MAXIMUM_BONUS', 100;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_RATING_MAXIMUM_PENALTY', -50;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_RATING_HUMAN_BUFFER_VALUE_PERCENT', 80;

-- Comparative Strength Evaluations
UPDATE Defines SET Value = 300 WHERE Name = 'ECONOMIC_STRENGTH_IMMENSE_THRESHOLD';
UPDATE Defines SET Value = 200 WHERE Name = 'ECONOMIC_STRENGTH_POWERFUL_THRESHOLD';
UPDATE Defines SET Value = 126 WHERE Name = 'ECONOMIC_STRENGTH_STRONG_THRESHOLD';
UPDATE Defines SET Value = 75 WHERE Name = 'ECONOMIC_STRENGTH_AVERAGE_THRESHOLD';
UPDATE Defines SET Value = 50 WHERE Name = 'ECONOMIC_STRENGTH_POOR_THRESHOLD';
UPDATE Defines SET Value = 33 WHERE Name = 'ECONOMIC_STRENGTH_WEAK_THRESHOLD';

INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_REDUCTION_PER_BOLDNESS', -3;
UPDATE Defines SET Value = 300 WHERE Name = 'MILITARY_STRENGTH_IMMENSE_THRESHOLD';
UPDATE Defines SET Value = 200 WHERE Name = 'MILITARY_STRENGTH_POWERFUL_THRESHOLD';
UPDATE Defines SET Value = 126 WHERE Name = 'MILITARY_STRENGTH_STRONG_THRESHOLD';
UPDATE Defines SET Value = 75 WHERE Name = 'MILITARY_STRENGTH_AVERAGE_THRESHOLD';
UPDATE Defines SET Value = 50 WHERE Name = 'MILITARY_STRENGTH_POOR_THRESHOLD';
UPDATE Defines SET Value = 33 WHERE Name = 'MILITARY_STRENGTH_WEAK_THRESHOLD';

INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MINOR_BACKUP_IMMENSE', 50;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MINOR_BACKUP_POWERFUL', 35;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MINOR_BACKUP_STRONG', 25;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MINOR_BACKUP_AVERAGE', 15;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MINOR_BACKUP_POOR', 0;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MINOR_BACKUP_WEAK', 0;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MINOR_BACKUP_PATHETIC', 0;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MINOR_BACKUP_NEIGHBORS', 100;

INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MAJOR_BACKUP_IMMENSE', 50;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MAJOR_BACKUP_POWERFUL', 35;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MAJOR_BACKUP_STRONG', 25;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MAJOR_BACKUP_AVERAGE', 15;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MAJOR_BACKUP_POOR', 10;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MAJOR_BACKUP_WEAK', 5;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MAJOR_BACKUP_PATHETIC', 0;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MAJOR_BACKUP_NEIGHBORS', 200;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MAJOR_BACKUP_CLOSE', 100;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MAJOR_BACKUP_FAR', 50;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_MAJOR_BACKUP_DISTANT', 0;

INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_BACKUP_ALREADY_WAR_EACH_PLAYER', 30;
INSERT INTO Defines (Name, Value) SELECT 'MILITARY_STRENGTH_BACKUP_ALREADY_WAR_MINIMUM', 20;

UPDATE Defines SET Value = 50 WHERE Name = 'TARGET_MINOR_BACKUP_IMMENSE';
UPDATE Defines SET Value = 35 WHERE Name = 'TARGET_MINOR_BACKUP_POWERFUL';
UPDATE Defines SET Value = 25 WHERE Name = 'TARGET_MINOR_BACKUP_STRONG';
UPDATE Defines SET Value = 15 WHERE Name = 'TARGET_MINOR_BACKUP_AVERAGE';
UPDATE Defines SET Value = 0 WHERE Name = 'TARGET_MINOR_BACKUP_POOR';
UPDATE Defines SET Value = 0 WHERE Name = 'TARGET_MINOR_BACKUP_WEAK';
UPDATE Defines SET Value = 0 WHERE Name = 'TARGET_MINOR_BACKUP_PATHETIC';
UPDATE Defines SET Value = 100 WHERE Name = 'TARGET_MINOR_BACKUP_NEIGHBORS';

INSERT INTO Defines (Name, Value) SELECT 'TARGET_MAJOR_BACKUP_IMMENSE', 50;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_MAJOR_BACKUP_POWERFUL', 35;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_MAJOR_BACKUP_STRONG', 25;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_MAJOR_BACKUP_AVERAGE', 15;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_MAJOR_BACKUP_POOR', 10;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_MAJOR_BACKUP_WEAK', 5;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_MAJOR_BACKUP_PATHETIC', 0;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_MAJOR_BACKUP_NEIGHBORS', 200;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_MAJOR_BACKUP_CLOSE', 100;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_MAJOR_BACKUP_FAR', 50;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_MAJOR_BACKUP_DISTANT', 0;

INSERT INTO Defines (Name, Value) SELECT 'TARGET_ALREADY_WAR_MINIMUM', 20;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_ECONOMIC_MOD', 100;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_CITY_MOD', 33;

INSERT INTO Defines (Name, Value) SELECT 'TARGET_VALUE_RATIO_MULTIPLIER', 100;
INSERT INTO Defines (Name, Value) SELECT 'TARGET_VALUE_REDUCTION_PER_BOLDNESS', -3;
UPDATE Defines SET Value = 3 WHERE Name = 'TARGET_NEIGHBORS';
INSERT INTO Defines (Name, Value) SELECT 'TARGET_NEIGHBORS_DIVISOR', 4;
UPDATE Defines SET Value = 1 WHERE Name = 'TARGET_CLOSE';
INSERT INTO Defines (Name, Value) SELECT 'TARGET_CLOSE_DIVISOR', 1;
UPDATE Defines SET Value = 3 WHERE Name = 'TARGET_FAR';
INSERT INTO Defines (Name, Value) SELECT 'TARGET_FAR_DIVISOR', 2;
UPDATE Defines SET Value = 2 WHERE Name = 'TARGET_DISTANT';
INSERT INTO Defines (Name, Value) SELECT 'TARGET_DISTANT_DIVISOR', 1;

UPDATE Defines SET Value = 300 WHERE Name = 'TARGET_IMPOSSIBLE_THRESHOLD';
UPDATE Defines SET Value = 200 WHERE Name = 'TARGET_BAD_THRESHOLD';
INSERT INTO Defines (Name, Value) SELECT 'TARGET_DIFFICULT_THRESHOLD', 126;
UPDATE Defines SET Value = 75 WHERE Name = 'TARGET_AVERAGE_THRESHOLD';
UPDATE Defines SET Value = 50 WHERE Name = 'TARGET_FAVORABLE_THRESHOLD';
INSERT INTO Defines (Name, Value) SELECT 'TARGET_SOFT_THRESHOLD', 33;

-- Diplo Agreements
INSERT INTO Defines (Name, Value) SELECT 'COOP_WAR_DESIRE_THRESHOLD', 40; -- min. GetCoopWarDesireScore() value for the AI to agree

-- "Too early for agreement" turn buffers
INSERT INTO Defines (Name, Value) SELECT 'JUST_MET_TURN_BUFFER', 10;
UPDATE Defines SET Value = 50 WHERE Name = 'DOF_TURN_BUFFER';
INSERT INTO Defines (Name, Value) SELECT 'DOF_TURN_BUFFER_REDUCTION_PER_ERA', -5;


-- Warmonger Adjustments
-- Decay rate
UPDATE Defines SET Value = -2 WHERE Name = 'WARMONGER_THREAT_PER_TURN_DECAY';

-- Multiplicative modifiers which increase or decrease warmonger penalty per turn decay rate
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_STRENGTH_DECAY_IMMENSE', 50;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_STRENGTH_DECAY_POWERFUL', 75;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_STRENGTH_DECAY_STRONG', 100;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_STRENGTH_DECAY_AVERAGE', 150;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_STRENGTH_DECAY_POOR', 200;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_STRENGTH_DECAY_WEAK', 250;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_STRENGTH_DECAY_PATHETIC', 300;

-- Weight of warmonger triggers
UPDATE Defines SET Value = 5 WHERE Name = 'WARMONGER_THREAT_MINOR_ATTACKED_WEIGHT';
UPDATE Defines SET Value = 10 WHERE Name = 'WARMONGER_THREAT_MAJOR_ATTACKED_WEIGHT';
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_USED_NUKE_WEIGHT', 20;

INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_CITY_VALUE_MULTIPLIER', 100; -- > 100: each city is worth more ... < 100: each city is worth less (multiplicative)
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_CAPITAL_CITY_PERCENT', 150; -- how much more the capital is worth (multiplicative)

-- Multiplicative modifier for when the bystander is on the same team as the defender, has a coop war with the defender against the attacker, or has a Defensive Pact with the defender
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_SHARED_FATE_PERCENT', 200;

-- Multiplicative modifier to the bonus for liberating a city owned by this player's team (added on top of SHARED_FATE_PERCENT)
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_LIBERATED_TEAM_BONUS_PERCENT', 200;

-- Multiplicative modifier for when the bystander is in a coop war with the attacker against the defender (huge reduction!)
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_COOP_WAR_PERCENT', 10;

-- Additive modifiers which increase or decrease warmonger penalty based on how strong the attacker and defender are, compared to the bystander
-- Not applied if SHARED_FATE_PERCENT is applicable; values are inverted when liberating a city
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_ATTACKER_STRENGTH_IMMENSE', 100;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_ATTACKER_STRENGTH_POWERFUL', 75;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_ATTACKER_STRENGTH_STRONG', 50;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_ATTACKER_STRENGTH_AVERAGE', 33;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_ATTACKER_STRENGTH_POOR', 0;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_ATTACKER_STRENGTH_WEAK', -25;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_ATTACKER_STRENGTH_PATHETIC', -50;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_DEFENDER_STRENGTH_IMMENSE', -75;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_DEFENDER_STRENGTH_POWERFUL', -50;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_DEFENDER_STRENGTH_STRONG', -25;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_DEFENDER_STRENGTH_AVERAGE', 0;

-- Additive modifiers for warmonger penalty based on various other conditions
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_MODIFIER_LARGE', 75;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_MODIFIER_MEDIUM', 50;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_MODIFIER_SMALL', 25;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_MODIFIER_NEGATIVE_SMALL', -25;
INSERT INTO Defines(Name, Value) SELECT 'WARMONGER_THREAT_MODIFIER_NEGATIVE_MEDIUM', -50;

-- Warmonger Percent by Era
UPDATE Eras Set WarmongerPercent = 50 WHERE Type = 'ERA_ANCIENT';
UPDATE Eras Set WarmongerPercent = 60 WHERE Type = 'ERA_CLASSICAL';
UPDATE Eras Set WarmongerPercent = 70 WHERE Type = 'ERA_MEDIEVAL';
UPDATE Eras Set WarmongerPercent = 80 WHERE Type = 'ERA_RENAISSANCE';
UPDATE Eras Set WarmongerPercent = 90 WHERE Type = 'ERA_INDUSTRIAL';
UPDATE Eras Set WarmongerPercent = 100 WHERE Type = 'ERA_MODERN';
UPDATE Eras Set WarmongerPercent = 110 WHERE Type = 'ERA_POSTMODERN';
UPDATE Eras Set WarmongerPercent = 120 WHERE Type = 'ERA_FUTURE';

-- Thresholds for warmonger threat levels (must have this much opinion penalty)
UPDATE Defines SET Value = 20 WHERE Name = 'WARMONGER_THREAT_MINOR_THRESHOLD';
UPDATE Defines SET Value = 80 WHERE Name = 'WARMONGER_THREAT_MAJOR_THRESHOLD';
UPDATE Defines SET Value = 140 WHERE Name = 'WARMONGER_THREAT_SEVERE_THRESHOLD';
UPDATE Defines SET Value = 200 WHERE Name = 'WARMONGER_THREAT_CRITICAL_THRESHOLD';
UPDATE Defines SET Value = 25 WHERE Name = 'WARMONGER_THREAT_SEVERE_PERCENT_THRESHOLD'; -- if you have conquered (killed, vassalized or captured capital) this % of major civs, threat is set to severe regardless of score. city-states count as half a major.
UPDATE Defines SET Value = 33 WHERE Name = 'WARMONGER_THREAT_CRITICAL_PERCENT_THRESHOLD'; -- if you have conquered (killed, vassalized or captured capital) this % of major civs, threat is set to critical regardless of score. city-states count as half a major.


-- War Progress Defines
-- Used as an AI sanity check to prevent wars of excessive attrition in the opponent's favor.
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_INITIAL_VALUE', 100;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_DECAY_VS_STRONGER', -5;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_DECAY_VS_EQUAL', -4;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_DECAY_VS_WEAKER', -3;

INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_CAPTURED_WORKER', 10;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_CAPTURED_SETTLER', 20;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_PLUNDERED_TRADE_ROUTE', 10;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_PILLAGED_IMPROVEMENT', 10;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_STOLE_TILE', 20;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_HIGH_VALUE_PILLAGE_MULTIPLIER', 200;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_KILLED_UNIT', 20;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_CAPTURED_CITY', 100;

INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_LOST_WORKER', -5;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_LOST_SETTLER', -10;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_LOST_TRADE_ROUTE', -5;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_LOST_IMPROVEMENT', -5;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_LOST_TILE', -10;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_LOST_UNIT', -10;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_LOST_CITY', -50;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_PER_STRATEGIC_DEFICIT', -5;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_PER_UNHAPPY', -4;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_CAPITAL_MULTIPLIER', 200;
INSERT INTO Defines (Name, Value) SELECT 'WAR_PROGRESS_HOLY_CITY_MULTIPLIER', 150;

-- Peace Desire
UPDATE Defines SET Value = 20 WHERE Name = 'REQUEST_PEACE_TURN_THRESHOLD';
INSERT INTO Defines (Name, Value) SELECT 'REQUEST_PEACE_THRESHOLD_REDUCTION_PER_WAR', 2;
INSERT INTO Defines (Name, Value) SELECT 'REQUEST_PEACE_LEEWAY_THRESHOLD', 17;
INSERT INTO Defines (Name, Value) SELECT 'REQUEST_PEACE_LEEWAY_THRESHOLD_REDUCTION_PER_WAR', 3;

-- Peace Values (caps at 100)
UPDATE Defines SET Value = 100 WHERE Name = 'PEACE_WILLINGNESS_OFFER_THRESHOLD_UN_SURRENDER';
UPDATE Defines SET Value = 90 WHERE Name = 'PEACE_WILLINGNESS_OFFER_THRESHOLD_CAPITULATION';
UPDATE Defines SET Value = 80 WHERE Name = 'PEACE_WILLINGNESS_OFFER_THRESHOLD_CESSION';
UPDATE Defines SET Value = 70 WHERE Name = 'PEACE_WILLINGNESS_OFFER_THRESHOLD_SURRENDER';
UPDATE Defines SET Value = 60 WHERE Name = 'PEACE_WILLINGNESS_OFFER_THRESHOLD_SUBMISSION';
UPDATE Defines SET Value = 40 WHERE Name = 'PEACE_WILLINGNESS_OFFER_THRESHOLD_BACKDOWN';
UPDATE Defines SET Value = 30 WHERE Name = 'PEACE_WILLINGNESS_OFFER_THRESHOLD_SETTLEMENT';
UPDATE Defines SET Value = 15 WHERE Name = 'PEACE_WILLINGNESS_OFFER_THRESHOLD_ARMISTICE';

UPDATE Defines SET Value = 100 WHERE Name = 'PEACE_WILLINGNESS_ACCEPT_THRESHOLD_UN_SURRENDER';
UPDATE Defines SET Value = 90 WHERE Name = 'PEACE_WILLINGNESS_ACCEPT_THRESHOLD_CAPITULATION';
UPDATE Defines SET Value = 80 WHERE Name = 'PEACE_WILLINGNESS_ACCEPT_THRESHOLD_CESSION';
UPDATE Defines SET Value = 70 WHERE Name = 'PEACE_WILLINGNESS_ACCEPT_THRESHOLD_SURRENDER';
UPDATE Defines SET Value = 60 WHERE Name = 'PEACE_WILLINGNESS_ACCEPT_THRESHOLD_SUBMISSION';
UPDATE Defines SET Value = 40 WHERE Name = 'PEACE_WILLINGNESS_ACCEPT_THRESHOLD_BACKDOWN';
UPDATE Defines SET Value = 30 WHERE Name = 'PEACE_WILLINGNESS_ACCEPT_THRESHOLD_SETTLEMENT';
UPDATE Defines SET Value = 15 WHERE Name = 'PEACE_WILLINGNESS_ACCEPT_THRESHOLD_ARMISTICE';


-- VP Defines

-- Happiness System Rework
INSERT INTO Defines (Name, Value) SELECT 'UNHAPPY_THRESHOLD', 50; -- Below this approval rating threshold, the empire is unhappy

-- Bonus/Penalty to Growth based on Local Happiness
INSERT INTO Defines (Name, Value) SELECT 'LOCAL_HAPPINESS_FOOD_MODIFIER', 2; -- % bonus to Growth per point of Local Happiness above Local Unhappiness
INSERT INTO Defines (Name, Value) SELECT 'LOCAL_UNHAPPINESS_FOOD_MODIFIER', 10; -- % penalty to Growth per point of Local Unhappiness above Local Happiness

-- Penalty to Growth if empire is super unhappy
INSERT INTO Defines (Name, Value) SELECT 'GLOBAL_GROWTH_PENALTY_PER_UNHAPPY', 2.5; -- Global % penalty to Growth when the empire is unhappy, per approval rating % below 50

-- Production penalties if unhappy
INSERT INTO Defines (Name, Value) SELECT 'LOCAL_UNHAPPY_SETTLER_PRODUCTION_PENALTY', -10; -- Local % penalty to Settler production for each point of Local Unhappiness above Local Happiness
INSERT INTO Defines (Name, Value) SELECT 'LOCAL_UNHAPPY_COMBAT_UNIT_PRODUCTION_PENALTY', -10; -- Local % penalty to combat unit production for each point of Local Unhappiness above Local Happiness
INSERT INTO Defines (Name, Value) SELECT 'GLOBAL_SETTLER_PRODUCTION_PENALTY_PER_UNHAPPY', 2.5; -- Global % penalty to Settler production when the empire is unhappy, per approval rating % below 50
INSERT INTO Defines (Name, Value) SELECT 'UNHAPPY_MAX_UNIT_PRODUCTION_PENALTY', -75; -- Maximum penalty to any kind of unit production from happiness

-- Great Musician Happiness
INSERT INTO Defines (Name, Value) SELECT 'GREAT_MUSICIAN_BLAST_HAPPINESS_CAPITAL', 0;
INSERT INTO Defines (Name, Value) SELECT 'GREAT_MUSICIAN_BLAST_HAPPINESS_GLOBAL', 0;

-- Unhappiness from Needs
INSERT INTO Defines (Name, Value) SELECT 'YIELD_MEDIAN_PERCENTILE', 50; -- 50 = true median. Values below 50 will try to pick a city below the true median, values above 50 will try to pick a city above it. Capped between 1 and 100.
INSERT INTO Defines (Name, Value) SELECT 'YIELD_MEDIAN_MIN_POP_REQUIREMENT', 3; -- The required population for a city to be counted in the global median for Needs. Prevents an early game unhappiness spike due to the high initial rate per citizen.
INSERT INTO Defines (Name, Value) SELECT 'TECH_COUNT_MEDIAN_PERCENTILE', 50; -- 50 = true median. See YIELD_MEDIAN_PERCENTILE above. Only used if TECH_NEED_MODIFIER_PER_TECH_ABOVE_MEDIAN or TECH_NEED_MODIFIER_PER_TECH_BELOW_MEDIAN are enabled below.

INSERT INTO Defines (Name, Value) SELECT 'DISTRESS_MEDIAN_BASE_MODIFIER', 100; -- The median Food/Production need for a city (after modifiers) is multiplied by this value and then divided by 100. Higher values = more Unhappiness.
INSERT INTO Defines (Name, Value) SELECT 'DISTRESS_MEDIAN_RATE_CHANGE', 0.65; -- The rate at which the global median for Distress changes. Valid values are between 0.01 and 1.00. Higher values cause the median to shift more quickly.

INSERT INTO Defines (Name, Value) SELECT 'POVERTY_MEDIAN_BASE_MODIFIER', 100; -- The median Gold need for a city (after modifiers) is multiplied by this value and then divided by 100. Higher values = more Unhappiness.
INSERT INTO Defines (Name, Value) SELECT 'POVERTY_MEDIAN_RATE_CHANGE', 0.65; -- The rate at which the global median for Poverty changes. Valid values are between 0.01 and 1.00. Higher values cause the median to shift more quickly.

INSERT INTO Defines (Name, Value) SELECT 'ILLITERACY_MEDIAN_BASE_MODIFIER', 100; -- The median Science need for a city (after modifiers) is multiplied by this value and then divided by 100. Higher values = more Unhappiness.
INSERT INTO Defines (Name, Value) SELECT 'ILLITERACY_MEDIAN_RATE_CHANGE', 0.65; -- The rate at which the global median for Illiteracy changes. Valid values are between 0.01 and 1.00. Higher values cause the median to shift more quickly.

INSERT INTO Defines (Name, Value) SELECT 'BOREDOM_MEDIAN_BASE_MODIFIER', 100; -- The median Culture need for a city (after modifiers) is multiplied by this value and then divided by 100. Higher values = more Unhappiness.
INSERT INTO Defines (Name, Value) SELECT 'BOREDOM_MEDIAN_RATE_CHANGE', 0.65; -- The rate at which the global median for Boredom changes. Valid values are between 0.01 and 1.00. Higher values cause the median to shift more quickly.

INSERT INTO Defines (Name, Value) SELECT 'UNHAPPINESS_PER_RELIGIOUS_MINORITY_POP', 0.5; -- Base Unhappiness per religious minority citizen. Modified by need modifiers. (rounded up)

-- Unhappiness Need Modifiers (modify the median value)
INSERT INTO Defines (Name, Value) SELECT 'CAPITAL_NEED_MODIFIER', 25; -- +x% Needs in the capital. Offsets boost from Palace, helps make Capital a source of Unhappiness early on.
INSERT INTO Defines (Name, Value) SELECT 'TECH_NEED_MODIFIER_PERCENT_RESEARCHED', 0; -- Modifier to needs equal to % of techs researched, multiplied by this value and then divided by 100. Disabled by default.
INSERT INTO Defines (Name, Value) SELECT 'TECH_NEED_MODIFIER_PER_TECH_ABOVE_MEDIAN', 0; -- Modifier to needs for each tech ahead of the median # of techs researched you are. Disabled by default. 100 = 1%.
INSERT INTO Defines (Name, Value) SELECT 'TECH_NEED_MODIFIER_PER_TECH_BELOW_MEDIAN', 0; -- Modifier to needs for each tech behind the median # of techs researched you are. Disabled by default. -100 = -1%.
INSERT INTO Defines (Name, Value) SELECT 'CITY_SIZE_NEED_MODIFIER', 0; -- Modifier to needs per citizen in the city. Disabled by default. -100 = -1%.
INSERT INTO Defines (Name, Value) SELECT 'EMPIRE_SIZE_NEED_MODIFIER_CITIES', 500; -- Modifier to needs per non-puppet city in the empire, excluding the capital. Scales with map size. Default is 500 (+5%). Does not support negative values.
INSERT INTO Defines (Name, Value) SELECT 'EMPIRE_SIZE_NEED_MODIFIER_POP', 125; --  Modifier to needs per citizen in the empire, excluding those in puppet cities. Scales with map size. Default is 125 (+1% per 8 citizens). Does not support negative values.
INSERT INTO Defines (Name, Value) SELECT 'EMPIRE_SIZE_NEED_MODIFIER_CAP', 100000; -- Cap to total Empire Size Modifier for Needs. (1 = 1%)

-- Unhappiness from Other Sources
INSERT INTO Defines (Name, Value) SELECT 'UNHAPPINESS_PER_STARVING_POP', 1.0; -- Unhappiness point per starving citizen. (rounded down)
INSERT INTO Defines (Name, Value) SELECT 'UNHAPPINESS_PER_PILLAGED_TILE', 0.5; -- Unhappiness point per pillaged plot owned by city. (rounded down)
INSERT INTO Defines (Name, Value) SELECT 'UNHAPPINESS_PER_ISOLATED_POP', 0.34; -- Unhappiness point per pop if unconnected or blockaded. (rounded down)
INSERT INTO Defines (Name, Value) SELECT 'UNHAPPINESS_PER_SPECIALIST', 100; -- 100 = 1 unhappiness per specialist.
INSERT INTO Defines (Name, Value) SELECT 'UNHAPPINESS_PER_X_PUPPET_CITIZENS', 4; -- Puppets produce flat unhappiness based on # of citizens in the city. This is the divisor.
INSERT INTO Defines (Name, Value) SELECT 'WAR_WEARINESS_POPULATION_PERCENT_CAP', 34; -- x% of the War Weariness % (which ranges from 0 to 100) is multiplied by total population and divided by 100 to calculate Unhappiness from War Weariness.


-- Tourism
-- These 5 values change the amount of gold earned from trade routes with influenced civs. Higher influence = more gold (trade-off for higher influence).
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_GOLD_INFLUENCE_LEVEL_EXOTIC', 200;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_GOLD_INFLUENCE_LEVEL_FAMILIAR', 400;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_GOLD_INFLUENCE_LEVEL_POPULAR', 600;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_GOLD_INFLUENCE_LEVEL_INFLUENTIAL', 800;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_GOLD_INFLUENCE_LEVEL_DOMINANT', 1000;

-- These 5 values change the amount of Food earned from trade routes with influenced civs. Higher influence = more Food (trade-off for higher influence). 
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_GROWTH_INFLUENCE_LEVEL_EXOTIC', 5;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_GROWTH_INFLUENCE_LEVEL_FAMILIAR', 10;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_GROWTH_INFLUENCE_LEVEL_POPULAR', 15;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_GROWTH_INFLUENCE_LEVEL_INFLUENTIAL', 20;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_GROWTH_INFLUENCE_LEVEL_DOMINANT', 25;

--- These 5 values change the amount of science earned from trade routes with influence civs. Each is adding to an incremental value (so Familiar is already 1, Popular already 2, etc.)
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SCIENCE_INFLUENCE_LEVEL_EXOTIC', 0;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SCIENCE_INFLUENCE_LEVEL_FAMILIAR', 1;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SCIENCE_INFLUENCE_LEVEL_POPULAR', 2;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SCIENCE_INFLUENCE_LEVEL_INFLUENTIAL', 3;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SCIENCE_INFLUENCE_LEVEL_DOMINANT', 4;

--- Reduce turns for conquest of cities. Base is 25 for each level of influence, this adds to it.
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CONQUEST_REDUCTION_BOOST', 0;

--- Set turns for spies to est. in cities based on influence.
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SPY_BOOST_INFLUENCE_EXOTIC', 5;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SPY_BOOST_INFLUENCE_FAMILIAR', 4;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SPY_BOOST_INFLUENCE_POPULAR', 3;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SPY_BOOST_INFLUENCE_INFLUENTIAL', 2;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SPY_BOOST_INFLUENCE_DOMINANT', 1;


-- Wonder Consolation Tweaks
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_WONDER_BEATEN_CONSOLATION_PRIZE', 2; -- Consolation prize of Culture (default)
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CULTURE_PERCENTAGE_VALUE', 33; -- % of Production awarded as Culture if consolation prize is Culture
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_GA_PERCENTAGE_VALUE', 25; -- % of Production awarded as GAP if consolation prize is GAP
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SCIENCE_PERCENTAGE_VALUE', 10; -- % of Production awarded as Science if consolation prize is Science
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_FAITH_PERCENTAGE_VALUE', 10; -- % of Production awarded as Faith if consolation prize is Faith


-- Barbarians

INSERT INTO Defines (Name, Value) SELECT 'BALANCE_BARBARIAN_HEAL_RATE', 0; -- The rate at which Barbarian units heal.

-- Camp Spawning
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CAMP_FIRST_TURN_PERCENT_PER_ERA', 0; -- VP Only: increase to target % of camps to spawn (for the initial spawning) per era. 10 = 1%.
UPDATE Defines SET Value = 50 WHERE Name = 'BARBARIAN_CAMP_ODDS_OF_NEW_CAMP_SPAWNING'; -- Community Patch Only: % chance of a new encampment spawning each turn
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CAMP_MINIMUM_ISLAND_SIZE', 1; -- # of tiles required in a landmass for a camp to spawn.
UPDATE Defines SET Value = 4 WHERE Name = 'BARBARIAN_CAMP_MINIMUM_DISTANCE_ANOTHER_CAMP'; -- Camps can't spawn within X tiles of another camp OR city.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CAMP_MINIMUM_DISTANCE_RECENTLY_CLEARED_CAMP', 2; -- Min. distance between new camps and a recently cleared camp OR city.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CAMP_CLEARED_MIN_TURNS_TO_RESPAWN', 15; -- Number of turns before a camp OR city is no longer considered recently cleared. Does not scale with game speed.
UPDATE Defines SET Value = 33 WHERE Name = 'BARBARIAN_CAMP_COASTAL_SPAWN_ROLL'; -- target % of Barbarian camps to create on the coast
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_INITIAL_SPAWN_TURN', 0; -- After X turns have elapsed, Barbarians will spawn for the first time. Minimum 0.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CAMP_SPAWN_RATE', 2; -- Vox Populi only: A camp will spawn every X turns after the initial spawn.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CAMP_SPAWN_RATE_RAGING', -1; -- Vox Populi only: Spawn rate change if Raging Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CAMP_SPAWN_RATE_CHILL', 1; -- Vox Populi only: Spawn rate change if Chill Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CAMP_NUM_AFTER_INITIAL', 1; -- The number of camps to spawn each turn if the random roll succeeds (Community Patch) or next spawn turn occurs (Vox Populi).
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CAMP_NUM_AFTER_INITIAL_CHILL', 0; -- Change if Chill Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CAMP_NUM_AFTER_INITIAL_RAGING', 0; -- Change if Raging Barbarians is enabled.

-- Unit Spawn Timers
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_INITIAL_SPAWN_TURN_FROM_SPAWNER', 10; -- Barbarians can start spawning from camps and cities after this many turns have passed.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_INITIAL_SPAWN_SPAWNER_DELAY', 0; -- Camps and cities created on the initial spawn turn have X turns added to their next spawn delay.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_MIN_SPAWN_DELAY', 2; -- Min. number of turns between spawns
-- Encampments
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_SPAWN_DELAY_FROM_ENCAMPMENT', 12; -- Base spawn delay from encampment.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_SPAWN_DELAY_FROM_ENCAMPMENT_RAND', 9; -- Additional random spawn delay from encampment.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_SPAWN_DELAY_FROM_ENCAMPMENT_CHILL_MULTIPLIER', 200; -- 2x spawn delay for encampments with Chill Barbarians enabled
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_SPAWN_DELAY_FROM_ENCAMPMENT_RAGING_MULTIPLIER', 50; -- 0.5x spawn delay for encampments with Raging Barbarians enabled
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_ENCAMPMENT_SPAWN_DELAY_REDUCTION_PER_SPAWN', -1; -- Reduction to spawn timer per spawned unit (not counting any initially spawned second unit)
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_ENCAMPMENT_MAX_SPAWN_DELAY_REDUCTION', -3; -- Max. reduction to spawn timer from spawned units
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_ENCAMPMENT_ATTACKED_DELAY_MULTIPLIER', 50; -- 0.5x current spawn time if a camp is attacked
-- Cities
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_SPAWN_DELAY_FROM_CITY', 6; -- Base spawn delay from city.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_SPAWN_DELAY_FROM_CITY_RAND', 4; -- Additional random spawn delay from city.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_SPAWN_DELAY_FROM_CITY_CHILL_MULTIPLIER', 150; -- 1.5x spawn delay for cities with Chill Barbarians enabled
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_SPAWN_DELAY_FROM_CITY_RAGING_MULTIPLIER', 50; -- 0.5x spawn delay for cities with Raging Barbarians enabled
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CITY_SPAWN_DELAY_REDUCTION_PER_SPAWN', -1; -- Reduction to spawn timer per spawned unit
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CITY_MAX_SPAWN_DELAY_REDUCTION', -3; -- Max. reduction to spawn timer from spawned units
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_CITY_ATTACKED_DELAY_MULTIPLIER', 50; -- 0.5x current spawn time if a city is attacked

-- Number of Units Spawned
-- Encampment Creation
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_INITIAL_ENCAMPMENT_CREATION_SPAWN', 1; -- The number of units an encampment spawns when created (first spawning turn only).
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_INITIAL_ENCAMPMENT_CREATION_SPAWN_CHILL', -1; -- Change if Chill Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_INITIAL_ENCAMPMENT_CREATION_SPAWN_RAGING', 0; -- Change if Raging Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_INITIAL_ENCAMPMENT_CREATION_SPAWN_PER_ERA', 0; -- Extra units added per era (first spawning turn only). Number of extra units = this value * (era #) / 100, rounded down.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_ENCAMPMENT_CREATION_SPAWN', 1; -- The number of units an encampment spawns when created.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_ENCAMPMENT_CREATION_SPAWN_CHILL', 0; -- Change if Chill Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_ENCAMPMENT_CREATION_SPAWN_RAGING', 0; -- Change if Raging Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_ENCAMPMENT_CREATION_SPAWN_PER_ERA', 0; -- Extra units added per era. Number of extra units = this value * (era #) / 100, rounded down.
-- City Capture
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_CITY_CAPTURE_SPAWN', 0; -- The number of units spawned when a city is captured. In VP when a Barbarian Horde/Rebellion quest is failed, one unit (which captures the city) is created first, then this number is added.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_CITY_CAPTURE_SPAWN_CHILL', 0; -- Change if Chill Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_CITY_CAPTURE_SPAWN_RAGING', 0; -- Change if Raging Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_CITY_CAPTURE_SPAWN_PER_ERA', 0; -- Extra units added per era. Number of extra units = this value * (era #) / 100, rounded down.
-- Encampment Spawn
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PER_ENCAMPMENT_SPAWN', 1; -- The number of units an encampment spawns AFTER the encampment is initially created.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PER_ENCAMPMENT_SPAWN_CHILL', 0; -- Change if Chill Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PER_ENCAMPMENT_SPAWN_RAGING', 0; -- Change if Raging Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PER_ENCAMPMENT_SPAWN_PER_ERA', 0; -- Extra units added per era. Number of extra units = this value * (era #) / 100, rounded down.
-- City Spawn
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PER_CITY_SPAWN', 1; -- The number of units a city spawns.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PER_CITY_SPAWN_CHILL', 0; -- Change if Chill Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PER_CITY_SPAWN_RAGING', 0; -- Change if Raging Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PER_CITY_SPAWN_PER_ERA', 0; -- Extra units added per era. Number of extra units = this value * (era #) / 100, rounded down.
INSERT INTO Defines (Name, Value) SELECT 'MAX_BARBARIANS_FROM_CITY_NEARBY', 4; -- Max. # of Barbarians within MAX_BARBARIANS_FROM_CITY_NEARBY_RANGE tiles of the city.
INSERT INTO Defines (Name, Value) SELECT 'MAX_BARBARIANS_FROM_CITY_NEARBY_RANGE', 4; -- Range for MAX_BARBARIANS_FROM_CITY_NEARBY.
-- Trade Route Plunder
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PLUNDER_TRADE_ROUTE_SPAWN', 1; -- # of units the Barbarians spawn when they plunder a Trade Route.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PLUNDER_TRADE_ROUTE_SPAWN_CHILL', 0; -- Change if Chill Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PLUNDER_TRADE_ROUTE_SPAWN_RAGING', 0; -- Change if Raging Barbarians is enabled.
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_NUM_UNITS_PLUNDER_TRADE_ROUTE_SPAWN_PER_ERA', 0; -- Extra units added per era. Number of extra units = this value * (era #) / 100, rounded down.

-- Unit Spawn Selection
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_UNIT_SPAWN_NUM_CANDIDATES', 5; -- randomly choose from the top X candidates
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_UNIT_SPAWN_NO_RESOURCE_MULTIPLIER', 150; -- 50% extra score to units without resource requirements
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_UNIT_SPAWN_UU_MULTIPLIER', 150; -- 50% extra score to Unique Units, if permitted
INSERT INTO Defines (Name, Value) SELECT 'BARBARIAN_UNIT_SPAWN_PREFERRED_TYPE', 200; -- 100% extra score for the specific type of unit (UNIT_AI) the Barbs are looking for

-- Horde Quest
INSERT INTO Defines (Name, Value) SELECT 'MINOR_QUEST_REBELLION_BARB_SPAWN_INTERVAL', 4; -- Spawn barbs every X turns, including the initial turn. No Barbs will be spawned on the final turn.
INSERT INTO Defines (Name, Value) SELECT 'MINOR_QUEST_REBELLION_BARBS_PER_CS_UNIT', 60; -- # of Barbs per CS military unit. 100 = 1.
INSERT INTO Defines (Name, Value) SELECT 'MINOR_QUEST_REBELLION_BARBS_PER_ERA_BASE', 0; -- # of Barbs per era past Ancient. 100 = 1.
INSERT INTO Defines (Name, Value) SELECT 'MINOR_QUEST_REBELLION_BARBS_PER_ERA_RAND', 200; -- Maximum random extra Barbs per era past Ancient. 100 = 1.
INSERT INTO Defines (Name, Value) SELECT 'MINOR_QUEST_REBELLION_BARBS_MIN', 2; -- Minimum # of Barbs

-- Acquire City Quest
INSERT INTO Defines (Name, Value) SELECT 'MINOR_QUEST_ACQUIRE_CITY_BONUS_XP', 100; -- Amount of extra XP given to Juggernaut unit rewards

-- Misc. Defines
INSERT INTO Defines (Name, Value) SELECT 'RELIGION_MIN_FAITH_SECOND_PROPHET', 600;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_MARRIAGE_GP_RATE', 15; -- Austria new UA (VP)
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_MARRIAGE_RESTING_POINT_INCREASE', 75; -- Austria new UA (VP)
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_MARRIAGE_COST_BASE', 200; -- Austria new UA (VP)
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_MARRIAGE_COST_INCREASE_PER_PREVIOUS_MARRIAGE', 200; -- Austria new UA (VP)
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_FOLLOWER_GROWTH_BONUS', 0; -- India Growth (VP)
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_FOLLOWER_FOOD_BONUS', 0; -- India Food (VP)
INSERT INTO Defines (Name, Value) SELECT 'RELIGION_FOUND_AUTO_SPREAD_PRESSURE', 0; -- India Pressure on Found (VP)
INSERT INTO Defines (Name, Value) SELECT 'GWAM_THRESHOLD_DECREASE', 0; -- Great People Rate Mod (Note, this is a subtraction, so positive = negative)
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_BUILDING_INVESTMENT_BASELINE', -50; -- Building Investments Base Rate
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_UNIT_INVESTMENT_BASELINE', -50; -- Unit Investments Base Rate
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CORE_PRODUCTION_DESERT_IMPROVEMENT', 0;

-- Settlers
-- Pioneers/Colonists
INSERT INTO Defines (Name, Value) SELECT 'PIONEER_POPULATION_CHANGE', 3;
INSERT INTO Defines (Name, Value) SELECT 'PIONEER_EXTRA_PLOTS', 3;
INSERT INTO Defines (Name, Value) SELECT 'PIONEER_FOOD_PERCENT', 25;
INSERT INTO Defines (Name, Value) SELECT 'COLONIST_POPULATION_CHANGE', 5;
INSERT INTO Defines (Name, Value) SELECT 'COLONIST_EXTRA_PLOTS', 5;
INSERT INTO Defines (Name, Value) SELECT 'COLONIST_FOOD_PERCENT', 50;

-- Scouts
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SCOUT_XP_RANDOM_VALUE', 12;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SCOUT_XP_BASE', 1;

-- City-States
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CS_WAR_COOLDOWN_RATE', 50; -- How long till a City-State forgets that a major aggressively attacked it?
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_MINOR_PROTECTION_MINIMUM_DURATION', 10; -- How long before a major can revoke a PtP to a CS?
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CS_PLEDGE_TO_PROTECT_DEFENSE_BONUS', 5; -- Bonus to CS capital's CS for each PtP
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CS_PLEDGE_TO_PROTECT_DEFENSE_BONUS_MAX', 25; -- Max bonus to CS capital's CS from PtPs
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CS_ALLIANCE_DEFENSE_BONUS', 25; -- Bonus to CS capital's CS for having an ally
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_MAX_CS_ALLY_STRENGTH', 5; -- Max number of CSs calc'd for bonus for Greek UA (VP)

-- Spies
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SPY_RESPAWN_TIMER', 5;
-- Calculation of the number of spies per era, if MOD_BALANCE_CORE_SPIES is activated:
-- Each era, gain 100 spy points. To get a spy, you need (iThreshold) Spy Points, with iThreshold = 100 * BALANCE_SPY_TO_PLAYER_RATIO / ((Num Minor Civs ever alive) + BALANCE_SPY_POINT_MAJOR_PLAYER_MULTIPLIER * (Num Major Civs ever alive))
-- Excessive Spy Points are stored, so if for example iThreshold = 66, you get 3 spies every 2 eras
-- iThreshold is bounded between BALANCE_SPY_POINT_THRESHOLD_MIN and BALANCE_SPY_POINT_THRESHOLD_MAX
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SPY_TO_PLAYER_RATIO', 20; -- VP
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SPY_POINT_MAJOR_PLAYER_MULTIPLIER', 2;  -- VP
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SPY_POINT_THRESHOLD_MIN', 33;  -- VP
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_SPY_POINT_THRESHOLD_MAX', 100;  -- VP
	
-- Influence modifier for each successfully rigged election
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_CONSECUTIVE_RIGGING_INFLUENCE_MODIFIER', 40;

-- Calculation of Network Points (VP Espionage System)
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_NP_BASE', 30;  -- Base Network Points generated per Turn
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_NP_PER_SPY_RANK', 0;  -- Additional Network Points per Spy Level
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_NP_CULTURAL_INFLUENCE', 10;  -- Additional Network Points for Cultural Influence
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_NP_PER_TECHNOLOGY_BEHIND', 2;  -- Additional Network Points per Technology the Spy Owner does not have
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_NP_MAX_NUM_TECH', 10;  -- Max Number of Techs taken into account (see previous line)

-- Security (VP Espionage System)
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_NP_REDUCTION_PER_SECURITY_POINT', 160;  -- divided by 100: Percentage Reduction of Network Points per Security Point
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_MAX_NUM_SECURITY_POINTS', 50;  -- Max Number of Security Points
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_SECURITY_BASE', 10; -- Base Security
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_SECURITY_NOT_ALL_HAVE_SPIES', 1000; -- Security if not all players have a Spy
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_SECURITY_PREVIOUS_CITY_MISSIONS', 2; -- Security for each previous Spy Mission completed in the City
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_SECURITY_PER_POPULATION', -2; -- Security per Population in City
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_SECURITY_PER_POPULATION_BUILDING_SCALER', 360; -- Adds +1 Security every time X reaches this value, where X = (total SpySecurityModifierPerXPop in city) * (city population)
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_SECURITY_PER_TRADE_ROUTE', -1; -- Security per Trade Route to/from City
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_SECURITY_PER_EXCESS_UNHAPPINESS', -4; -- Security per Excess Unhappiness in City

-- Spy XP (VP Espionage System)
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_SPY_EXPERIENCE_DENOMINATOR', 100; -- XP needed to get to the next Level (scales with game speed)
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_XP_PER_TURN_COUNTERSPY', 0; -- XP gained per Turn when active as Counterspy
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_XP_PER_TURN_DIPLOMAT', 0; -- XP gained per Turn when active as Diplomat
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_XP_PER_TURN_OFFENSIVE', 0; -- XP gained per Turn when active against another Major Civ
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_XP_PER_TURN_CITYSTATE', 0; -- XP gained per Turn when active in a City-State
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_XP_RIGGING_SUCCESS', 0; -- XP gained when successfully rigging an Election
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_XP_UNCOVER_INTRIGUE', 0; -- XP gained when uncovering an Intrigue
INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_SPY_XP_MISSION_SUCCESS_PERCENT', 0; -- When successfully completing a Spy Mission, gain (NP Points needed for Mission) * ESPIONAGE_XP_MISSION_SUCESS_PERCENT / 100 XP

INSERT INTO Defines (Name, Value) SELECT 'ESPIONAGE_COUNTERSPY_CHANGE_FOCUS_COOLDOWN', 5; -- Cooldown between switching Counterspy Missions

-- Ideology Unlock via Policies
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_MOD_POLICY_BRANCHES_NEEDED_IDEOLOGY', 3;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_MOD_POLICIES_NEEDED_IDEOLOGY', 18;

-- Resource Monopolies
INSERT INTO Defines (Name, Value) SELECT 'GLOBAL_RESOURCE_MONOPOLY_THRESHOLD', 50;
INSERT INTO Defines (Name, Value) SELECT 'STRATEGIC_RESOURCE_MONOPOLY_THRESHOLD', 25;

-- Corporations
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CORE_CORP_OFFICE_FRANCHISE_CONVERSION', 0.5;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CORE_CORP_OFFICE_TR_CONVERSION', 1.0;

-- Increasing World Wonder Production costs
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CORE_WORLD_WONDER_SAME_ERA_COST_MODIFIER', 25;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CORE_WORLD_WONDER_PREVIOUS_ERA_COST_MODIFIER', 15;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CORE_WORLD_WONDER_SECOND_PREVIOUS_ERA_COST_MODIFIER', 10;
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_CORE_WORLD_WONDER_EARLIER_ERA_COST_MODIFIER', 5; -- all previous eras

-- FOR JFD
INSERT INTO Defines (Name, Value) SELECT 'UNHAPPINESS_PER_POPULATION_FLOAT', 0.0;


-- VP Defines
-- Disable Gold Gifts
INSERT INTO Defines (Name, Value) SELECT 'CSD_GOLD_GIFT_DISABLED', 0;

-- Threshold for demanding tribute
INSERT INTO Defines
	(Name, Value)
VALUES
	('MINOR_CIV_GOLD_TRIBUTE_THRESHOLD', 0),
	('MINOR_CIV_HEAVY_TRIBUTE_THRESHOLD', 0);

-- Gold tribute amount increasing with game progress
INSERT INTO Defines (Name, Value) VALUES ('MINOR_BULLY_GOLD_GROWTH_FACTOR', 400);

-- Quest stuff
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_KILL_CITY_STATE_FRIENDLY', 1; -- If enabled, Friendly CS can't give out Kill City-State quests
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_FIND_CITY', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_WAR', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_CONSTRUCT_NATIONAL_WONDER', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_GIFT_SPECIFIC_UNIT', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_FIND_CITY_STATE', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_INFLUENCE', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_CONTEST_TOURISM', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_ARCHAEOLOGY', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_CIRCUMNAVIGATION', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_LIBERATION', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_HORDE', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_REBELLION', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_EXPLORE_AREA', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_BUILD_X_BUILDINGS', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_SPY_ON_MAJOR', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_COUP', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_ACQUIRE_CITY', 1;
INSERT INTO Defines (Name, Value) SELECT 'QUEST_DISABLED_ACQUIRE_CITY_MILITARISTIC_ONLY', 1; -- If enabled, non-Militaristic CS can't give out Acquire City quests

INSERT INTO Defines (Name, Value) SELECT 'MINOR_QUEST_REBELLION_TIMER', 20;
INSERT INTO Defines (Name, Value) SELECT 'INFLUENCE_MINOR_QUEST_BOOST', 20;

INSERT INTO Defines (Name, Value) SELECT 'MINOR_FRIENDSHIP_DROP_PER_TURN_DAMAGED_CAPITAL_MULTIPLIER', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_INFLUENCE_SCALING_DECAY_EXPONENT', 1.5;

-- VP First Contact Bonuses
-- These are the values for the first team to meet a neutral CS.
-- Multipliers for friendly and hostile city-states are below.
-- Irrational city-states roll to see if they are friendly, neutral or hostile towards the meeting player.
INSERT INTO Defines (Name, Value) VALUES

('MINOR_CIV_FIRST_CONTACT_BONUS_FRIENDSHIP', 5),
('MINOR_CIV_FIRST_CONTACT_BONUS_CULTURE', 5),
('MINOR_CIV_FIRST_CONTACT_BONUS_FAITH', 5),
('MINOR_CIV_FIRST_CONTACT_BONUS_GOLD', 25),
-- Below are only given to the player who meets the CS instead of the whole team
('MINOR_CIV_FIRST_CONTACT_BONUS_FOOD', 10),
-- Chance to get a unit
('MINOR_CIV_FIRST_CONTACT_BONUS_UNIT', 10),
('MINOR_CIV_FIRST_CONTACT_XP_PER_ERA', 5),
('MINOR_CIV_FIRST_CONTACT_XP_RANDOM', 5),

-- Multiplier and Divisor for the player meeting the CS, we can only store ints so *2 is 2/1
-- Only Influence uses these
('MINOR_CIV_FIRST_CONTACT_PLAYER_MULTIPLIER', 2),
('MINOR_CIV_FIRST_CONTACT_PLAYER_DIVISOR', 1),

-- Multiplier and Divisor for the subsequent teams meeting the CS, we can only store ints so *0.5 is 1/2
-- Only Influence uses the multiplier
('MINOR_CIV_FIRST_CONTACT_SUBSEQUENT_TEAM_MULTIPLIER', 1),
-- Only Influence, Culture and Faith use the divisor, others are set to 0 instead
('MINOR_CIV_FIRST_CONTACT_SUBSEQUENT_TEAM_DIVISOR', 2),

-- Multiplier and Divisor for friendly city states bonuses, we can only store ints so *1.5 is 3/2
('MINOR_CIV_FIRST_CONTACT_FRIENDLY_BONUS_MULTIPLIER', 3),
('MINOR_CIV_FIRST_CONTACT_FRIENDLY_BONUS_DIVISOR', 2),

-- Multiplier and Divisor for friendly city states unit chance, we can only store ints so *2 is 2/1
('MINOR_CIV_FIRST_CONTACT_FRIENDLY_UNIT_MULTIPLIER', 2),
('MINOR_CIV_FIRST_CONTACT_FRIENDLY_UNIT_DIVISOR', 1),

-- Multiplier and Divisor for hostile city states bonuses, we can only store ints so *0.5 is 1/2
('MINOR_CIV_FIRST_CONTACT_HOSTILE_BONUS_MULTIPLIER', 1),
('MINOR_CIV_FIRST_CONTACT_HOSTILE_BONUS_DIVISOR', 2),

-- Multiplier and Divisor for hostile city states unit chance, we can only store ints so *0 is 0/1
('MINOR_CIV_FIRST_CONTACT_HOSTILE_UNIT_MULTIPLIER', 0),
('MINOR_CIV_FIRST_CONTACT_HOSTILE_UNIT_DIVISOR', 1);


-- Number of copies of each City-State Quest for random selection
-- Each valid quest has X base copies - trait and personality can add or subtract copies
-- Minimum of 1 copy for each valid quest
-- The more copies of a quest, the greater the chance it is selected
-- "Hyperlink" values are specific trait + personality combinations which, if non-zero, override the normal number of copies.
INSERT INTO Defines (Name, Value) VALUES

-- Personal Quests
('MINOR_CIV_QUEST_ROUTE_COPIES_BASE', 10),
('MINOR_CIV_QUEST_ROUTE_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_ROUTE_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_ROUTE_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_ROUTE_COPIES_MERCANTILE', 5),
('MINOR_CIV_QUEST_ROUTE_COPIES_RELIGIOUS', 2),
('MINOR_CIV_QUEST_ROUTE_COPIES_FRIENDLY', 10),
('MINOR_CIV_QUEST_ROUTE_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_ROUTE_COPIES_HOSTILE', -8),
('MINOR_CIV_QUEST_ROUTE_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_CONNECT_RESOURCE_COPIES_BASE', 10),
('MINOR_CIV_QUEST_CONNECT_RESOURCE_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_CONNECT_RESOURCE_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_CONNECT_RESOURCE_COPIES_MARITIME', 10),
('MINOR_CIV_QUEST_CONNECT_RESOURCE_COPIES_MERCANTILE', 20),
('MINOR_CIV_QUEST_CONNECT_RESOURCE_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_CONNECT_RESOURCE_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_CONNECT_RESOURCE_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_CONNECT_RESOURCE_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_CONNECT_RESOURCE_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_CONNECT_RESOURCE_COPIES_HYPERLINK', 0), -- Mercantile + Friendly

('MINOR_CIV_QUEST_CONSTRUCT_WONDER_COPIES_BASE', 10),
('MINOR_CIV_QUEST_CONSTRUCT_WONDER_COPIES_CULTURED', 20),
('MINOR_CIV_QUEST_CONSTRUCT_WONDER_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_CONSTRUCT_WONDER_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_CONSTRUCT_WONDER_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_CONSTRUCT_WONDER_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_CONSTRUCT_WONDER_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_CONSTRUCT_WONDER_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_CONSTRUCT_WONDER_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_CONSTRUCT_WONDER_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_CONSTRUCT_WONDER_COPIES_HYPERLINK', 0), -- Religious + Hostile

('MINOR_CIV_QUEST_GREAT_PERSON_COPIES_BASE', 10),
('MINOR_CIV_QUEST_GREAT_PERSON_COPIES_CULTURED', 20),
('MINOR_CIV_QUEST_GREAT_PERSON_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_GREAT_PERSON_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_GREAT_PERSON_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_GREAT_PERSON_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_GREAT_PERSON_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_GREAT_PERSON_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_GREAT_PERSON_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_GREAT_PERSON_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_GREAT_PERSON_COPIES_HYPERLINK', 0), -- Cultured + Friendly

('MINOR_CIV_QUEST_FIND_PLAYER_COPIES_BASE', 10),
('MINOR_CIV_QUEST_FIND_PLAYER_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_FIND_PLAYER_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_FIND_PLAYER_COPIES_MARITIME', 20),
('MINOR_CIV_QUEST_FIND_PLAYER_COPIES_MERCANTILE', 10),
('MINOR_CIV_QUEST_FIND_PLAYER_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_FIND_PLAYER_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_FIND_PLAYER_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_FIND_PLAYER_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_FIND_PLAYER_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_FIND_NATURAL_WONDER_COPIES_BASE', 10),
('MINOR_CIV_QUEST_FIND_NATURAL_WONDER_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_FIND_NATURAL_WONDER_COPIES_MILITARISTIC', -5),
('MINOR_CIV_QUEST_FIND_NATURAL_WONDER_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_FIND_NATURAL_WONDER_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_FIND_NATURAL_WONDER_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_FIND_NATURAL_WONDER_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_FIND_NATURAL_WONDER_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_FIND_NATURAL_WONDER_COPIES_HOSTILE', -7),
('MINOR_CIV_QUEST_FIND_NATURAL_WONDER_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_GIVE_GOLD_COPIES_BASE', 30),
('MINOR_CIV_QUEST_GIVE_GOLD_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_GIVE_GOLD_COPIES_MILITARISTIC', -10),
('MINOR_CIV_QUEST_GIVE_GOLD_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_GIVE_GOLD_COPIES_MERCANTILE', 5),
('MINOR_CIV_QUEST_GIVE_GOLD_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_GIVE_GOLD_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_GIVE_GOLD_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_GIVE_GOLD_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_GIVE_GOLD_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_PLEDGE_TO_PROTECT_COPIES_BASE', 30),
('MINOR_CIV_QUEST_PLEDGE_TO_PROTECT_COPIES_CULTURED', 5),
('MINOR_CIV_QUEST_PLEDGE_TO_PROTECT_COPIES_MILITARISTIC', -10),
('MINOR_CIV_QUEST_PLEDGE_TO_PROTECT_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_PLEDGE_TO_PROTECT_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_PLEDGE_TO_PROTECT_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_PLEDGE_TO_PROTECT_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_PLEDGE_TO_PROTECT_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_PLEDGE_TO_PROTECT_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_PLEDGE_TO_PROTECT_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_BULLY_CITY_STATE_COPIES_BASE', 10),
('MINOR_CIV_QUEST_BULLY_CITY_STATE_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_BULLY_CITY_STATE_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_BULLY_CITY_STATE_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_BULLY_CITY_STATE_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_BULLY_CITY_STATE_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_BULLY_CITY_STATE_COPIES_FRIENDLY', -7),
('MINOR_CIV_QUEST_BULLY_CITY_STATE_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_BULLY_CITY_STATE_COPIES_HOSTILE', 10),
('MINOR_CIV_QUEST_BULLY_CITY_STATE_COPIES_IRRATIONAL', 5),

('MINOR_CIV_QUEST_DENOUNCE_MAJOR_COPIES_BASE', 15),
('MINOR_CIV_QUEST_DENOUNCE_MAJOR_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_DENOUNCE_MAJOR_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_DENOUNCE_MAJOR_COPIES_MARITIME', 5),
('MINOR_CIV_QUEST_DENOUNCE_MAJOR_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_DENOUNCE_MAJOR_COPIES_RELIGIOUS', 10),
('MINOR_CIV_QUEST_DENOUNCE_MAJOR_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_DENOUNCE_MAJOR_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_DENOUNCE_MAJOR_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_DENOUNCE_MAJOR_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_DENOUNCE_MAJOR_COPIES_HYPERLINK', 0), -- Mercantile + Hostile

('MINOR_CIV_QUEST_SPREAD_RELIGION_COPIES_BASE', 10),
('MINOR_CIV_QUEST_SPREAD_RELIGION_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_SPREAD_RELIGION_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_SPREAD_RELIGION_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_SPREAD_RELIGION_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_SPREAD_RELIGION_COPIES_RELIGIOUS', 20),
('MINOR_CIV_QUEST_SPREAD_RELIGION_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_SPREAD_RELIGION_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_SPREAD_RELIGION_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_SPREAD_RELIGION_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_SPREAD_RELIGION_COPIES_HYPERLINK', 0), -- Religious + Friendly

('MINOR_CIV_QUEST_TRADE_ROUTE_COPIES_BASE', 10),
('MINOR_CIV_QUEST_TRADE_ROUTE_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_TRADE_ROUTE_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_TRADE_ROUTE_COPIES_MARITIME', 10),
('MINOR_CIV_QUEST_TRADE_ROUTE_COPIES_MERCANTILE', 10),
('MINOR_CIV_QUEST_TRADE_ROUTE_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_TRADE_ROUTE_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_TRADE_ROUTE_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_TRADE_ROUTE_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_TRADE_ROUTE_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_TRADE_ROUTE_COPIES_HYPERLINK', 0), -- Mercantile + Neutral

('MINOR_CIV_QUEST_FIND_CITY_COPIES_BASE', 10),
('MINOR_CIV_QUEST_FIND_CITY_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_FIND_CITY_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_FIND_CITY_COPIES_MARITIME', 20),
('MINOR_CIV_QUEST_FIND_CITY_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_FIND_CITY_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_FIND_CITY_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_FIND_CITY_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_FIND_CITY_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_FIND_CITY_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_WAR_COPIES_BASE', 10),
('MINOR_CIV_QUEST_WAR_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_WAR_COPIES_MILITARISTIC', 20),
('MINOR_CIV_QUEST_WAR_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_WAR_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_WAR_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_WAR_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_WAR_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_WAR_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_WAR_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_WAR_COPIES_HYPERLINK', 80), -- Militaristic + Friendly

('MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER_COPIES_BASE', 10),
('MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER_COPIES_CULTURED', 20),
('MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER_COPIES_HYPERLINK', 80), -- Cultured + Hostile

('MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT_COPIES_BASE', 10),
('MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT_COPIES_HOSTILE', 20),
('MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT_COPIES_HYPERLINK', 80), -- Militaristic + Hostile

('MINOR_CIV_QUEST_FIND_CITY_STATE_COPIES_BASE', 10),
('MINOR_CIV_QUEST_FIND_CITY_STATE_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_FIND_CITY_STATE_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_FIND_CITY_STATE_COPIES_MARITIME', 20),
('MINOR_CIV_QUEST_FIND_CITY_STATE_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_FIND_CITY_STATE_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_FIND_CITY_STATE_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_FIND_CITY_STATE_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_FIND_CITY_STATE_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_FIND_CITY_STATE_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_LIBERATION_COPIES_BASE', 10),
('MINOR_CIV_QUEST_LIBERATION_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_LIBERATION_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_LIBERATION_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_LIBERATION_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_LIBERATION_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_LIBERATION_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_LIBERATION_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_LIBERATION_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_LIBERATION_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_LIBERATION_COPIES_HYPERLINK', 80), -- Militaristic + Friendly / Mercantile + Hostile

('MINOR_CIV_QUEST_EXPLORE_AREA_COPIES_BASE', 10),
('MINOR_CIV_QUEST_EXPLORE_AREA_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_EXPLORE_AREA_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_EXPLORE_AREA_COPIES_MARITIME', 20),
('MINOR_CIV_QUEST_EXPLORE_AREA_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_EXPLORE_AREA_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_EXPLORE_AREA_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_EXPLORE_AREA_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_EXPLORE_AREA_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_EXPLORE_AREA_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_EXPLORE_AREA_COPIES_HYPERLINK', 80), -- Maritime + Friendly / Maritime + Neutral

('MINOR_CIV_QUEST_BUILD_X_BUILDINGS_COPIES_BASE', 10),
('MINOR_CIV_QUEST_BUILD_X_BUILDINGS_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_BUILD_X_BUILDINGS_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_BUILD_X_BUILDINGS_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_BUILD_X_BUILDINGS_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_BUILD_X_BUILDINGS_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_BUILD_X_BUILDINGS_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_BUILD_X_BUILDINGS_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_BUILD_X_BUILDINGS_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_BUILD_X_BUILDINGS_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_SPY_ON_MAJOR_COPIES_BASE', 10),
('MINOR_CIV_QUEST_SPY_ON_MAJOR_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_SPY_ON_MAJOR_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_SPY_ON_MAJOR_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_SPY_ON_MAJOR_COPIES_MERCANTILE', 20),
('MINOR_CIV_QUEST_SPY_ON_MAJOR_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_SPY_ON_MAJOR_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_SPY_ON_MAJOR_COPIES_NEUTRAL', 20),
('MINOR_CIV_QUEST_SPY_ON_MAJOR_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_SPY_ON_MAJOR_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_COUP_COPIES_BASE', 10),
('MINOR_CIV_QUEST_COUP_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_COUP_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_COUP_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_COUP_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_COUP_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_COUP_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_COUP_COPIES_NEUTRAL', 20),
('MINOR_CIV_QUEST_COUP_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_COUP_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_ACQUIRE_CITY_COPIES_BASE', 0), -- Non-Militaristic CS will not give out this quest at all
('MINOR_CIV_QUEST_ACQUIRE_CITY_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_ACQUIRE_CITY_COPIES_MILITARISTIC', 30),
('MINOR_CIV_QUEST_ACQUIRE_CITY_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_ACQUIRE_CITY_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_ACQUIRE_CITY_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_ACQUIRE_CITY_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_ACQUIRE_CITY_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_ACQUIRE_CITY_COPIES_HOSTILE', 20),
('MINOR_CIV_QUEST_ACQUIRE_CITY_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_ACQUIRE_CITY_COPIES_HYPERLINK', 80), -- Militaristic + Neutral

-- Global Quests
('MINOR_CIV_QUEST_KILL_CAMP_COPIES_BASE', 30),
('MINOR_CIV_QUEST_KILL_CAMP_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_KILL_CAMP_COPIES_MILITARISTIC', 60),
('MINOR_CIV_QUEST_KILL_CAMP_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_KILL_CAMP_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_KILL_CAMP_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_KILL_CAMP_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_KILL_CAMP_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_KILL_CAMP_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_KILL_CAMP_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_KILL_CITY_STATE_COPIES_BASE', 10), -- NOTE: This is a personal quest in Community Patch Only
('MINOR_CIV_QUEST_KILL_CITY_STATE_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_KILL_CITY_STATE_COPIES_MILITARISTIC', 10),
('MINOR_CIV_QUEST_KILL_CITY_STATE_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_KILL_CITY_STATE_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_KILL_CITY_STATE_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_KILL_CITY_STATE_COPIES_FRIENDLY', 0), -- In Community Patch Only, friendly CS will not give this quest out at all
('MINOR_CIV_QUEST_KILL_CITY_STATE_COPIES_NEUTRAL', -6),
('MINOR_CIV_QUEST_KILL_CITY_STATE_COPIES_HOSTILE', 10),
('MINOR_CIV_QUEST_KILL_CITY_STATE_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_CONTEST_CULTURE_COPIES_BASE', 10),
('MINOR_CIV_QUEST_CONTEST_CULTURE_COPIES_CULTURED', 10),
('MINOR_CIV_QUEST_CONTEST_CULTURE_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_CONTEST_CULTURE_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_CONTEST_CULTURE_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_CONTEST_CULTURE_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_CONTEST_CULTURE_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_CONTEST_CULTURE_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_CONTEST_CULTURE_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_CONTEST_CULTURE_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_CONTEST_CULTURE_COPIES_HYPERLINK', 0), -- Cultured + Neutral

('MINOR_CIV_QUEST_CONTEST_FAITH_COPIES_BASE', 5),
('MINOR_CIV_QUEST_CONTEST_FAITH_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_CONTEST_FAITH_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_CONTEST_FAITH_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_CONTEST_FAITH_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_CONTEST_FAITH_COPIES_RELIGIOUS', 15),
('MINOR_CIV_QUEST_CONTEST_FAITH_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_CONTEST_FAITH_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_CONTEST_FAITH_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_CONTEST_FAITH_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_CONTEST_FAITH_COPIES_HYPERLINK', 0), -- Religious + Neutral

('MINOR_CIV_QUEST_CONTEST_TECHS_COPIES_BASE', 10),
('MINOR_CIV_QUEST_CONTEST_TECHS_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_CONTEST_TECHS_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_CONTEST_TECHS_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_CONTEST_TECHS_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_CONTEST_TECHS_COPIES_RELIGIOUS', -5),
('MINOR_CIV_QUEST_CONTEST_TECHS_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_CONTEST_TECHS_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_CONTEST_TECHS_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_CONTEST_TECHS_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_INVEST_COPIES_BASE', 10),
('MINOR_CIV_QUEST_INVEST_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_INVEST_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_INVEST_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_INVEST_COPIES_MERCANTILE', 5),
('MINOR_CIV_QUEST_INVEST_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_INVEST_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_INVEST_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_INVEST_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_INVEST_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_INFLUENCE_COPIES_BASE', 10),
('MINOR_CIV_QUEST_INFLUENCE_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_INFLUENCE_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_INFLUENCE_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_INFLUENCE_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_INFLUENCE_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_INFLUENCE_COPIES_FRIENDLY', 10),
('MINOR_CIV_QUEST_INFLUENCE_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_INFLUENCE_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_INFLUENCE_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_CONTEST_TOURISM_COPIES_BASE', 10),
('MINOR_CIV_QUEST_CONTEST_TOURISM_COPIES_CULTURED', 10),
('MINOR_CIV_QUEST_CONTEST_TOURISM_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_CONTEST_TOURISM_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_CONTEST_TOURISM_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_CONTEST_TOURISM_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_CONTEST_TOURISM_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_CONTEST_TOURISM_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_CONTEST_TOURISM_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_CONTEST_TOURISM_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_ARCHAEOLOGY_COPIES_BASE', 10),
('MINOR_CIV_QUEST_ARCHAEOLOGY_COPIES_CULTURED', 10),
('MINOR_CIV_QUEST_ARCHAEOLOGY_COPIES_MILITARISTIC', 10),
('MINOR_CIV_QUEST_ARCHAEOLOGY_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_ARCHAEOLOGY_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_ARCHAEOLOGY_COPIES_RELIGIOUS', 10),
('MINOR_CIV_QUEST_ARCHAEOLOGY_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_ARCHAEOLOGY_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_ARCHAEOLOGY_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_ARCHAEOLOGY_COPIES_IRRATIONAL', 0),

('MINOR_CIV_QUEST_CIRCUMNAVIGATION_COPIES_BASE', 10),
('MINOR_CIV_QUEST_CIRCUMNAVIGATION_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_CIRCUMNAVIGATION_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_CIRCUMNAVIGATION_COPIES_MARITIME', 10),
('MINOR_CIV_QUEST_CIRCUMNAVIGATION_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_CIRCUMNAVIGATION_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_CIRCUMNAVIGATION_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_CIRCUMNAVIGATION_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_CIRCUMNAVIGATION_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_CIRCUMNAVIGATION_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_CIRCUMNAVIGATION_COPIES_HYPERLINK', 45), -- Maritime + Friendly / Maritime + Neutral

('MINOR_CIV_QUEST_HORDE_COPIES_BASE', 30),
('MINOR_CIV_QUEST_HORDE_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_HORDE_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_HORDE_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_HORDE_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_HORDE_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_HORDE_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_HORDE_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_HORDE_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_HORDE_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_HORDE_COPIES_HYPERLINK', 60), -- Maritime + Hostile

('MINOR_CIV_QUEST_REBELLION_COPIES_BASE', 50),
('MINOR_CIV_QUEST_REBELLION_COPIES_CULTURED', 0),
('MINOR_CIV_QUEST_REBELLION_COPIES_MILITARISTIC', 0),
('MINOR_CIV_QUEST_REBELLION_COPIES_MARITIME', 0),
('MINOR_CIV_QUEST_REBELLION_COPIES_MERCANTILE', 0),
('MINOR_CIV_QUEST_REBELLION_COPIES_RELIGIOUS', 0),
('MINOR_CIV_QUEST_REBELLION_COPIES_FRIENDLY', 0),
('MINOR_CIV_QUEST_REBELLION_COPIES_NEUTRAL', 0),
('MINOR_CIV_QUEST_REBELLION_COPIES_HOSTILE', 0),
('MINOR_CIV_QUEST_REBELLION_COPIES_IRRATIONAL', 0),
('MINOR_CIV_QUEST_REBELLION_COPIES_HYPERLINK', 80); -- Maritime + Hostile

-- Quest reward values
INSERT INTO Defines (Name, Value) SELECT 'BALANCE_INFLUENCE_BOOST_PROTECTION_MINOR', 0; -- modifier to all quest rewards from PTP
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_FRIENDLY', 0; -- modifier to all quest rewards if CS is Friendly
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_HOSTILE', 0; -- modifier to all quest rewards is CS is Hostile
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GOLD_MERCANTILE', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GOLD_MARITIME', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_SCIENCE_RELIGIOUS', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_CULTURE_CULTURED', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_CULTURE_NEUTRAL', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_CULTURE_IRRATIONAL', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_FAITH_RELIGIOUS', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_FAITH_NEUTRAL', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GAP_CULTURED', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GAP_RELIGIOUS', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GAP_IRRATIONAL', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_FOOD_MARITIME', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_FOOD_MERCANTILE', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_FOOD_NEUTRAL', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_PRODUCTION_MILITARISTIC', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_TOURISM_MILITARISTIC', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_TOURISM_CULTURED', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_TOURISM_NEUTRAL', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_TOURISM_IRRATIONAL', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GPP_CULTURED', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GPP_NEUTRAL', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GPP_IRRATIONAL', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GPP_GLOBAL_RELIGIOUS', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GPP_GLOBAL_CULTURED', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GPP_GLOBAL_NEUTRAL', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GENERAL_POINTS_MILITARISTIC', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_GENERAL_POINTS_CULTURED', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_ADMIRAL_POINTS_MARITIME', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_ADMIRAL_POINTS_CULTURED', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_EXPERIENCE_MILITARISTIC', 100;
INSERT INTO Defines (Name, Value) SELECT 'MINOR_CIV_QUEST_REWARD_EXPERIENCE_RELIGIOUS', 100;

-- Warmongering
INSERT INTO Defines (Name, Value) SELECT 'WARMONGER_THREAT_PER_TURN_DECAY_INCREASED', 200;
INSERT INTO Defines (Name, Value) SELECT 'WARMONGER_THREAT_PER_TURN_DECAY_DECREASED', 50;
INSERT INTO Defines (Name, Value) SELECT 'WARMONGER_THREAT_ATTACKED_WEIGHT_WORLD_WAR', 50;
INSERT INTO Defines (Name, Value) SELECT 'WARMONGER_THREAT_ATTACKED_WEIGHT_WORLD_PEACE', 200;
INSERT INTO Defines (Name, Value) SELECT 'WARMONGER_THREAT_ATTACKED_SANCTIONED_PLAYER', 50;

-- Embassy
INSERT INTO Defines (Name, Value) SELECT 'EMBASSY_IMPROVEMENT', 1;

-- Military AI
INSERT INTO Defines (Name, Value) SELECT 'AI_MILITARY_RECAPTURING_CITY_STATE', 200;

-- Diplomat AI
INSERT INTO Defines (Name, Value) SELECT 'INFLUENCE_TARGET_DISTANCE_WEIGHT_VALUE', 3;
INSERT INTO Defines (Name, Value) SELECT 'NEED_DIPLOMAT_THRESHOLD_MODIFIER', 125; -- Higher Threshold = Lower diplomacy desire.
INSERT INTO Defines (Name, Value) SELECT 'NEED_DIPLOMAT_DESIRE_MODIFIER', 2; -- Higher Desire = Higher diplomacy desire.
INSERT INTO Defines (Name, Value) SELECT 'NEED_DIPLOMAT_DISTASTE_MODIFIER', 6; -- Lower distaste = More sensitive to other player's diplomatic actions and/or city-state abuse.

-- World Congress Stuff
INSERT INTO Defines (Name, Value) SELECT 'LEAGUE_PROPOSERS_PER_SESSION', 2;
INSERT INTO Defines (Name, Value) SELECT 'LEAGUE_NUM_LEADERS_FOR_EXTRA_VOTES', 2;
INSERT INTO Defines (Name, Value) SELECT 'LEAGUE_PROJECT_PROGRESS_PERCENT_WARNING', 33;
INSERT INTO Defines (Name, Value) SELECT 'LEAGUE_AID_MAX', 30; -- Max Arts/Sciences % Boost - 1/3 of this is minimum % boost.
INSERT INTO Defines (Name, Value) SELECT 'SCHOLAR_MINOR_ALLY_MULTIPLIER', 2;
INSERT INTO Defines (Name, Value) SELECT 'SCIENCE_LEAGUE_GREAT_WORK_MODIFIER', 1;


-- C4DF Values
-- Share Opinion
INSERT INTO Defines (Name, Value) SELECT 'SHARE_OPINION_TURN_BUFFER', 20; -- How many turns after we meet a civilization must we wait before they'll share their opinion?

-- Help Requests
INSERT INTO Defines (Name, Value) SELECT 'HELP_REQUEST_TURN_LIMIT_MIN', 20; -- Base turns before Help Request can be accepted again.
INSERT INTO Defines (Name, Value) SELECT 'HELP_REQUEST_TURN_LIMIT_RAND', 10; -- Randomized number of turns before Help Request can be accepted again. Added to base turns.

-- Tech Trading
INSERT INTO Defines (Name, Value) SELECT 'TECH_COST_ERA_EXPONENT', 0.7; -- Additional cost per era.

-- Vassalage
INSERT INTO Defines (Name, Value) SELECT 'VASSAL_HAPPINESS_PERCENT', 20; -- What % of the vassal's Happiness does the master get? (NOTE: Halved in VP)
INSERT INTO Defines (Name, Value) SELECT 'VASSAL_PRESSURE_PERCENT', 100; -- What % of the master's majority pressure is applied to Vassal's cities?
INSERT INTO Defines (Name, Value) SELECT 'VASSALAGE_FREE_YIELD_FROM_VASSAL_PERCENT', 20; -- What % of the vassal's Science/Culture/Faith does the master get?
INSERT INTO Defines (Name, Value) SELECT 'VASSAL_TOURISM_MODIFIER', 33; -- What % bonus does the master get to Tourism against the vassal?
INSERT INTO Defines (Name, Value) SELECT 'VASSAL_SCORE_PERCENT', 50; -- What % of the vassal's Land/Population score does the master get?
INSERT INTO Defines (Name, Value) SELECT 'VASSALAGE_VASSAL_TAX_PERCENT_MINIMUM', 0; -- Minimum percent we can tax a vassal's income. Negative values may cause undefined behavior.
INSERT INTO Defines (Name, Value) SELECT 'VASSALAGE_VASSAL_TAX_PERCENT_MAXIMUM', 25; -- Maximum percent we can tax a vassal's income. Values greater than 100% will do nothing. Make sure this is a multiple of 5 please!

INSERT INTO Defines (Name, Value) SELECT 'VASSALAGE_VASSAL_CITY_POP_EXPONENT', 0.8; -- How much does each vassal citizen affect the master's maintenance costs?
INSERT INTO Defines (Name, Value) SELECT 'VASSALAGE_VASSAL_UNIT_MAINT_COST_PERCENT', 10; -- How much does the master pay for the vassal's units?

INSERT INTO Defines (Name, Value) SELECT 'VASSALAGE_VASSAL_LOST_CITIES_THRESHOLD', 75; -- Percentage of vassal cities that must be lost before Vassalage can be ended.
INSERT INTO Defines (Name, Value) SELECT 'VASSALAGE_VASSAL_POPULATION_THRESHOLD', 300; -- Percentage of population over what the vassal started with before Vassalage can be ended.
INSERT INTO Defines (Name, Value) SELECT 'VASSALAGE_VASSAL_MASTER_CITY_PERCENT_THRESHOLD', 60;
INSERT INTO Defines (Name, Value) SELECT 'VASSALAGE_VASSAL_MASTER_POP_PERCENT_THRESHOLD', 60;

INSERT INTO Defines (Name, Value) SELECT 'VASSALAGE_CAPITULATE_BASE_THRESHOLD', 100; -- How likely is a vassal to voluntarily capitulate?
INSERT INTO Defines (Name, Value) SELECT 'VASSALAGE_LIBERATE_BASE_THRESHOLD', 100; -- How likely is a master to voluntarily liberate a vassal?

-- Border growth tile selection
UPDATE Defines SET Value = 200 WHERE Name = 'PLOT_INFLUENCE_RING_COST';
UPDATE Defines SET Value = 20 WHERE Name = 'PLOT_INFLUENCE_WATER_COST';
UPDATE Defines SET Value = -40 WHERE Name = 'PLOT_INFLUENCE_YIELD_POINT_COST'; -- 3 yield tops 1 distance
UPDATE Defines SET Value = -180 WHERE Name = 'PLOT_INFLUENCE_RESOURCE_COST'; -- should be more than 100 to be able to skip one ring
UPDATE Defines SET Value = -500 WHERE Name = 'PLOT_INFLUENCE_NW_COST';

-- Misc. Modmod Defines
INSERT INTO Defines (Name, Value) SELECT 'FRIENDSHIP_THRESHOLD_MOD_MEDIEVAL', 6;
INSERT INTO Defines (Name, Value) SELECT 'FRIENDSHIP_THRESHOLD_MOD_INDUSTRIAL', 10;
INSERT INTO Defines (Name, Value) SELECT 'CITY_STATE_SCALE_PER_CITY_MOD', 0;

-- Fix default max builder interaction with policies
UPDATE Defines SET Value = -9999 WHERE Name = 'DEFAULT_MAX_NUM_BUILDERS';
