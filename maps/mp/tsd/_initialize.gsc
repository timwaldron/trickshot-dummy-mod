Callback_TrickShotDummy()
{
    if (!isDefined(game["tsd"]["init"]))
    {
        initDvars();
        initSniperList();
        initGameSettings();
        maps\mp\tsd\_config::init();
        maps\mp\tsd\menu\_schema::init();
        
        game["tsd"]["init"] = true;
    }

    setRoundSettings();
    maps\mp\tsd\_players::init();
}

setRoundSettings()
{
    level.onOneLeftEvent = undefined;
}

initDvars()
{
    setDvar("ui_allow_teamchange", 0);

    setDvar("g_TeamName_Axis", "Player Team");
    setDvar("g_TeamName_Allies", "Bot Team");

    setDvar("testClients_doMove", 0);
    setDvar("testClients_doAttack", 0);
}

initSniperList()
{
    game["tsd"]["weaponlist"][0] = "cheytac";
    game["tsd"]["weaponlist"][1] = "barrett";
    game["tsd"]["weaponlist"][2] = "wa2000";
    game["tsd"]["weaponlist"][3] = "m21";
    game["tsd"]["weaponlist"][4] = "m40a3";
}

initGameSettings()
{
    // Match Settings
    game["tsd"]["settings"]["damagetype"]["value"] = 1;
    game["tsd"]["settings"]["damagetype"]["options"][0]["text"] = "Standard Game";
    game["tsd"]["settings"]["damagetype"]["options"][1]["text"] = "Snipers";
    game["tsd"]["settings"]["damagetype"]["options"][2]["text"] = "Custom List";

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
