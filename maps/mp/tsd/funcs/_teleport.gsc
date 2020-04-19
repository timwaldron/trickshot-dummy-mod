toggleUFO()
{
    self.tsd["ufo"] = !self.tsd["ufo"];

    if (self.tsd["ufo"])
    {
        self allowSpectateTeam("freelook", true);
        self.sessionstate = "spectator";
    }
    else
    {
        self allowSpectateTeam("freelook", false);
        self.sessionstate = "playing";
    }
    
    self notify("menu_close");
}

saveUFOPosition()
{
    self.pers["tsd"]["ufo"]["position"] = self.origin;
    self.pers["tsd"]["ufo"]["angles"] = self.angles;

    self iPrintLn("Your position has been saved");
}

loadUFOPosition()
{
    if (!isDefined(self.pers["tsd"]["ufo"]["position"]))
    {
        self iPrintLn("You need to save a position before you can load it");
        return;
    }

    self setOrigin(self.pers["tsd"]["ufo"]["position"]);
    self setPlayerAngles(self.pers["tsd"]["ufo"]["angles"]);
    
    self notify("menu_close");
}

toggleSpawnPosition()
{
    if (!isDefined(self.pers["tsd"]["ufo"]["position"]))
    {
        self.pers["tsd"]["ufo"]["position"] = self.origin;
        self.pers["tsd"]["ufo"]["angles"] = self.angles;
        self.pers["tsd"]["ufo"]["respawn"] = true;

        self iPrintLn("Your position and respawn point have been saved");
    }
    else
    {
        self.pers["tsd"]["ufo"]["respawn"] = !self.pers["tsd"]["ufo"]["respawn"];
    }

    self notify("menu_draw");
}

checkRespawn()
{
    if (self.pers["tsd"]["ufo"]["respawn"] == true)
        return "^2enabled";
    else
        return "^1disabled";
}
