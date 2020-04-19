#include maps\mp\tsd\_utility;

updateAimbot(value)
{   
    info("Aimbot not implemented");
}

updateSuperJumps(value)
{
    info("Super Jumps not implemented");
}

updateStraightNoScopes(value)
{
    info("Straight No-Scopes not implemented");
}

updateSlowMotion(value)
{   
    slowMotionValues[0] = 1;
    slowMotionValues[1] = 0.75;
    slowMotionValues[2] = 0.5;
    slowMotionValues[3] = 0.25;

    setDvar("timescale", slowMotionValues[value]);
}
