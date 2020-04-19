init()
{
    setAdmins();
    setCustomWeaponList();
}

setAdmins()
{
    // game["tsd"]["admins"]["<PLAYER GUID>"] = true;
}

setCustomWeaponList()
{
    game["tsd"]["customlist"][0] = "cheytac";
    // game["tsd"]["customlist"][1] = "barrett";
    // game["tsd"]["customlist"][2] = "wa2000";
    // game["tsd"]["customlist"][3] = "m21";
    // game["tsd"]["customlist"][4] = "m40a3";
}
