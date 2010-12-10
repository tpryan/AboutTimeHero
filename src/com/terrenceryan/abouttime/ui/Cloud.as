package com.terrenceryan.abouttime.ui
{
	import com.greensock.*;
	import com.greensock.easing.*;
	
	import flash.display.Loader;
	import flash.net.URLRequest;
	
	public class Cloud extends Loader
	{
		
		private var xArray:Array = new Array(302,90,226);
		private var yArray:Array = new Array(129,76,16);
		private var xOffsetArray:Array = new Array(100,100,20); 
		private var itemPosition:int;
		
		
		public function Cloud(position:int)
		{
			super();
			this.load( new URLRequest( "assets/images/cloud.png" ) );
			this.alpha = 0;
			itemPosition = position;
			
			this.x = xArray[itemPosition] + xOffsetArray[itemPosition];
			this.y = yArray[itemPosition];
			
		}
		
		public function fadeIn():void{
			TweenLite.to(this,1,{alpha:1,x:xArray[itemPosition]});
		}
		
		public function fadeOut():void{
			TweenLite.to(this,1,{alpha:0,x:xArray[itemPosition] + xOffsetArray[itemPosition]});
		}
		
		
	}
}