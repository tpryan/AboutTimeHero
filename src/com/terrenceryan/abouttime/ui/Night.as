package com.terrenceryan.abouttime.ui
{
	import flash.display.Sprite;
	
	public class Night extends Sprite
	{
		private var nightBG:Background = null;
		private var moon:Moon = null;
		private var star0:Star = null;
		private var star1:Star = null;
		private var star2:Star = null;
		private var star3:Star = null;
		private var star4:Star = null;
		private var star5:Star = null;
		private var star6:Star = null;
		
		public function Night()
		{
			super();
			drawNight();
		}
		
		protected function drawNight():void{
			nightBG = new Background(800, 480, "Night");
			moon = new Moon();
			star0 = new Star(0);
			star1 = new Star(1);
			star2 = new Star(2);
			star3 = new Star(3);
			star4 = new Star(4);
			star5 = new Star(5);
			star6 = new Star(6);
			
			addChild( nightBG );
			addChild( star0 );
			addChild( star1 );
			addChild( star2 );
			addChild( star3 );
			addChild( star4 );
			addChild( star5 );
			addChild( star6 );
			addChild( moon );
			
		}
		
		
		public function fadeOut():void{
			star0.fadeOut();
			star1.fadeOut();
			star2.fadeOut();
			star3.fadeOut();
			star4.fadeOut();
			star5.fadeOut();
			star6.fadeOut();
			moon.fadeOut();
			nightBG.fadeOut();
			
		}
		
		public function fadeIn():void{
			nightBG.fadeIn();
			moon.fadeIn();
			star0.fadeIn();
			star1.fadeIn();
			star2.fadeIn();
			star3.fadeIn();
			star4.fadeIn();
			star5.fadeIn();
			star6.fadeIn();
		}
		
	}
}