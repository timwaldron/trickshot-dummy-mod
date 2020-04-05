Callback_TrickShotDummy()
{
    if (!isDefined(game["tsd"]["init"]))
    {
        setupTSDVariables();
        setupGameDvars();
        maps\mp\tsd\_admins::setAdmins();
        maps\mp\tsd\menu\_loader::init();
        
        game["tsd"]["init"] = true;
    }
    
    maps\mp\tsd\_players::init();
}

setupTSDVariables()
{
    game["tsd"]["damageTypes"] = 1;
}

setupGameDvars()
{
    setDvar("ui_allow_teamchange", 0);

    setDvar("g_TeamName_Allies", "Bot Team");
    setDvar("g_TeamName_Axis", "Player Team");

    setDvar("testClients_doMove", 0);
    setDvar("testClients_doAttack", 0);
}