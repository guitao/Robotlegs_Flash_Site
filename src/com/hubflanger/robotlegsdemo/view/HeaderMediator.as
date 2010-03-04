package com.hubflanger.robotlegsdemo.view
{
	import com.hubflanger.robotlegsdemo.model.SiteModel;
	import com.hubflanger.robotlegsdemo.view.components.Header;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class HeaderMediator extends Mediator
	{
		[Inject]
		public var model:SiteModel;
		
		[Inject]
		public var header:Header;
		
		public function HeaderMediator()
		{
			//trace("HeaderMediator:constructor");
		}
		
		override public function onRegister():void
		{
			//trace("HeaderMediator:onRegister:" + model.header);
			header.init(model.header);
		}
	}
}