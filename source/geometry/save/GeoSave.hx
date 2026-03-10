package geometry.save;

import flixel.util.FlxSave;

class GeoSave
{
	private static var _save:FlxSave;
	private static final _template = {
	
	}

	public static function init()
	{
		_save = new FlxSave();
		_save.bind("hxgd_save");
	}
}