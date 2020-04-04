init()
{
    level setGameDvars();
    level thread maps\mp\tsd\_player::init();
}

setGameDvars()
{
    setDvar("ui_maxclients", "18");
    setDvar("scr_sd_numlives", "999");
	
    setDvar("g_TeamName_Allies", "Bot Team");
    setDvar("g_TeamName_Axis", "Player Team");
}