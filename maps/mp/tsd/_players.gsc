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

        player setGameVariables();
        player setTSDVariables();
        player thread onPlayerSpawned();
        player maps\mp\tsd\_actionlisteners::init();
        player maps\mp\tsd\menu\_renderer::init();
        player maps\mp\tsd\menu\_actionlisteners::init();
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

setGameVariables()
{
    if (self isHost() && !isDefined(game["tsd"]["admins"][self.guid]))
        game["tsd"]["admins"][self.guid] = true;

    self.pers["team"] = "axis";
    self allowSpectateTeam("axis", true);
}

setTSDVariables()
{
    // Non-persistent player variables, will reset each round
    self.tsd["ufo"] = false;

    self.tsd["menu"]["open"] = false;
    self.tsd["menu"]["context"]["screen"] = 0;
    self.tsd["menu"]["position"] = 0;

    // Persistent player variables
    if (!isDefined(self.pers["tsd"]["init"]))
    {
        self.pers["tsd"]["init"] = true;

        self.pers["tsd"]["ufo"]["position"] = undefined;
        self.pers["tsd"]["ufo"]["angles"] = undefined;
        self.pers["tsd"]["ufo"]["respawn"] = false;
    }
}
