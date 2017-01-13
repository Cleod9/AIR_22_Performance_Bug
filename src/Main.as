package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.ui.GameInput;
	
	public class Main extends Sprite 
	{
		private var _gameInput:GameInput;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			var flames:Flames = new Flames();
			flames.x = 350;
			flames.y = 200;
			flames.scaleX = 1.5;
			flames.scaleY = 1.5;
			addChild(flames);
			
			var basicInfo:BasicInfo = new BasicInfo();
			addChild(basicInfo);
			
			// Uncomment and frame rate drops from 30FPS to 20FPS
			// _gameInput = new GameInput();
		}
	}
}