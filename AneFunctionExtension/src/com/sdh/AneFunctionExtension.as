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
		public function backPress(temp:String):Boolean{
			return context.call("backpress",temp).BackKeyPressEnd;
		}
        public function login(appID:String):void{
            context.call("login",appID);
        }
        public function logout(message:String):void{
            context.call("logout",message);
        }
        public function statusupdate(message:String):void{
            context.call("statusupdate",message);
        }
	}
}