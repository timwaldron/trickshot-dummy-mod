init()
{
    setMenuData();
    setMapData();
}

setMenuData()
{
    game["tsd"]["static"]["close"] = "^3[{+toggle_menu}] ^2to ^3close the menu";

    // Teleports / UFO
    game["tsd"]["menu"][0]["title"] = "Teleport Menu";
    game["tsd"]["menu"][0]["teleport"] = true;
    game["tsd"]["menu"][0]["action"]["gostand"] = maps\mp\tsd\menu\screens\_teleport::toggleUFO;
    game["tsd"]["menu"][0]["action"]["melee"] = maps\mp\tsd\menu\screens\_teleport::saveUFOPosition;
    game["tsd"]["menu"][0]["action"]["reload"] = maps\mp\tsd\menu\screens\_teleport::loadUFOPosition;
    game["tsd"]["menu"][0]["action"]["actionslot 2"] = maps\mp\tsd\menu\screens\_teleport::toggleSpawnPosition;
    game["tsd"]["menu"][0]["action"]["frag"] = maps\mp\tsd\_bots::addBot;
    game["tsd"]["menu"][0]["item"][4]["text"] = "^3[{+gostand}] ^2to toggle ^5UFO mode";
    game["tsd"]["menu"][0]["item"][5]["text"] = "^3[{+melee}] ^2to ^5save ^2your current position";
    game["tsd"]["menu"][0]["item"][6]["text"] = "^3[{+reload}] ^2to ^5load ^2your saved position";
    game["tsd"]["menu"][0]["item"][7]["text"] = "^3[{+actionslot 2}] ^5respawn ^2at ^5saved position";
    game["tsd"]["menu"][0]["item"][7]["state"] = maps\mp\tsd\menu\screens\_teleport::checkRespawn;
    game["tsd"]["menu"][0]["item"][9]["text"] = "^3[{+frag}] ^2to ^3spawn a bot";
    setTeleportText();

    
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
    game["tsd"]["menu"][4]["item"][0]["id"] = "damagetype";


    // Fun Stuff
    game["tsd"]["menu"][5]["title"] = "Fun Stuff";
    game["tsd"]["menu"][5]["navigable"] = true;
    game["tsd"]["menu"][5]["item"][0]["text"] = "Aimbot";
    game["tsd"]["menu"][5]["item"][0]["id"] = "aimbot";
    game["tsd"]["menu"][5]["item"][0]["func"] = maps\mp\tsd\menu\screens\_funstuff::updateAimbot;
    game["tsd"]["menu"][5]["item"][1]["text"] = "Super Jumps";
    game["tsd"]["menu"][5]["item"][1]["id"] = "superjumps";
    game["tsd"]["menu"][5]["item"][1]["func"] = maps\mp\tsd\menu\screens\_funstuff::updateSuperJumps;
    game["tsd"]["menu"][5]["item"][2]["text"] = "Hit Assist";
    game["tsd"]["menu"][5]["item"][2]["id"] = "hitassist";
    game["tsd"]["menu"][5]["item"][3]["text"] = "Straight No-Scopes";
    game["tsd"]["menu"][5]["item"][3]["id"] = "straightnoscopes";
    game["tsd"]["menu"][5]["item"][3]["func"] = maps\mp\tsd\menu\screens\_funstuff::updateStraightNoScopes;
    game["tsd"]["menu"][5]["item"][4]["text"] = "Slow Motion";
    game["tsd"]["menu"][5]["item"][4]["id"] = "slowmotion";
    game["tsd"]["menu"][5]["item"][4]["func"] = maps\mp\tsd\menu\screens\_funstuff::updateSlowMotion;
}

