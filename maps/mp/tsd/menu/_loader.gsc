init()
{
    setMapNames();
    setCategoryValues();
}

setMapNames()
{
    game["tsd"]["mapnames"]["mp_afghan"] = "Afghan";
    game["tsd"]["mapnames"]["mp_derail"] = "Derail";
    game["tsd"]["mapnames"]["mp_estate"] = "Estate";
    game["tsd"]["mapnames"]["mp_favela"] = "Favela";
    game["tsd"]["mapnames"]["mp_highrise"] = "Highrise";
    game["tsd"]["mapnames"]["mp_nightshift"] = "Skidrow";
    game["tsd"]["mapnames"]["mp_invasion"] = "Invasion";
    game["tsd"]["mapnames"]["mp_checkpoint"] = "Karachi";
    game["tsd"]["mapnames"]["mp_quarry"] = "Quarry";
    game["tsd"]["mapnames"]["mp_rundown"] = "Rundown";
    game["tsd"]["mapnames"]["mp_rust"] = "Rust";
    game["tsd"]["mapnames"]["mp_boneyard"] = "Scrapyard";
    game["tsd"]["mapnames"]["mp_subbase"] = "Sub Base";
    game["tsd"]["mapnames"]["mp_terminal"] = "Terminal";
    game["tsd"]["mapnames"]["mp_underpass"] = "Underpass";
    game["tsd"]["mapnames"]["mp_brecourt"] = "Wasteland";
}

getCurrentMapName()
{
    mapname = getDvar("mapname");
    return game["tsd"]["mapnames"][mapname];
}

getMapName(mapname)
{
    if (!isDefined(game["tsd"]["mapnames"][mapname]))
        return mapname;
    else
        return game["tsd"]["mapnames"][mapname];
}

setCategoryValues()
{
    game["tsd"]["static"]["close"] = "^2Press ^3[{+toggle_menu}] ^2to ^3close the menu";

    // Teleports / UFO
    game["tsd"]["menu"][0]["title"] = getCurrentMapName() + " Teleport Menu";
    game["tsd"]["menu"][0]["body"][0]["text"] = "^2Press ^3[{+frag}] ^2to ^3spawn a bot";
    game["tsd"]["menu"][0]["body"][0]["func"] = maps\mp\tsd\_bots::addBot;
    game["tsd"]["menu"][0]["body"][1]["text"] = "^2Press ^3[{+actionslot 2}] ^2to ^3move bots to crosshairs";
    setMapTeleports();
    
    // Equipment
    game["tsd"]["menu"][1]["title"] = "Equiment";


    // Killstreaks
    game["tsd"]["menu"][2]["title"] = "Killstreaks";


    // Character Preferences
    game["tsd"]["menu"][3]["title"] = "Character Preferences";
}

setMapTeleports()
{
    switch (getDvar("mapname"))
    {
        case "mp_afghan":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Top of the rocks";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Top of the wing";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Above Bombsite A";
            break;

        case "mp_derail":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Ledge near Bombsite A";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Above NovaStar";
            break;

        case "mp_estate":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Above TF141 Spawn";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Bed above Bombsite A";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Above fishing hut";
            game["tsd"]["menu"][0]["body"][5]["text"] = "^2Press ^3[{+activate}] ^2to teleport to: ^5Above power grid";
            break;

        case "mp_favela":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Infront of Campers Shack";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Above Soccor courts";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Next to water tank";
            break;

        case "mp_highrise":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Top of Highrise";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Top of Crane";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Platform above Bombsite B";
            game["tsd"]["menu"][0]["body"][5]["text"] = "^2Press ^3[{+activate}] ^2to teleport to: ^5Climb Spot of Crane";
            break;

        case "mp_nightshift":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Building near Bombsite B";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Next to water tank";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Above alley-way";
            break;

        case "mp_invasion":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Next to American Flag";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Above OpFor spawn";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Above the Coffee Shop";
            break;

        case "mp_checkpoint":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Platform near Bombsite A";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5The top of the truck";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Next to Kashmir Hotel";
            break;

        case "mp_quarry":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Platform near Bombsite A";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Above A080 Tank";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Above Transportadora";
            game["tsd"]["menu"][0]["body"][5]["text"] = "^2Press ^3[{+activate}] ^2to teleport to: ^5Top of Quarry";
            break;

        case "mp_rundown":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Above Barateiro";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Camping Shack";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5House above the river";
            break;

        case "mp_rust":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Top of Rust";
            break;

        case "mp_boneyard":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Above TF141 Spawn";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5On top of plane shell";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Upstairs in the office";
            break;

        case "mp_subbase":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Communications Room";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Roof near Bombsite A";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Above packing area";
            break;

        case "mp_terminal":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Above Bombsite A";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Wing of plane";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Top of plane";
            game["tsd"]["menu"][0]["body"][5]["text"] = "^2Press ^3[{+activate}] ^2to teleport to: ^5Top of wing";
            break;

        case "mp_underpass":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Circular platform";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Roof near Bombsite B";
            game["tsd"]["menu"][0]["body"][4]["text"] = "^2Press ^3[{+smoke}] ^2to teleport to: ^5Roof near Bombsite A";
            break;

        case "mp_brecourt":
            game["tsd"]["menu"][0]["body"][2]["text"] = "^2Press ^3[{+actionslot 3}] ^2to teleport to: ^5Top of roofless house";
            game["tsd"]["menu"][0]["body"][3]["text"] = "^2Press ^3[{+actionslot 4}] ^2to teleport to: ^5Top of helicopter";
            break;

        default:
            game["tsd"]["menu"][0]["body"][2]["text"] = "^3This map doesn't have any teleports configured";
            break;
    }
}
                