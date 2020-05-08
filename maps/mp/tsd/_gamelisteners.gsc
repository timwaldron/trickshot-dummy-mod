init()
{
    level thread onEndOfRound();
}

onEndOfRound()
{
    level endon("disconnect");

    for(;;)
    {
        level waittill("round_win");

        setDvar("timescale", 1);
    }
}