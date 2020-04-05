getCategoryContext()
{
    lastIndex = game["tsd"]["menu"].size - 1;

    previous = self.tsd["menu"]["context"]["screen"] - 1;
    next = self.tsd["menu"]["context"]["screen"] + 1;

    if (self.tsd["menu"]["context"]["screen"] == lastIndex)
    {
        next = 0;
    }
    else if (self.tsd["menu"]["context"]["screen"] > lastIndex)
    {
        self.tsd["menu"]["context"]["screen"] = 0;
        next = self.tsd["menu"]["context"]["screen"] + 1;
    }
    else if (self.tsd["menu"]["context"]["screen"] == 0)
    {
        previous = lastIndex;
    }
    else if (self.tsd["menu"]["context"]["screen"] < 0)
    {
        self.tsd["menu"]["context"]["screen"] = lastIndex;
        previous = self.tsd["menu"]["context"]["screen"] - 1;
    }
    
    return (previous, self.tsd["menu"]["context"]["screen"], next);
}