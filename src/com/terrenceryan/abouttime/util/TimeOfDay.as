package com.terrenceryan.abouttime.util
{
	import flash.events.ErrorEvent;
	
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	import mx.rpc.remoting.RemoteObject;

	public class TimeOfDay
	{
		
		private var _timeofday:String;
		
		private var sunrise:Date = new Date();
		private var sunset:Date = new Date();
		private var date:Date = new Date();
		private var _geo:Geo = null;
		
		public function TimeOfDay(geo:Geo)
		{
			setDefaultTimes();
			_geo = geo;
			retrieveTime();
			
		
		}
		
		private function setDefaultTimes():void{
			sunrise.hours = 7;
			sunrise.minutes = 0;
			sunset.hours = 19;
			sunset.minutes = 0;
			
		}
		
		private function retrieveTime():void{
			var basewsurl:String = "http://www.earthtools.org/sun/";
			var wsurl:String = basewsurl.concat(_geo.latitude, "/",_geo.longitude,"/", date.date, "/", date.month, "/", 99, "/", 1);
			var ws:HTTPService = new HTTPService();
			ws.url = wsurl;
			ws.addEventListener(ResultEvent.RESULT, processTime);
			ws.send();
			
		}
		
		public function get timeofday():String
		{
			
			var result:String = "night";
			var now:Date = new Date();
			
			var nightEnd:Date = sunrise;
			nightEnd.minutes = nightEnd.minutes - 30;
			
			var dawnEnd:Date = sunrise;
			dawnEnd.minutes = dawnEnd.minutes + 30;
			
			var dayEnd:Date = sunset;
			dayEnd.minutes = dayEnd.minutes - 30;
			
			var duskEnd:Date = sunset;
			duskEnd.minutes = duskEnd.minutes + 30;
			
			if ((now.getTime() < nightEnd.getTime()) || (now.getTime() > duskEnd.getTime())){
				result = "night";
			}
			else if ((now.getTime() > nightEnd.getTime()) && (now.getTime() < dawnEnd.getTime())){
				result = "dawn";
			}
			else if ((now.getTime() > dawnEnd.getTime()) && (now.getTime() < dayEnd.getTime())){
				result = "day";
			}
			else if ((now.getTime() > dayEnd.getTime()) && (now.getTime() < duskEnd.getTime())){
				result = "dusk";
			}
			
			return result;
		}

		public function set timeofday(value:String):void
		{
			_timeofday = value;
		}

		public function processTime(e:ResultEvent):void{
			var sunriseStr:String = e.result.sun.morning.sunrise;
			var sunsetStr:String = e.result.sun.evening.sunset;
			
			var riseArray:Array = sunriseStr.split(":");
			var setArray:Array = sunsetStr.split(":");
			
			sunrise.hours = riseArray[0] -1;
			sunrise.minutes = riseArray[1] -1;
			
			sunset.hours = setArray[0] -1;
			sunset.minutes = setArray[1] -1;
		}
		
		
		
	}
}