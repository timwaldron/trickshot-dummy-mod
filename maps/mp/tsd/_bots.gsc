init()
{
    self thread onBotSpawned();
}

onBotSpawned()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("spawned_player");
        
        if (isDefined(self.pers["respawnLocation"]))
            self setOrigin(self.pers["respawnLocation"]);
    }
}

addBot()
{
    bot = addTestClient();
    bot.pers["isBot"] = true;
    bot.pers["class"] = "class0";
    bot.pers["team"] = "allies";
}
