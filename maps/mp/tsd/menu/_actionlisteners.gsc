#include maps\mp\tsd\_utility;
#include maps\mp\tsd\menu\_helpers;

init()
{
    self notifyActions();
    self notifyListeners();
}

notifyActions()
{
    self notifyOnPlayerCommand("toggle_menu", "+toggle_menu");

    self notifyOnPlayerCommand("moveleft", "+moveleft");
    self notifyOnPlayerCommand("moveright", "+moveright");
    self notifyOnPlayerCommand("moveforward", "+forward");
    self notifyOnPlayerCommand("moveback", "+back");

    self notifyOnPlayerCommand("frag", "+frag");
    self notifyOnPlayerCommand("actionslot 2", "+actionslot 2");
    self notifyOnPlayerCommand("actionslot 3", "+actionslot 3");
    self notifyOnPlayerCommand("actionslot 4", "+actionslot 4");
    self notifyOnPlayerCommand("smoke", "+smoke");
    self notifyOnPlayerCommand("activate", "+activate");
    self notifyOnPlayerCommand("gostand", "+gostand");
    self notifyOnPlayerCommand("melee", "+melee");
    self notifyOnPlayerCommand("reload", "+reload");
}

notifyListeners()
{
    self thread onToggleMenu();

    self thread onMoveForward();
    self thread onMoveBack();
    self thread onMoveLeft();
    self thread onMoveRight();

    self thread onFrag();
    self thread onActionSlot2();
    self thread onActionSlot3();
    self thread onActionSlot4();
    self thread onSmoke();
    self thread onActivate();
    self thread onStand();
    self thread onMelee();
    self thread onReload();
}

onToggleMenu()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("toggle_menu");
        
        if (self.tsd["menu"]["open"])
            self notify("menu_close");
        else
            self notify("menu_open");
    }
}

// Menu Navigation
onMoveForward()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("moveforward");
        
        if (!self hasMenuOpen() && !isDefined(game["tsd"]["menu"][getContext()]["navigable"]))
            continue;

        self.tsd["menu"]["position"] -= 1;

        if (self.tsd["menu"]["position"] < 0)
        {
            self.tsd["menu"]["position"] = game["tsd"]["menu"][getContext()]["item"].size - 1;
        }

        self notify("menu_draw");
    }
}

onMoveBack()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("moveback");
        
        if (!self hasMenuOpen() && !isDefined(game["tsd"]["menu"][getContext()]["navigable"]))
            continue;

        self.tsd["menu"]["position"] += 1;

        if (self.tsd["menu"]["position"] >= game["tsd"]["menu"][getContext()]["item"].size)
        {
            self.tsd["menu"]["position"] = 0;
        }

        self notify("menu_draw");
    }
}

onMoveLeft()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("moveleft");
        
        if (!self hasMenuOpen())
            continue;
        
        self.tsd["menu"]["position"] = 0;
        self.tsd["menu"]["context"]["screen"] -= 1;

        self notify("menu_draw");
    }
}

onMoveRight()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("moveright");
        
        if (!self hasMenuOpen())
            continue;

        self.tsd["menu"]["position"] = 0;
        self.tsd["menu"]["context"]["screen"] += 1;

        self notify("menu_draw");
    }
}

// Menu Actions
onFrag()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("frag");
        
        if (!self hasMenuOpen())
            continue;

        context = self.tsd["menu"]["context"]["screen"];
        [[game["tsd"]["menu"][getContext()]["action"]["frag"]]]();
        
        self notify("menu_draw");
    }
}

onActionSlot2()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("actionslot 2");
        
        if (!self hasMenuOpen())
            continue;
            
        [[game["tsd"]["menu"][getContext()]["action"]["actionslot 2"]]]();
        
        self notify("menu_draw");
    }
}

onActionSlot3()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("actionslot 3");
        
        if (!self hasMenuOpen())
            continue;

        if (isDefined(game["tsd"]["menu"][getContext()]["teleport"]))
        {
            self maps\mp\tsd\menu\screens\_teleport::teleport("actionslot 3");
            continue;
        }
        
        [[game["tsd"]["menu"][getContext()]["action"]["actionslot 3"]]]();
        
        self notify("menu_draw");
    }
}

onActionSlot4()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("actionslot 4");
        
        if (!self hasMenuOpen())
            continue;
        
        if (isDefined(game["tsd"]["menu"][getContext()]["teleport"]))
        {
            self maps\mp\tsd\menu\screens\_teleport::teleport("actionslot 4");
            continue;
        }

        [[game["tsd"]["menu"][getContext()]["action"]["actionslot 4"]]]();

        self notify("menu_draw");
    }
}

onSmoke()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("smoke");
        
        if (!self hasMenuOpen())
            continue;
        
        if (isDefined(game["tsd"]["menu"][getContext()]["teleport"]))
        {
            self maps\mp\tsd\menu\screens\_teleport::teleport("smoke");
            continue;
        }

        [[game["tsd"]["menu"][getContext()]["action"]["smoke"]]]();
        
        self notify("menu_draw");
    }
}

onActivate()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("activate");
        
        if (!self hasMenuOpen())
            continue;
        
        if (isDefined(game["tsd"]["menu"][getContext()]["teleport"]))
        {
            self maps\mp\tsd\menu\screens\_teleport::teleport("activate");
            continue;
        }

        [[game["tsd"]["menu"][getContext()]["action"]["activate"]]]();
        
        self notify("menu_draw");
    }
}

onStand()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("gostand");
        
        if (!self hasMenuOpen())
            continue;

        context = getContext();

        if (!isDefined(game["tsd"]["menu"][context]["navigable"]))
            [[game["tsd"]["menu"][context]["action"]["gostand"]]]();
        else
            self maps\mp\tsd\menu\_helpers::handleMenuSelect();
        
        self notify("menu_draw");
    }
}

onMelee()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("melee");
        
        if (!self hasMenuOpen())
            continue;
            
        [[game["tsd"]["menu"][getContext()]["action"]["melee"]]]();
        
        self notify("menu_draw");
    }
}


onReload()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("reload");
        
        if (!self hasMenuOpen())
            continue;

        [[game["tsd"]["menu"][getContext()]["action"]["reload"]]]();

        self notify("menu_draw");
    }
}
