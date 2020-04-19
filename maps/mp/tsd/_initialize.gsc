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

    setupRoundVariables();
    maps\mp\tsd\_players::init();
}

setupTSDVariables()
{
    // Match Settings
    game["tsd"]["settings"]["damagetypes"]["value"] = 1;
    game["tsd"]["settings"]["damagetypes"]["options"][0]["text"] = "Standard Game";
    game["tsd"]["settings"]["damagetypes"]["options"][1]["text"] = "Snipers & Hitmarkers";
    game["tsd"]["settings"]["damagetypes"]["options"][2]["text"] = "Snipers Only";
    game["tsd"]["settings"]["damagetypes"]["options"][3]["text"] = "Custom List";

    // Fun Stuff
    game["tsd"]["settings"]["aimbot"]["value"] = 0;
    game["tsd"]["settings"]["aimbot"]["options"][0]["text"] = "Off";
    game["tsd"]["settings"]["aimbot"]["options"][1]["text"] = "On";
    
    game["tsd"]["settings"]["superjumps"]["value"] = 0;
    game["tsd"]["settings"]["superjumps"]["options"][0]["text"] = "Off";
    game["tsd"]["settings"]["superjumps"]["options"][1]["text"] = "On";
    
    game["tsd"]["settings"]["hitassist"]["value"] = 0;
    game["tsd"]["settings"]["hitassist"]["options"][0]["text"] = "Off";
    game["tsd"]["settings"]["hitassist"]["options"][1]["text"] = "Close To Enemy";
    game["tsd"]["settings"]["hitassist"]["options"][2]["text"] = "Within Player FOV";
    
    game["tsd"]["settings"]["straightnoscopes"]["value"] = 0;
    game["tsd"]["settings"]["straightnoscopes"]["options"][0]["text"] = "Off";
    game["tsd"]["settings"]["straightnoscopes"]["options"][1]["text"] = "On";
    
    game["tsd"]["settings"]["slowmotion"]["value"] = 0;
    game["tsd"]["settings"]["slowmotion"]["options"][0]["text"] = "100 Percent";
    game["tsd"]["settings"]["slowmotion"]["options"][1]["text"] = "75 Percent";
    game["tsd"]["settings"]["slowmotion"]["options"][2]["text"] = "50 Percent";
    game["tsd"]["settings"]["slowmotion"]["options"][3]["text"] = "25 Percent";
}

setupRoundVariables()
{
    level.onOneLeftEvent = undefined;
}

setupGameDvars()
{
    setDvar("ui_allow_teamchange", 0);

    setDvar("g_TeamName_Allies", "Bot Team");
    setDvar("g_TeamName_Axis", "Player Team");

    setDvar("testClients_doMove", 0);
    setDvar("testClients_doAttack", 0);
}
