addDummy()
{
    bot = addTestClient();
    bot.pers["isBot"] = true;
    
    bot waittill("connected");
    
    bot notify("menuresponse", game["menu_team"], "allies");
    bot notify("menuresponse", "changeclass", "class0");
}

onBotConnected()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("connected");
    }
}

onBotSpawned()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("spawned_player");
    }
}