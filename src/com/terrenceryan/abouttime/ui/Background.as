package com.terrenceryan.abouttime.ui
{
	import com.greensock.*;
	import com.greensock.easing.*;
	
	import flash.display.GradientType;
	import flash.display.Graphics;
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.utils.clearInterval;
	import flash.utils.setInterval;
	
	public class Background extends Sprite
	{
		
		private var alphaInterval:Number;
		
		public function Background(height:int, width:int, timeOfDay:String)
		{
			super();
			init(height,width,timeOfDay);
		}
		
		public function fadeOut():void{
			TweenLite.to(this,1,{alpha:0});
		}
		
		public function fadeIn():void{
			TweenLite.to(this,1,{alpha:1});
		}
		
		private function init(height:int, width:int, timeOfDay:String):void{
			var fType:String = GradientType.LINEAR;
			var colors:Array = getTimeOfDayColors(timeOfDay);
			var alphas:Array = [ 1, 1 ];
			var ratios:Array = [ 0, 255 ];
			var matr:Matrix = new Matrix();
			matr.createGradientBox( 200, height, Math.PI/2, 0,0);
			var sprMethod:String = SpreadMethod.PAD;
			
			var g:Graphics = this.graphics;
			g.beginGradientFill( fType, colors, alphas, ratios, matr, sprMethod );
			g.drawRect(0, 0, width, height );
			
			if (timeOfDay == "DuskDawn"){
				this.alpha = 1;
			}
			else{
				this.alpha = 0;
			}
			
		}
		
		private function getTimeOfDayColors(timeOfDay:String):Array{
			var colors:Array = new Array();
			
			if (timeOfDay == "Day"){
				colors = [ 0xccffff, 0x80a3ff ];
				
			}
			else if (timeOfDay == "DuskDawn"){
				colors = [ 0xccffff, 0x2e3c64 ];
			}
			else{
				colors = [ 0x708fe4, 0x2e3c64 ];
			}
			return colors;
		}
		
		
	}
}