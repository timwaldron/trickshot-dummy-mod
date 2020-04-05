isBot()
{
    return isDefined(self.pers["isBot"]);
}

debug(message, object)
{
    if (isDefined(object))
        iPrintLn("^3DEBUG: " + message + " | Object: " + object);
    else
        iPrintLn("^3DEBUG: " + message);
}