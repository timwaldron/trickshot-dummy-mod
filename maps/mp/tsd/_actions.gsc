#include maps\mp\tsd\_utility;

init()
{
    self thread notifySenders();
    self thread notifyListeners();
}

notifySenders()
{
    self notifyOnPlayerCommand("player_debug", "+debug");
    self notifyOnPlayerCommand("move_bots", "+actionslot 2");
}

notifyListeners()
{
    self thread onPlayerDebug();
    self thread onPlayerMoveBots();
}

onPlayerDebug()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("player_debug");

        maps\mp\tsd\_bots::addBot();
    }
}

onPlayerMoveBots()
{
    self endon("disconnect");
    
    for(;;)
    {
        self waittill("move_bots");

        if (!self isAdmin())
            continue;

        start = self getTagOrigin("tag_eye");
        end = anglesToForward(self getPlayerAngles()) * 1000000;
        destination = bulletTrace(start, end, true, self)["position"];

        foreach(player in level.players)
        {
            if (isDefined(player.pers["isBot"]))
            {
                player setOrigin(destination);
            }
        }
    }
}

