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
            player maps\mp\tsd\_bots::init();
            continue;
        }

        player setPlayerVariables();
        player setPlayerTSDVariables();
        player thread onPlayerSpawned();
        player maps\mp\tsd\menu\_setup::init();
        player maps\mp\tsd\_actionlisteners::init();
    }
}

onPlayerSpawned()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("spawned_player");

        if (isDefined(self.pers["tsd"]["ufo"]["position"]) && self.pers["tsd"]["ufo"]["respawn"])
        {
            self setOrigin(self.pers["tsd"]["ufo"]["position"]);
            self setPlayerAngles(self.pers["tsd"]["ufo"]["angles"]);
        }
    }
}

setPlayerTSDVariables()
{
    // Non-persistent player variables
    self.tsd["ufo"] = false;

    // Persistent player variables
    if (!isDefined(self.pers["tsd"]["init"]))
    {
        self.pers["tsd"]["init"] = true;

        self.pers["tsd"]["ufo"]["position"] = undefined;
        self.pers["tsd"]["ufo"]["angles"] = undefined;
        self.pers["tsd"]["ufo"]["respawn"] = false;
    }
}

setPlayerVariables()
{
    if (self isHost() && !isDefined(game["tsd"]["admins"][self.guid]))
        game["tsd"]["admins"][self.guid] = true;

    self.pers["lives"] = 100000;

    self.pers["team"] = "axis";
    self allowSpectateTeam("axis", true);
}
