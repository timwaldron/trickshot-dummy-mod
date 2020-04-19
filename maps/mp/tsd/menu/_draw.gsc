#include maps\mp\tsd\_utility;
#include maps\mp\tsd\menu\_logic;
#include maps\mp\gametypes\_hud_util;

init()
{
    self setupMenuText();

    self thread menuOpen();
    self thread menuDraw();
    self thread menuClose();
}

setupMenuText()
{
    self.tsd["menu"]["text"]["title"] = createFontString("default", 2);
    self.tsd["menu"]["text"]["title"] setPoint("CENTER", "CENTER", 0, -150);
    self.tsd["menu"]["text"]["previous"] = self createFontString("default", 1.5);
    self.tsd["menu"]["text"]["previous"] setPoint("CENTER", "CENTER", -200, -150);
    self.tsd["menu"]["text"]["next"] = self createFontString("default", 1.5);
    self.tsd["menu"]["text"]["next"] setPoint("CENTER", "CENTER", 200, -150);

    yPos = -80;
    for (index = 0; index < 15; index++)
    {
        self.tsd["menu"]["text"]["item"][index] = self createFontString("default", 1.5);
        self.tsd["menu"]["text"]["item"][index] setPoint("CENTER", "CENTER", 0, yPos);
        yPos += 20;
    }

    self.tsd["menu"]["text"]["close"] = self createFontString("default", 2);
    self.tsd["menu"]["text"]["close"] setPoint("CENTER", "CENTER", 0, 160);
}

menuOpen()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("menu_open");

        self freezeControls(true);
        self setBlurForPlayer(4, 0);

        self notify("menu_draw");
    }
}

menuDraw()
{
    self endon("disconnect");

    for(;;)
    {
        self waittill("menu_draw");
        self.tsd["menu"]["open"] = true;

        context = self getCategoryContext();

        prev = int(context[0]);
        curr = int(context[1]);
        next = int(context[2]);

        self.tsd["menu"]["text"]["previous"] setText("^3" + game["tsd"]["menu"][prev]["title"]);
        self.tsd["menu"]["text"]["title"] setText("^6" + game["tsd"]["menu"][curr]["title"]);
        self.tsd["menu"]["text"]["next"] setText("^3"+ game["tsd"]["menu"][next]["title"]);

        foreach (key, value in self.tsd["menu"]["text"]["item"])
        {
            self.tsd["menu"]["text"]["item"][key] setText("");
        }

        if (isDefined(game["tsd"]["menu"][curr]["navigable"]))
        {
            textIndex = 0;

            foreach (key, value in game["tsd"]["menu"][curr]["item"])
            {
                colorCode = "^3";

                if (self.tsd["menu"]["position"] == textIndex)
                    colorCode = "^2";

                itemValue = getItemValue(game["tsd"]["menu"][curr]["item"][key]["id"]);

                if (!isDefined(itemValue))
                    self.tsd["menu"]["text"]["item"][key] setText(colorCode + game["tsd"]["menu"][curr]["item"][key]["text"]);
                else
                    self.tsd["menu"]["text"]["item"][key] setText(colorCode + game["tsd"]["menu"][curr]["item"][key]["text"] + "^4: " + itemValue);


                textIndex += 1;
            }
        }
        else
        {
            foreach (key, value in game["tsd"]["menu"][curr]["item"])
            {
                if (!isDefined(game["tsd"]["menu"][curr]["item"][key]["state"]))
                {
                    self.tsd["menu"]["text"]["item"][key] setText(game["tsd"]["menu"][curr]["item"][key]["text"]);
                }
                else
                {
                    val = [[game["tsd"]["menu"][curr]["item"][key]["state"]]]();
                    self.tsd["menu"]["text"]["item"][key] setText(game["tsd"]["menu"][curr]["item"][key]["text"] + ": " + val);
                }
            }
        }

        self.tsd["menu"]["text"]["close"] setText(game["tsd"]["static"]["close"]);
    }
}

menuClose()
{
    self endon("disconnect");
    
    for(;;)
    {
        self waittill("menu_close");
        self.tsd["menu"]["open"] = false;

        foreach (key, value in self.tsd["menu"]["text"]["item"])
        {
            self.tsd["menu"]["text"]["item"][key] setText("");
        }
        
        foreach (key, value in self.tsd["menu"]["text"])
        {
            self.tsd["menu"]["text"][key] setText("");
        }
    
        self.tsd["menu"]["context"]["screen"] = 0;

        self freezeControls(false);
        self setBlurForPlayer(0, 0);
    }
}