package com.terrenceryan.abouttime.util
{
	public class Geo
	{
		import flash.sensors.Geolocation;
		import flash.events.GeolocationEvent;
		
		private var geo:Geolocation = null;
		
		private var _latitude:String = null;
		private var _longitude:String = null;
		
		
		public function Geo()
		{
			geo = new Geolocation();
			geo.setRequestedUpdateInterval(10000);
			geo.addEventListener(GeolocationEvent.UPDATE, geolocationUpdateHandler);
		
		}
		
		public function get longitude():String
		{
			return _longitude;
		}

		public function set longitude(value:String):void
		{
			_longitude = value;
		}

		public function get latitude():String
		{
			return _latitude;
		}

		public function set latitude(value:String):void
		{
			_latitude = value;
		}

		public function geolocationUpdateHandler(event:GeolocationEvent):void{
			this.latitude = event.latitude.toString();
			this.longitude = event.longitude.toString();
			
		}
		
		
	}
}