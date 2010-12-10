package com.terrenceryan.abouttime.ui
{
	import flash.net.URLRequest;
	import flash.display.Loader;
	import com.greensock.*;
	import com.greensock.easing.*;
	
	public class Sun extends Loader
	{
		public function Sun()
		{
			super();
			this.load( new URLRequest( "assets/images/sun.png" ) );
			this.alpha = 0;
			this.y = 50;
		}
		
		public function fadeIn():void{
			TweenLite.to(this,1,{alpha:1,y:10});
		}
		
		public function fadeOut():void{
			TweenLite.to(this,1,{alpha:0,y:50});
		}
		
	}
	
}