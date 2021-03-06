#include maps\mp\tsd\_utility;

init()
{
    self notifyActions();
    self notifyListeners();
}

notifyActions()
{
    self notifyOnPlayerCommand("player debug", "+debug");
    self notifyOnPlayerCommand("actionslot 2", "+actionslot 2");
    self notifyOnPlayerCommand("reload", "+reload");
    self notifyOnPlayerCommand("frag", "+frag");
}

notifyListeners()
{
    self thread onDebug();
    self thread onMoveBots();
    self thread onWeaponFired();
}

onDebug()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("player debug");
    }
}

onMoveBots()
{
    self endon("disconnect");
    
    for(;;)
    {
        self waittill("actionslot 2");

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
                player.pers["respawnLocation"] = destination;
            }
        }
    }
}

onWeaponFired()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("weapon_fired");
        hitAssist = getSettingsValue("hitassist");

        if (hitAssist == 0)
            continue;

        start = self getTagOrigin("j_head");
        end = anglesToForward(self getPlayerAngles()) * 100000;
        destination = bulletTrace(start, end, true, self)["position"];

        foreach (player in level.players)
        { 
            if (player.pers["team"] == "axis" || !isAlive(player))
                continue;
        
            if (!bulletTracePassed(self getTagOrigin("j_head"), player getTagOrigin("j_head"), false, self))
                continue;

            if (distance(destination, player.origin) <= 125)
                player thread [[level.callbackPlayerDamage]](self, self, 10000, 8, "MOD_RIFLE_BULLET", self getCurrentWeapon(), (0, 0, 0), (0, 0, 0), "torso_upper", 0);
        }
    }
}

onReload()
{
    self endon("disconnect");
    
    for(;;)
    {
        self waittill("reload");

        if (self hasMenuOpen())
            continue;
    }
}

onFrag()
{
    self endon("disconnect");
    
    for(;;)
    {
        self waittill("frag");

        if (self hasMenuOpen())
            continue;
    }
}
