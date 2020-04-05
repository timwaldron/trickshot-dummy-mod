init()
{
    self setupMenuVariables();
    self maps\mp\tsd\menu\_draw::init();
    self maps\mp\tsd\menu\_actionlisteners::init();
}

setupMenuVariables()
{
    self.tsd["menu"]["open"] = false;
    self.tsd["menu"]["context"]["screen"] = 0;
    self.tsd["menu"]["position"] = 0;
}