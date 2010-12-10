package com.terrenceryan.abouttime.util
{
	
	public class ApproximateDate
	{
		
		private var baseDate:Date = new Date();
		
		public function ApproximateDate(date:Date)
		{
			baseDate = date;
		}
		
		public function getDayofWeek():String{
			var weekDayLabels:Array = new Array(
				"Sunday",
				"Monday",
				"Tuesday",
				"Wednesday",
				"Thursday",
				"Friday",
				"Saturday");
			return weekDayLabels[baseDate.getDay()]
		}
		
		public function getMinute():String{
			var Minutes:int = baseDate.getMinutes();
			
			var MinuteLabels:Array = new Array(
				'Exactly', 					
				'Just After', 				
				'Just After',				
				'Just After',
				'A Few Minutes After',
				'A Few Minutes After',
				'A Few Minutes After',
				'Awhile After',
				'Awhile After',
				'Awhile After',
				'Awhile Before Quarter Past',
				'Awhile Before Quarter Past',
				'Nearly Quarter Past',
				'Nearly Quarter Past',
				'Nearly Quarter Past',
				'Exactly Quarter Past',
				'Just After Quarter Past',
				'Just After Quarter Past',
				'Just After Quarter Past',
				'Awhile After Quarter Past',
				'Awhile After Quarter Past',
				'Awhile After Quarter Past',
				'Awhile Before Half Past',
				'Awhile Before Half Past',
				'Awhile Before Half Past',
				'Awhile Before Half Past',
				'Nearly Half Past',
				'Nearly Half Past',
				'Nearly Half Past',
				'Nearly Half Past',
				'Exactly Half Past',
				'Just After Half Past',
				'Just After Half Past',
				'Just After Half Past',
				'Just After Half Past',
				'Just After Half Past',
				'Awhile After Half Past',
				'Awhile After Half Past',
				'Awhile After Half Past',
				'Awhile After Half Past',
				'Awhile After Half Past',
				'Nearly Quarter \'Til',
				'Nearly Quarter \'Til',
				'Nearly Quarter \'Til',
				'Nearly Quarter \'Til',
				'Exactly Quarter \'Til',
				'Just After Quarter \'Til',
				'Just After Quarter \'Til',
				'Just After Quarter \'Til',
				'Awhile After Quarter \'Til',
				'Awhile After Quarter \'Til',
				'Awhile After Quarter \'Til',
				'Awhile Before',
				'Awhile Before',
				'Awhile Before',
				'Awhile Before',
				'Nearly',
				'Nearly',
				'Nearly',
				'Nearly');
			return MinuteLabels[Minutes];
		}
		
		public function getMinuteOffset():int{
			var minute:int = baseDate.getMinutes();
			var result:int = new int(0);
			
			if (minute > 40){
				result = 1;
			}
			
			return result;
		}
		
		public function getHour():String{
			
			var hours:int = baseDate.getHours();
			
			hours = hours + getMinuteOffset();
			
			if (hours == 24){
				hours = 0;
			}
			
			var HourLabels:Array = new Array(
				"Midnight",
				"One",
				"Two",
				"Three",
				"Four",
				"Five",
				"Six",
				"Seven",
				"Eight",
				"Nine",
				"Ten",
				"Eleven",
				"Noon",
				"One",
				"Two",
				"Three",
				"Four",
				"Five",
				"Six",
				"Seven",
				"Eight",
				"Nine",
				"Ten",
				"Eleven");
			return HourLabels[hours];
		}
		
		public function getTimeOfDay():String{
			var hours:int = baseDate.getHours();
			var result:String = "Day";
			
			if ((hours > 18) || (hours < 6)) {	
				result = 'Night';
			}
			
			return result;
		}
		
		public function getMonth():String{
			
			var monthLabels:Array = new Array(
				"January",
				"February",
				"March",
				"April",
				"May",
				"June",
				"July",
				"August",
				"September",
				"October",
				"November",
				"December");
			return monthLabels[baseDate.getMonth()]
		}
		
		public function getDayofMonth():String{
			var dateLabels:Array = new Array(
				"First",
				"Second",
				"Third",
				"Fourth",
				"Fifth",
				"Sixth",
				"Seventh",
				"Eighth",
				"Ninth",
				"Tenth",
				"Eleventh",
				"Twelfth",
				"Thirteenth",
				"Fourteenth",
				"Fifteenth",
				"Sixteenth",
				"Seventeenth",
				"Eighteenth",
				"Ninteenth",
				"Twentieth",
				"Twenty First",
				"Twenty Second",
				"Twenty Third",
				"Twenty Fourth",
				"Twenty Fifth",
				"Twenty Sixth",
				"Twenty Seventh",
				"Twenty Eighth",
				"Twenty Ninth",
				"Thirtieth",
				"Thirty First");
			return dateLabels[baseDate.getDate()-1]
		}
		
		public function getYear():String{
			
			var yearLabels:Array = new Array(
				"Two Thousand",
				"Two Thousand One",
				"Two Thousand Two",
				"Two Thousand Three",
				"Two Thousand Four",
				"Two Thousand Five",
				"Two Thousand Six",
				"Two Thousand Seven",
				"Two Thousand Eight",
				"Two Thousand Nine",
				"Twenty Ten",
				"Twenty Eleven",
				"Twenty Twelve");
			return yearLabels[baseDate.getFullYear()-2000]
		}
		
	}
}