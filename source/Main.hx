package;

import flixel.FlxGame;
import openfl.display.Sprite;
import openfl.Lib;
import flixel.FlxG;
import flixel.util.FlxSignal.FlxTypedSignal;
import geometry.states.LoadingState;

class GeometryGame extends FlxGame
{
	public static var onGameCrash(default, null):FlxTypedSignal<(haxe.Exception) -> Void> = new FlxTypedSignal<(haxe.Exception) -> Void>();

	/**
	 * Used to instantiate the guts of the flixel game object once we have a valid reference to the root.
	 */
	override function create(_):Void
	{
		try
			super.create(_)
		catch (e)
			onCrash(e);
	}

	override function onFocus(_):Void
	{
		try
			super.onFocus(_)
		catch (e)
			onCrash(e);
	}

	override function onFocusLost(_):Void
	{
		try
			super.onFocusLost(_)
		catch (e)
			onCrash(e);
	}

	/**
	 * Handles the `onEnterFrame` call and figures out how many updates and draw calls to do.
	 */
	override function onEnterFrame(_):Void
	{
		try
			super.onEnterFrame(_)
		catch (e)
			onCrash(e);
	}

	/**
	 * This function is called by `step()` and updates the actual game state.
	 * May be called multiple times per "frame" or draw call.
	 */
	override function update():Void
	{
		try
			super.update()
		catch (e)
			onCrash(e);
	}

	/**
	 * Goes through the game state and draws all the game objects and special effects.
	 */
	override function draw():Void
	{
		try
			super.draw()
		catch (e)
			onCrash(e);
	}

	private final function onCrash(e:haxe.Exception):Void
	{
		if (onGameCrash != null)
		{
			onGameCrash.dispatch(e);
		}
	}
}

class Main extends Sprite
{
	public static function main():Void
	{
		Lib.current.addChild(new Main());
	}

	public function new()
	{
		super();
		addChild(new GeometryGame(1280, 720, LoadingState, 60, true, false));

		FlxG.fixedTimestep = false;
		FlxG.game.focusLostFramerate = 60;
		FlxG.keys.preventDefaultKeys = [TAB];
		FlxG.mouse.useSystemCursor = true;
	}
}
