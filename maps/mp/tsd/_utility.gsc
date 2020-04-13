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

debug(message, object)
{
    if (isDefined(object))
        iPrintLn("^3DEBUG: " + message + " | Object Value: " + object);
    else
        iPrintLn("^3DEBUG: " + message + " | Object Value: undefined");
}