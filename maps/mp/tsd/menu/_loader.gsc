init()
{
    setMapConfigs();
    setCategoryValues();
}

setMapConfigs()
{
    game["tsd"]["mapnames"]["mp_afghan"]["name"] = "Afghan";
    game["tsd"]["mapnames"]["mp_derail"]["name"] = "Derail";
    game["tsd"]["mapnames"]["mp_estate"]["name"] = "Estate";
    game["tsd"]["mapnames"]["mp_favela"]["name"] = "Favela";
    game["tsd"]["mapnames"]["mp_highrise"]["name"] = "Highrise";
    game["tsd"]["mapnames"]["mp_nightshift"]["name"] = "Skidrow";
    game["tsd"]["mapnames"]["mp_invasion"]["name"] = "Invasion";
    game["tsd"]["mapnames"]["mp_checkpoint"]["name"] = "Karachi";
    game["tsd"]["mapnames"]["mp_quarry"]["name"] = "Quarry";
    game["tsd"]["mapnames"]["mp_rundown"]["name"] = "Rundown";
    game["tsd"]["mapnames"]["mp_rust"]["name"] = "Rust";
    game["tsd"]["mapnames"]["mp_boneyard"]["name"] = "Scrapyard";
    game["tsd"]["mapnames"]["mp_subbase"]["name"] = "Sub Base";
    game["tsd"]["mapnames"]["mp_terminal"]["name"] = "Terminal";
    game["tsd"]["mapnames"]["mp_underpass"]["name"] = "Underpass";
    game["tsd"]["mapnames"]["mp_brecourt"]["name"] = "Wasteland";
}

setCategoryValues()
{
    game["tsd"]["static"]["close"] = "^3[{+toggle_menu}] ^2to ^3close the menu";

    // Teleports / UFO
    game["tsd"]["menu"][0]["title"] = "Teleport Menu";
    setMapTeleportsText();
    game["tsd"]["menu"][0]["action"]["gostand"] = maps\mp\tsd\funcs\_teleport::toggleUFO;
    game["tsd"]["menu"][0]["action"]["melee"] = maps\mp\tsd\funcs\_teleport::saveUFOPosition;
    game["tsd"]["menu"][0]["action"]["reload"] = maps\mp\tsd\funcs\_teleport::loadUFOPosition;
    game["tsd"]["menu"][0]["action"]["actionslot 2"] = maps\mp\tsd\funcs\_teleport::toggleSpawnPosition;
    game["tsd"]["menu"][0]["action"]["frag"] = maps\mp\tsd\_bots::addBot;
    game["tsd"]["menu"][0]["item"][4]["text"] = "^3[{+gostand}] ^2to toggle ^5UFO mode";
    game["tsd"]["menu"][0]["item"][5]["text"] = "^3[{+melee}] ^2to ^5save ^2your current position";
    game["tsd"]["menu"][0]["item"][6]["text"] = "^3[{+reload}] ^2to ^5load ^2your saved position";
    game["tsd"]["menu"][0]["item"][7]["text"] = "^3[{+actionslot 2}] ^2to ^2respawn at your ^5saved position";
    game["tsd"]["menu"][0]["item"][7]["state"] = maps\mp\tsd\funcs\_teleport::checkRespawn;
    game["tsd"]["menu"][0]["item"][9]["text"] = "^3[{+frag}] ^2to ^3spawn a bot";

    
    // Equipment
    game["tsd"]["menu"][1]["title"] = "Equiment";


    // Killstreaks
    game["tsd"]["menu"][2]["title"] = "Killstreaks";


    // Character Preferences
    game["tsd"]["menu"][3]["title"] = "Character Preferences";


    // Match Settings
    game["tsd"]["menu"][4]["title"] = "Match Settings";
    game["tsd"]["menu"][4]["navigable"] = true;
    game["tsd"]["menu"][4]["item"][0]["text"] = "Damage Type";
    game["tsd"]["menu"][4]["item"][0]["id"] = "damagetypes";


    // Fun Stuff
    game["tsd"]["menu"][5]["title"] = "Fun Stuff";
    game["tsd"]["menu"][5]["navigable"] = true;
    game["tsd"]["menu"][5]["item"][0]["text"] = "Aimbot";
    game["tsd"]["menu"][5]["item"][0]["id"] = "aimbot";
    game["tsd"]["menu"][5]["item"][0]["func"] = maps\mp\tsd\funcs\_funstuff::updateAimbot;
    game["tsd"]["menu"][5]["item"][1]["text"] = "Super Jumps";
    game["tsd"]["menu"][5]["item"][1]["id"] = "superjumps";
    game["tsd"]["menu"][5]["item"][1]["func"] = maps\mp\tsd\funcs\_funstuff::updateSuperJumps;
    game["tsd"]["menu"][5]["item"][2]["text"] = "Hit Assist";
    game["tsd"]["menu"][5]["item"][2]["id"] = "hitassist";
    game["tsd"]["menu"][5]["item"][3]["text"] = "Straight No-Scopes";
    game["tsd"]["menu"][5]["item"][3]["id"] = "straightnoscopes";
    game["tsd"]["menu"][5]["item"][3]["func"] = maps\mp\tsd\funcs\_funstuff::updateStraightNoScopes;
    game["tsd"]["menu"][5]["item"][4]["text"] = "Slow Motion";
    game["tsd"]["menu"][5]["item"][4]["id"] = "slowmotion";
    game["tsd"]["menu"][5]["item"][4]["func"] = maps\mp\tsd\funcs\_funstuff::updateSlowMotion;
}

