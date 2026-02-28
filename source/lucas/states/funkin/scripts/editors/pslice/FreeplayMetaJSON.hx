package lucas.states.funkin.scripts.editors.pslice;

import haxe.Json;
import backend.Song;

class FreeplayMetaJSON
{
    public function new() {}
    public var artist:String = "unknown";
    public var composer:String = "unknown";
    public var charter:String = "unknown";

    /**
     * Populate this object from a parsed JSON structure.
     * Returns `this` so callers can chain if needed.
     */
    public function mergeWithJson(json:Dynamic):FreeplayMetaJSON {
        if(json == null) return this;
        // fields may be missing or have unexpected types, convert to string
        if(json.artist != null) artist = Std.string(json.artist);
        if(json.composer != null) composer = Std.string(json.composer);
        if(json.charter != null) charter = Std.string(json.charter);
        return this;
    }
}