#include maps\mp\tsd\_utility;

init()
{
    level thread onPlayerConnect();
}

onPlayerConnect()
{
    for(;;)
    {
        level waittill("connected", player);

        if (player isBot())
        {
            player maps\mp\tsd\_bots::init();
            continue;
        }

        player setPlayerVariables();
        player maps\mp\tsd\menu\_setup::init();
        player maps\mp\tsd\_actionlisteners::init();
    }
}

setPlayerVariables()
{
    if (self isHost() && !isDefined(game["tsd"]["admins"][self.guid]))
        game["tsd"]["admins"][self.guid] = true;

    self.pers["team"] = "axis";
}
