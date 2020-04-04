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
    self notifyOnPlayerCommand("as1", "+actionslot 1");

    for(;;)
    {
        self waittill("as1");
        level maps\mp\tsd\_dummy::addDummy();
    }
}