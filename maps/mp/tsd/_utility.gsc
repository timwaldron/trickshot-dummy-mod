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

getGameSettingValue(settingId)
{
    return game["tsd"]["settings"][settingId]["value"];
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

error(message)
{
    iPrintLn("^1ERROR: " + message);
}