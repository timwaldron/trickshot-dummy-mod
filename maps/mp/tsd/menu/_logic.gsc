#include maps\mp\tsd\_utility;

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

getItemValue(itemId)
{
    if (!isDefined(game["tsd"]["settings"][itemId]["value"]))
        return undefined;

    itemIndex = game["tsd"]["settings"][itemId]["value"];

    return game["tsd"]["settings"][itemId]["options"][itemIndex]["text"];
}

handleMenuSelect()
{
    screenId = getContext();
    positionId = self.tsd["menu"]["position"];
    itemId = game["tsd"]["menu"][screenId]["item"][positionId]["id"];

    game["tsd"]["settings"][itemId]["value"] += 1;

    if (game["tsd"]["settings"][itemId]["value"] >= game["tsd"]["settings"][itemId]["options"].size)
        game["tsd"]["settings"][itemId]["value"] = 0;

    [[game["tsd"]["menu"][screenId]["item"][positionId]["func"]]](game["tsd"]["settings"][itemId]["value"]);

    self notify("menu_draw");
}
