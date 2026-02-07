package lucas.states.funkin;

// Pico Engine stages and Menus
import lucas.funkin.stages.engine.standard.*;
import lucas.funkin.stages.engine.mods.*;
import lucas.funkin.stages.engine.erect.*;
import lucas.funkin.stages.engine.mods.funkadelix.week3.*; // (This section here is exclusively for the music from Funkadelix and the stages.)
import lucas.funkin.stages.engine.mods.exe.*; // (This section here is exclusively for the music from Sonic.exe and the stages.)
import lucas.funkin.stages.engine.mods.exe.encore.*; // (sonic.exe mod encore stages)
import lucas.funkin.stages.engine.mods.sonic.exe.tails.*; // (Exclusive stages for the music from the tails.exe mod.)
import lucas.funkin.stages.engine.mods.kapi.*; // (This section here is exclusively for the music from Kapi mod and the stages.)
import lucas.states.funkin.scripts.menus.MainMenuState;

import haxe.ds.List;
import psychlua.FunkinLua;

class EnginePreload extends BaseStage
{
    #if LUA_ALLOWED
    public static function implement(funk:FunkinLua)
    {
        var lua:State = funk.lua;
        funk.set('versionPS', MainMenuState.PicoVersion.trim());
    }
    #end
    public static function addstage(name:String) 
    {
        switch (name)
        {
            case 'phillyFunkadelix': new PhillyFunkadelix();   //Week 3 (Funkadelix Mix) 
            case 'basement': new Basement();                   //Week Special Jerry
            case "endlessEncore": new EndlessEncore();         //Sonic.exe Mod Encore
        }
    }
}