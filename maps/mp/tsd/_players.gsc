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
            player thread maps\mp\tsd\_bots::init();
            continue;
        }

        player setPlayerVariables();
        player thread maps\mp\tsd\_actions::init();
    }
}

setPlayerVariables()
{
    if (self isHost() && !isDefined(game["tsd"]["admins"][self.guid]))
        game["tsd"]["admins"][self.guid] = true;

    self.pers["team"] = "axis";
    self.menuOpen = false;
}

onPlayerSpawn()
{
    level endon("disconnect");

    for(;;)
    {
        self waittill("spawned_player");
    }
}
