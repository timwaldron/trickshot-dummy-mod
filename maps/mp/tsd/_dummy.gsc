addDummy()
{
    bot = addTestClient();
    bot.pers["isBot"] = true;
    bot.pers["class"] = "class0";
    bot.pers["team"] = "allies";
    
    bot thread onBotSpawned();
}

onBotSpawned()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("spawned_player");
    }
}