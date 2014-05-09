package com.sdh
{
	import flash.external.ExtensionContext;
	
	public class AneFunctionExtension
	{
		private var context:ExtensionContext;
		
		public function AneFunctionExtension()
		{
			try
			{
				context = ExtensionContext.createExtensionContext("com.sdh.AneFunctionExtension",null);
			} 
			catch(e:Error) 
			{
				trace(e.message);
			}
		}
		public function toast(message:String):void{
			context.call("toast",message);
		}
		public function vibration(duration:Number):void{
			context.call("vibration",duration);
		}
		public function deviceInfo(message:String):String{
			return context.call("deviceinfo",message).Info;
		}
		public function backPress(temp:String):Boolean{
			return context.call("backpress",temp).BackKeyPressEnd;
		}
		public function mediaStoreImageLoadFunction(message:String):Object{
			return context.call("mediastoreimageload",message);
		}
	}
}