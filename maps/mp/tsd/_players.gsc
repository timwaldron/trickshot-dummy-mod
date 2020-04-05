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

        player.pers["team"] = "axis";
        player setPlayerVariables();
        player thread onPlayerSpawn();
        player thread onPlayerDebug();
    }
}

onPlayerSpawn()
{
    level endon("disconnect");

    for(;;)
    {
		self waittill("spawned_player");
    }
}

onPlayerDebug()
{
    self endon("disconnect");
    self notifyOnPlayerCommand("player_debug", "+debug");

    for(;;)
    {
        self waittill("player_debug");

        maps\mp\tsd\_bots::addBot();
    }
}

setPlayerVariables()
{
    self.menuOpen = false;
}