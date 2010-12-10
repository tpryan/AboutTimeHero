package com.terrenceryan.abouttime.ui
{
	import flash.display.DisplayObject;
	import flash.display.GradientType;
	import flash.display.Shape;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	
	import flashx.textLayout.formats.TextAlign;
	
	public class StateToggleButton extends SimpleButton
	{
		public function StateToggleButton( upState:DisplayObject = null, overState:DisplayObject = null, downState:DisplayObject = null, hitTestState:DisplayObject = null )
		{
			super( upState, overState, downState, hitTestState );
			init();
		}
		
		private function init():void
		{
			var alphas:Array = [1, 1];
			var colors:Array = [0xCCCCCC, 0x999999];			
			var ratios:Array = [0x00, 0xFF];
			var matrix:Matrix = new Matrix();
			var hit:Shape = null;
			var state:Sprite = null;
			
			matrix.createGradientBox( 100, 100, 90 * ( Math.PI / 180 ) );			
			
			// Up
			state = new Sprite();
			state.graphics.lineStyle( 1, 0x00FF00, 0 );
			state.graphics.drawRoundRect( 0, 0, 100, 100, 50, 50 );
			state.graphics.endFill();
			
			upState = state;

			// Hit
			hit = new Shape();	
			hit.graphics.lineStyle( 1, 0x00FF00, 0 );
			hit.graphics.beginGradientFill( GradientType.LINEAR, colors, alphas, ratios, matrix );  
			hit.graphics.drawRoundRect( 0, 0, 100, 100, 50, 50 );
			hit.graphics.endFill();			
			
			hitTestState = hit;
			
			// Over
			colors = [0x999999, 0xCCCCCC];
			
			state = new Sprite();
			state.graphics.lineStyle( 1, 0x00FF00, 0 );
			state.graphics.beginGradientFill( GradientType.LINEAR, colors, alphas, ratios, matrix );  
			state.graphics.drawRoundRect( 0, 0, 100, 100, 50, 50 );
			state.graphics.endFill();
			
			
			overState = state;	
			
			// Down
			colors = [0xCCCCCC, 0x999999];
			
			state = new Sprite();
			state.graphics.lineStyle( 1, 0x00FF00, 0 );
			state.graphics.beginGradientFill( GradientType.LINEAR, colors, alphas, ratios, matrix );  
			state.graphics.drawRoundRect( 0, 0, 100, 100, 50, 50 );
			state.graphics.endFill();
			
			
			downState = state;
		}
	}
}