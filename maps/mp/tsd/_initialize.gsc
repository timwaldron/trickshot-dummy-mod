#include maps\mp\tsd\_utility;

Callback_TrickShotDummy()
{
	if (!isDefined(game["tsd"]["init"]))
	{
        setTSDVariables();
        setGameDvars();
        game["tsd"]["init"] = true;
	}
    
    level thread maps\mp\tsd\_players::init();
}

setTSDVariables()
{
    game["tsd"]["damageTypes"] = 1;
}

setGameDvars()
{
    setDvar("ui_maxclients", 18);
    setDvar("ui_allow_teamchange", 0);
	
    setDvar("g_TeamName_Allies", "Bot Team");
    setDvar("g_TeamName_Axis", "Player Team");

    setDvar("testClients_doMove", 0);
    setDvar("testClients_doAttack", 0);
}