setMapData()
{
    game["tsd"]["mapdata"]["mp_afghan"]["name"] = "Afghan";
    game["tsd"]["mapdata"]["mp_afghan"]["location"]["actionslot 3"] = (1930, 2640, 460);
    game["tsd"]["mapdata"]["mp_afghan"]["location"]["actionslot 4"] = (1250, 1580, 450);
    game["tsd"]["mapdata"]["mp_afghan"]["location"]["smoke"] = (1715, 780, 266);
    
    game["tsd"]["mapdata"]["mp_derail"]["name"] = "Derail";
    game["tsd"]["mapdata"]["mp_derail"]["location"]["actionslot 3"] = (1770, 3222, 460);
    game["tsd"]["mapdata"]["mp_derail"]["location"]["actionslot 4"] = (60, -2633, 360);
    
    game["tsd"]["mapdata"]["mp_estate"]["name"] = "Estate";
    game["tsd"]["mapdata"]["mp_estate"]["location"]["actionslot 3"] = (-2626, 1087, -29);
    game["tsd"]["mapdata"]["mp_estate"]["location"]["actionslot 4"] = (606, 810, 360);
    game["tsd"]["mapdata"]["mp_estate"]["location"]["smoke"] = (1215, 3512, 360);
    game["tsd"]["mapdata"]["mp_estate"]["location"]["activate"] = (-2845, 3407, -100);
    
    game["tsd"]["mapdata"]["mp_favela"]["name"] = "Favela";
    game["tsd"]["mapdata"]["mp_favela"]["location"]["actionslot 3"] = (-300, -454, 330);
    game["tsd"]["mapdata"]["mp_favela"]["location"]["actionslot 4"] = (137, 155, 323);
    game["tsd"]["mapdata"]["mp_favela"]["location"]["smoke"] = (-847, 314, 310);
    
    game["tsd"]["mapdata"]["mp_highrise"]["name"] = "Highrise";
    game["tsd"]["mapdata"]["mp_highrise"]["location"]["actionslot 3"] = (-2745.45, 6400, 3250);
    game["tsd"]["mapdata"]["mp_highrise"]["location"]["actionslot 4"] = (-1630.05, 8476.14, 3300);
    game["tsd"]["mapdata"]["mp_highrise"]["location"]["activate"] = (-132.1, 7777.6, 3173.6);
    game["tsd"]["mapdata"]["mp_highrise"]["location"]["smoke"] = (-108.495, 6121.45, 3110);
    
    game["tsd"]["mapdata"]["mp_nightshift"]["name"] = "Skidrow";
    game["tsd"]["mapdata"]["mp_nightshift"]["location"]["actionslot 3"] = (-2131, -360, 160);
    game["tsd"]["mapdata"]["mp_nightshift"]["location"]["actionslot 4"] = (-250, 150, 200);
    game["tsd"]["mapdata"]["mp_nightshift"]["location"]["smoke"] = (-600, -1914, 170);
    
    game["tsd"]["mapdata"]["mp_invasion"]["name"] = "Invasion";
    game["tsd"]["mapdata"]["mp_invasion"]["location"]["actionslot 3"] = (670, -1114, 500);
    game["tsd"]["mapdata"]["mp_invasion"]["location"]["actionslot 4"] = (-2890, -2440, 450);
    game["tsd"]["mapdata"]["mp_invasion"]["location"]["smoke"] = (-2000, -3000, 450);
    
    game["tsd"]["mapdata"]["mp_checkpoint"]["name"] = "Karachi";
    game["tsd"]["mapdata"]["mp_checkpoint"]["location"]["actionslot 3"] = (-700, -200, 400);
    game["tsd"]["mapdata"]["mp_checkpoint"]["location"]["actionslot 4"] = (-771, 1555, 175);
    game["tsd"]["mapdata"]["mp_checkpoint"]["location"]["smoke"] = (854, 844, 270);
    
    game["tsd"]["mapdata"]["mp_quarry"]["name"] = "Quarry";
    game["tsd"]["mapdata"]["mp_quarry"]["location"]["actionslot 3"] = (-4520, -160, 370);
    game["tsd"]["mapdata"]["mp_quarry"]["location"]["actionslot 4"] = (-3730, 1725, 295);
    game["tsd"]["mapdata"]["mp_quarry"]["location"]["smoke"] = (-4782, 800, 250);
    game["tsd"]["mapdata"]["mp_quarry"]["location"]["activate"] = (-3992.64, -1964.77, 528.125);
    
    game["tsd"]["mapdata"]["mp_rundown"]["name"] = "Rundown";
    game["tsd"]["mapdata"]["mp_rundown"]["location"]["actionslot 3"] = (938, -502, 250);
    game["tsd"]["mapdata"]["mp_rundown"]["location"]["actionslot 4"] = (-700, -200, 215);
    game["tsd"]["mapdata"]["mp_rundown"]["location"]["smoke"] = (-1227, -838, 200);
    
    game["tsd"]["mapdata"]["mp_rust"]["name"] = "Rust";
    game["tsd"]["mapdata"]["mp_rust"]["location"]["actionslot 3"] = (683.246, 1066.97, 266.611);
    
    game["tsd"]["mapdata"]["mp_boneyard"]["name"] = "Scrapyard";
    game["tsd"]["mapdata"]["mp_boneyard"]["location"]["actionslot 3"] = (-1500, 822, 170);
    game["tsd"]["mapdata"]["mp_boneyard"]["location"]["actionslot 4"] = (425, 425, 100);
    game["tsd"]["mapdata"]["mp_boneyard"]["location"]["smoke"] = (2200, 350, 12);
    
    game["tsd"]["mapdata"]["mp_subbase"]["name"] = "Sub Base";
    game["tsd"]["mapdata"]["mp_subbase"]["location"]["actionslot 3"] = (700, -1100, 290);
    game["tsd"]["mapdata"]["mp_subbase"]["location"]["actionslot 4"] = (210, 210, 350);
    game["tsd"]["mapdata"]["mp_subbase"]["location"]["smoke"] = (-650, -1700, 280);
    
    game["tsd"]["mapdata"]["mp_terminal"]["name"] = "Terminal";
    game["tsd"]["mapdata"]["mp_terminal"]["location"]["actionslot 3"] = (2000, 4350, 305);
    game["tsd"]["mapdata"]["mp_terminal"]["location"]["actionslot 4"] = (1000, 3180, 200);
    game["tsd"]["mapdata"]["mp_terminal"]["location"]["smoke"] = (600, 3800, 370);
    game["tsd"]["mapdata"]["mp_terminal"]["location"]["activate"] = (613, 2448, 600);
    
    game["tsd"]["mapdata"]["mp_underpass"]["name"] = "Underpass";
    game["tsd"]["mapdata"]["mp_underpass"]["location"]["actionslot 3"] = (1122, 940, 670);
    game["tsd"]["mapdata"]["mp_underpass"]["location"]["actionslot 4"] = (2800, 300, 480);
    game["tsd"]["mapdata"]["mp_underpass"]["location"]["smoke"] = (-50, 1450, 550);
    
    game["tsd"]["mapdata"]["mp_brecourt"]["name"] = "Wasteland";
    game["tsd"]["mapdata"]["mp_brecourt"]["location"]["actionslot 3"] = (1078, -2377, 270);
    game["tsd"]["mapdata"]["mp_brecourt"]["location"]["actionslot 4"] = (-2944, 342, 250);
}

setTeleportText()
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