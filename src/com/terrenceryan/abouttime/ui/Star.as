package com.terrenceryan.abouttime.ui
{
	import com.greensock.*;
	import com.greensock.easing.*;
	
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class Star extends Loader
	{
		private var xArray:Array = new Array(149,231,90,396,168,250,306);
		private var yArray:Array = new Array(31,131,40,116,88,56,6);
		private var dArray:Array = new Array(2.5,1.7,.9,3.2,1.4,1.3,.4);
		private var itemPosition:int;
		
		public function Star(position:int)
		{
			super();
			
			this.load( new URLRequest( "assets/images/star.png" ) );
			this.alpha = 0;
			itemPosition = position;
			
			this.x = xArray[itemPosition];
			this.y = yArray[itemPosition];
		}
		
		public function fadeIn():void{
			var timer:Timer = new Timer(100 * dArray[itemPosition], 1)
			timer.addEventListener(TimerEvent.TIMER, handleFadeIn);
			timer.start();
			
		}
		
		private function handleFadeIn(event:TimerEvent):void{
			TweenLite.to(this,1,{alpha:1});
		}
		
		public function fadeOut():void{
			var timer:Timer = new Timer(500 * dArray[itemPosition], 1)
			timer.addEventListener(TimerEvent.TIMER, handleFadeOut);
			timer.start();
		}
		
		private function handleFadeOut(event:TimerEvent):void{
			TweenLite.to(this,1,{alpha:0});
		}
	}
}