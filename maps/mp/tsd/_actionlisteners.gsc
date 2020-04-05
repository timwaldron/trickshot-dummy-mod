#include maps\mp\tsd\_utility;

init()
{
    self notifyActions();
    self notifyListeners();
}

notifyActions()
{
    self notifyOnPlayerCommand("player_debug", "+debug");
    self notifyOnPlayerCommand("actionslot_2", "+actionslot 2");
    self notifyOnPlayerCommand("reloaded", "+reload");
    self notifyOnPlayerCommand("fraged", "+frag");
}

notifyListeners()
{
    self thread onDebug();
    self thread onMoveBots();
}

onDebug()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("player_debug");
    }
}

onMoveBots()
{
    self endon("disconnect");
    
    for(;;)
    {
        self waittill("actionslot_2");

        if (!self isAdmin() || self hasMenuOpen())
            continue;

        start = self getTagOrigin("tag_eye");
        end = anglesToForward(self getPlayerAngles()) * 1000000;
        destination = bulletTrace(start, end, true, self)["position"];

        foreach(player in level.players)
        {
            if (player isBot())
            {
                player setOrigin(destination);
            }
        }
    }
}

onReload()
{
    self endon("disconnect");
    
    for(;;)
    {
        self waittill("reloaded");

        if (self hasMenuOpen())
            continue;
    }
}

onFrag()
{
    self endon("disconnect");
    
    for(;;)
    {
        self waittill("fraged");

        if (self hasMenuOpen())
            continue;
    }
}