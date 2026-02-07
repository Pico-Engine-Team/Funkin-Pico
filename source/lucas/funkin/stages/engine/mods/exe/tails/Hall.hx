package lucas.funkin.stages.engine.mods.exe.tails;

class HallStage extends BaseStage
{
    var sky:BGSprite;
    override function create()
    {
        sky = new BGSprite('Tails/hall/hall',  -500, -400);
        sky.scale.set(1.7, 1.7);
        sky.scrollFactor.set(1, 1);
        add(sky);
    }
}