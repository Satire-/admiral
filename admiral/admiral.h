#include "admiral_macros.h"

class Admiral {
    isEnabled = 0;
    isDebuggingEnabled = 1; // Always disabled on dedicated server
    areNVGsEnabled = 1;
    isBehaviorEnabled = 1;
    canSpawnOnRoof = 1;
    allowCrewInImmobile = 1;
    transferNonPlayableGroupsToHc = 1; // Non-playable groups are that do not have playable units in them

    sideRelations[] = {
        {"west", "east", "enemy"},
        {"west", "resistance", "friend"},
        {"east", "west", "enemy"},
        {"east", "resistance", "enemy"},
        {"resistance", "west", "friend"},
        {"resistance", "east", "enemy"}
    };

    class Camp {
        defaultUnitTemplate = "Base";
        defaultZoneTemplate = "Camp";
    };

    class Patrol {
        defaultUnitTemplate = "Base";
        defaultZoneTemplate = "Patrol";
    };

    class Cqc {
        defaultUnitTemplate = "Base";
        defaultZoneTemplate = "Cqc";
        forceFireEnabled = 1;
        forceFireDelay = 5;
        buildingBlacklist[] = {"Land_dum_mesto2l", "Land_dum_mesto3", "dum_mesto3"};
        buildingCapacity[] = {
            {"Land_House_C_2_EP1", 4},
            {"Land_House_K_6_EP1", 4},
            {"Land_House_K_7_EP1", 4},
            {"Land_A_GeneralStore_01", 4}
        };
    };

    #include "unit_templates.h"
    #include "zone_templates.h"
};