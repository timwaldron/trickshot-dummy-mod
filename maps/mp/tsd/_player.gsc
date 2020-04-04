init()
{
    level thread onPlayerConnect();
}

onPlayerConnect()
{
    level endon("disconnect");

    for(;;)
    {
		level waittill("connected", player);

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
        level maps\mp\tsd\_dummy::addDummy();
    }
}