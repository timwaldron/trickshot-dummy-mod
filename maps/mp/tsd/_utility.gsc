isBot()
{
    return isDefined(self.pers["isBot"]);
}

isAdmin()
{
    return isDefined(game["tsd"]["admins"][self.guid]);
}

hasMenuOpen()
{
    return self.tsd["menu"]["open"];
}

getContext()
{
    return self.tsd["menu"]["context"]["screen"];
}

getSettingsValue(settingId)
{
    return game["tsd"]["settings"][settingId]["value"];
}

getMapName(mapcode)
{
    if (isDefined(game["tsd"]["mapdata"][mapcode]["name"]))
        return game["tsd"]["mapdata"][mapcode]["name"];

    return mapcode;
}

isFatalWeapon(weapon, damageType)
{
    listId = "weaponlist";

    if (damageType == 2)
        listId = "customlist";

    foreach (key, value in game["tsd"][listId])
    {
        if (isSubStr(weapon, value))
            return true;
    }

    return false;
}

debugObject(message, object)
{
    if (isDefined(object))
        iPrintLn("^3DEBUG: " + message + " | Object Value: " + object);
    else
        iPrintLn("^3DEBUG: " + message + " | Object Value: undefined");
}

info(message)
{
    iPrintLn("^2INFO: " + message);
}
