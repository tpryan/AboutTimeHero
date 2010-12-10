package com.terrenceryan.abouttime.ui
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.setInterval;
	
	import flashx.textLayout.formats.TextAlign;
	
	import com.terrenceryan.abouttime.util.ApproximateDate;

	
	public class Clock extends Sprite
	{
		
		private var title:TextField = null;
		private var minuteText:TextField = null; 
		private var hourText:TextField = null;
		private var dayText:TextField = null;
		private var dateText:TextField = null;
		private var yearText:TextField = null;
		
		private var clockWidth:Number = 480;
		
		public function Clock()
		{
			
			
			super();
			drawClock();
			formatClock();
			getTime();
			
		}
		
		
		protected function drawClock():void{
			var startPoint:int = 190;
			
			minuteText = new TextField();
			minuteText.width = clockWidth;
			minuteText.y = startPoint;
			addChild( minuteText ); 
			
			hourText = new TextField();
			hourText.width = clockWidth;
			hourText.y = startPoint + 50;
			addChild( hourText ); 
			
			dayText = new TextField();
			dayText.width = clockWidth;
			dayText.y = startPoint + 150;
			addChild( dayText ); 
			
			dateText = new TextField();
			dateText.width = clockWidth;
			dateText.y = startPoint + 200;
			addChild( dateText );
			
			yearText = new TextField();
			yearText.width = clockWidth;
			yearText.y = startPoint + 250;
			addChild( yearText );
			
		}
		
		protected function formatClock():void{
			var hourFormat:TextFormat = new TextFormat();
			hourFormat.font = "Droid Serif Bold";
			hourFormat.size = 30;
			hourFormat.align = "center";
			
			
			var minuteFormat:TextFormat = new TextFormat();
			minuteFormat.font = "Droid Serif Bold";
			minuteFormat.size = 26;
			minuteFormat.align = "center";
			
			var dateStringFormat:TextFormat = new TextFormat();
			dateStringFormat.font = "Droid Serif Bold";
			dateStringFormat.size = 22;
			dateStringFormat.align = "center";
			
			hourText.setTextFormat(hourFormat);
			minuteText.setTextFormat(minuteFormat);
			dayText.setTextFormat(dateStringFormat);
			dateText.setTextFormat(dateStringFormat);
			yearText.setTextFormat(dateStringFormat);	
			
			
		}
		
		public function getTime():void{
			
			var aDate:ApproximateDate = new ApproximateDate(new Date());
			
			hourText.text = aDate.getHour();
			minuteText.text = aDate.getMinute();
			dayText.text = aDate.getDayofWeek() ;
			dateText.text = "";
			dateText.text = dateText.text.concat( aDate.getMonth(), ' ',aDate.getDayofMonth() );
			yearText.text = aDate.getYear();
			formatClock();
			
		}
		
		
	}
}