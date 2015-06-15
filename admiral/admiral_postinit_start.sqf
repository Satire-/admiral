#include "admiral_macros.h"

#include "\userconfig\admiral\log\postinit.h"
#include "logbook.h"


[] call adm_fnc_compile;

if (isMultiplayer) then {
    adm_isDebuggingEnabled = false;
};

[] call adm_id_fnc_init; DEBUG("admiral.id","Init function 'adm_id_fnc_init' called.");
[] call adm_settings_fnc_init; DEBUG("admiral.settings","Init function 'adm_settings_fnc_init' called.");
[] call adm_zone_fnc_init; DEBUG("admiral.settings","Init function 'adm_zone_fnc_init' called.");
[] call adm_cqc_fnc_init; DEBUG("admiral.cqc","Init function 'adm_cqc_fnc_init' called.");
[] call adm_camp_fnc_init; DEBUG("admiral.camp","Init function 'adm_camp_fnc_init' called.");
[] call adm_patrol_fnc_init; DEBUG("admiral.patrol","Init function 'adm_patrol_fnc_init' called.");
[] call adm_rupture_fnc_checkUnits; DEBUG("admiral.rupture","Init function 'adm_rupture_fnc_checkUnits' called.");

if (adm_isBehaviorEnabled) then {
    INFO("admiral.behavior","Admiral Behavior system is enabled.");
    [] call adm_behavior_fnc_init; DEBUG("admiral.behavior","Init function 'adm_behavior_fnc_init' called.");
};

if (adm_isDebuggingEnabled) then {
    [] call adm_debug_fnc_init; DEBUG("admiral.debug","Init function 'adm_debug_fnc_init' called.");
};

adm_isInitialized = true;
INFO("admiral",FMT_1("Admiral version '%1' has been successfully initialized.",STR_ADMIRAL_VERSION));