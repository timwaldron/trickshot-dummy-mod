#include maps\mp\tsd\_utility;
#include maps\mp\tsd\menu\_logic;

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

    self notifyOnPlayerCommand("fraged", "+frag");
    self notifyOnPlayerCommand("actionslot_2", "+actionslot 2");
    self notifyOnPlayerCommand("actionslot_3", "+actionslot 3");
    self notifyOnPlayerCommand("actionslot_4", "+actionslot 4");
    self notifyOnPlayerCommand("smoked", "+smoke");
    self notifyOnPlayerCommand("activated", "+activated");
    self notifyOnPlayerCommand("gostand", "+gostand");
    self notifyOnPlayerCommand("melee", "+melee");
    self notifyOnPlayerCommand("reloaded", "+reload");
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
        
        if (!self hasMenuOpen())
            continue;
    }
}

onMoveBack()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("moveback");
        
        if (!self hasMenuOpen())
            continue;
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

        self.tsd["menu"]["context"]["screen"] += 1;

        self notify("menu_draw");
    }
}

// Menu Actions
onFrag()
{
    self endon("disconnect");
    actionIndex = 0;

    for(;;)
    {
        self waittill("fraged");
        
        if (!self hasMenuOpen())
            continue;

        context = self.tsd["menu"]["context"]["screen"];
        [[game["tsd"]["menu"][context]["body"][actionIndex]["func"]]]();
        
        self notify("menu_draw");
    }
}

onActionSlot2()
{
    self endon("disconnect");
    actionIndex = 1;

    for(;;)
    {
        self waittill("actionslot_2");
        
        if (!self hasMenuOpen())
            continue;
            
        [[game["tsd"]["menu"][getContext()]["body"][actionIndex]["func"]]]();
        
        self notify("menu_draw");
    }
}

onActionSlot3()
{
    self endon("disconnect");
    actionIndex = 2;

    for(;;)
    {
        self waittill("actionslot_3");
        
        if (!self hasMenuOpen())
            continue;
        
        self notify("menu_draw");
    }
}

onActionSlot4()
{
    self endon("disconnect");
    actionIndex = 3;

    for(;;)
    {
        self waittill("actionslot_4");
        
        if (!self hasMenuOpen())
            continue;
        
        self notify("menu_draw");
    }
}

onSmoke()
{
    self endon("disconnect");
    actionIndex = 4;

    for(;;)
    {
        self waittill("smoked");
        
        if (!self hasMenuOpen())
            continue;
        
        self notify("menu_draw");
    }
}

onActivate()
{
    self endon("disconnect");
    actionIndex = 5;

    for(;;)
    {
        self waittill("activated");
        
        if (!self hasMenuOpen())
            continue;
        
        self notify("menu_draw");
    }
}

onStand()
{
    self endon("disconnect");
    actionIndex = 6;

    for(;;)
    {
        self waittill("gostand");
        
        if (!self hasMenuOpen())
            continue;

        [[game["tsd"]["menu"][getContext()]["body"][actionIndex]["func"]]]();
        
        self notify("menu_draw");
    }
}

onMelee()
{
    self endon("disconnect");
    actionIndex = 7;

    for(;;)
    {
        self waittill("melee");
        
        if (!self hasMenuOpen())
            continue;
            
        [[game["tsd"]["menu"][getContext()]["body"][actionIndex]["func"]]]();
        
        self notify("menu_draw");
    }
}


onReload()
{
    self endon("disconnect");
    actionIndex = 8;

    for(;;)
    {
        self waittill("reloaded");
        
        if (!self hasMenuOpen())
            continue;

        [[game["tsd"]["menu"][getContext()]["body"][actionIndex]["func"]]]();

        self notify("menu_draw");
    }
}