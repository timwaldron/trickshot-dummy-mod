#include maps\mp\tsd\_utility;

updateAimbot(value)
{   
    info("updateAimbot not implemented");
}

updateSuperJumps(value)
{
    info("updateSuperJumps not implemented");
}

updateStraightNoScopes(value)
{
    info("updateStraightNoScopes not implemented");
}

updateSlowMotion(value)
{   
    slowMotionValues[0] = 1;
    slowMotionValues[1] = 0.75;
    slowMotionValues[2] = 0.5;
    slowMotionValues[3] = 0.25;

    setDvar("timescale", slowMotionValues[value]);
}