setMapTeleportsText()
{
    switch (getDvar("mapname"))
    {
        case "mp_afghan":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Top of the rocks";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Top of the wing";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Above Bombsite A";
            break;

        case "mp_derail":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Ledge near Bombsite A";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Above NovaStar";
            break;

        case "mp_estate":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Above TF141 Spawn";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Bed above Bombsite A";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Above fishing hut";
            game["tsd"]["menu"][0]["item"][3]["text"] = "^3[{+activate}] ^2to teleport to: ^5Above power grid";
            break;

        case "mp_favela":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Infront of Campers Shack";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Above Soccor courts";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Next to water tank";
            break;

        case "mp_highrise":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Top of Highrise";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Top of Crane";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Platform above Bombsite B";
            game["tsd"]["menu"][0]["item"][3]["text"] = "^3[{+activate}] ^2to teleport to: ^5Climb Spot of Crane";
            break;

        case "mp_nightshift":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Building near Bombsite B";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Next to water tank";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Above alley-way";
            break;

        case "mp_invasion":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Next to American Flag";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Above OpFor spawn";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Above the Coffee Shop";
            break;

        case "mp_checkpoint":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Platform near Bombsite A";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5The top of the truck";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Next to Kashmir Hotel";
            break;

        case "mp_quarry":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Platform near Bombsite A";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Above A080 Tank";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Above Transportadora";
            game["tsd"]["menu"][0]["item"][3]["text"] = "^3[{+activate}] ^2to teleport to: ^5Top of Quarry";
            break;

        case "mp_rundown":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Above Barateiro";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Camping Shack";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5House above the river";
            break;

        case "mp_rust":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Top of Rust";
            break;

        case "mp_boneyard":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Above TF141 Spawn";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5On top of plane shell";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Upstairs in the office";
            break;

        case "mp_subbase":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Communications Room";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Roof near Bombsite A";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Above packing area";
            break;

        case "mp_terminal":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Above Bombsite A";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Wing of plane";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Top of plane";
            game["tsd"]["menu"][0]["item"][3]["text"] = "^3[{+activate}] ^2to teleport to: ^5Top of wing";
            break;

        case "mp_underpass":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Circular platform";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Roof near Bombsite B";
            game["tsd"]["menu"][0]["item"][2]["text"] = "^3[{+smoke}] ^2to teleport to: ^5Roof near Bombsite A";
            break;

        case "mp_brecourt":
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3[{+actionslot 3}] ^2to teleport to: ^5Top of roofless house";
            game["tsd"]["menu"][0]["item"][1]["text"] = "^3[{+actionslot 4}] ^2to teleport to: ^5Top of helicopter";
            break;

        default:
            game["tsd"]["menu"][0]["item"][0]["text"] = "^3This map doesn't have any teleports configured";
            break;
    }
}
