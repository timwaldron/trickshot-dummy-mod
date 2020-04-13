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
    self.pers["tsd"]["ufo"]["savePos"] = self.origin;
    self.pers["tsd"]["ufo"]["saveAng"] = self.angles;

    self iPrintLn("Location saved");
}

loadUFOPosition()
{
    if (!isDefined(self.pers["tsd"]["ufo"]["savePos"]))
    {
        self iPrintLn("You have to save a location before you can load it");
        return;
    }

    self setOrigin(self.pers["tsd"]["ufo"]["savePos"]);
    self setPlayerAngles(self.pers["tsd"]["ufo"]["saveAng"]);
    
    self notify("menu_close");
}