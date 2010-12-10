package com.terrenceryan.abouttime.ui
{
	import flash.display.Sprite;
	
	public class Day extends Sprite
	{
		
		
		private var dayBG:Background = null;
		private var sun:Sun = null;
		private var cloud0:Cloud = null;
		private var cloud1:Cloud = null;
		private var cloud2:Cloud = null;
		
		public function Day()
		{
			super();
			drawDay();
		}
		
		
		protected function drawDay():void{
			
			dayBG = new Background(800, 480, "Day");
			sun = new Sun();
			cloud0 = new Cloud(0);
			cloud1 = new Cloud(1);
			cloud2 = new Cloud(2);
			
			addChild( dayBG );
			addChild( sun );
			addChild( cloud0 );
			addChild( cloud1 );
			addChild( cloud2 );
			
		}
		
		public function fadeOut():void{
			sun.fadeOut();
			cloud0.fadeOut();
			cloud1.fadeOut();
			cloud2.fadeOut();
			dayBG.fadeOut();
		}
		
		public function fadeIn():void{
			dayBG.fadeIn();
			sun.fadeIn();
			cloud0.fadeIn();	
			cloud1.fadeIn();
			cloud2.fadeIn();
		}
		
		
	}
}