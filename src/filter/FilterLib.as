package filter
{

	import flash.display.DisplayObject;
	import flash.filters.ColorMatrixFilter;
	import flash.filters.DropShadowFilter;
	import flash.filters.GlowFilter;

	/**
	 * 滤镜与
	 */
	public class FilterLib
	{
		public static var glow_orange:GlowFilter = new GlowFilter( 0x240f05, 1, 1.3, 1.3, 8, 1);
		//经典1像素黑色描边
		public static var glow_classic:GlowFilter = new GlowFilter( 0x071717, 1, 1.3, 1.3, 8, 1 );
		//淡灰色轻柔化描边
		public static var glow_dust:GlowFilter = new GlowFilter( 0x071717, 1, 1.1, 1.1, 1, 1 );
		//淡灰色柔化描边
		public static var glow_soft:GlowFilter = new GlowFilter( 0x071717, 1, 1.4, 1.4, 3, 2 );
		//淡灰色柔化描边
		public static var glow_lite:GlowFilter = new GlowFilter( 0x071717, 1, 1.4, 1.4, 2, 2 );
		//深灰色柔化描边
		public static var glow_cloud:GlowFilter = new GlowFilter( 0x071717, 1, 2, 2, 2.2, 5 );
		//白色柔化描边
		public static var glow_white:GlowFilter = new GlowFilter( 0xffffff, 1, 1.1, 1.1, 2, 2 );
		//墨绿色粗描边
		public static var glow_green:GlowFilter = new GlowFilter( 0x668833, 1, 3, 3, 5, 1.2 );
		//黑色描边 
		public static var glow_black:GlowFilter = new GlowFilter( 0x000000, 1, 3, 3, 16 );
		//黑色透明指定描边
		public static var glow_back_alpha:GlowFilter = new GlowFilter( 0x000000, 0.8, 3, 3, 16 );
		//黄色描边
		public static var yellow_black:GlowFilter = new GlowFilter( 0xfa8b07, 1, 1.5, 1.5,1);
		//蓝色描边
		public static var glow_blue:GlowFilter = new GlowFilter( 0x0000ff, 1, 3, 3, 16 );
		//红色描边
		public static var glow_red:GlowFilter = new GlowFilter( 0xff0000, 1, 2, 2, 3 );
		//红色发光
		public static var glow_Red:GlowFilter = new GlowFilter( 0xffffff, 1, 1, 1, 3, 1 );
		//红色内发光
		public static var glow_InnerGlow:GlowFilter = new GlowFilter( 0xff0000,1,6,6,2,1,true);
		//金黄色外发光
		public static var glow_OutGlow:GlowFilter = new GlowFilter( 0xD0AA0E,1,10,10,2,1);
		//白色外发光
		public static var glow_OutWhite:GlowFilter = new GlowFilter( 0xffffff,1,10,10,2,1);
		
		public static var glow_Green:GlowFilter = new GlowFilter( 0x66ff66, 1, 1, 1, 3, 1 );
		public static var glow_Blue:GlowFilter = new GlowFilter( 0x66ffff, 1, 1, 1, 3, 1 );

		public static var glow_BigGreen:GlowFilter = new GlowFilter( 0x66ff66, 1, 2, 2, 4, 1 );
		public static var glow_BigBlue:GlowFilter = new GlowFilter( 0x66ffff, 1, 2, 2, 4, 1 );

		//柔化测试
		public static var drop_shadow:DropShadowFilter = new DropShadowFilter( 1.5, 45, 0, 0.5, 2, 2, 1.8 );
		public static var drop_soft:DropShadowFilter = new DropShadowFilter( 1.5, 45, 0x000000, 0.8, 1, 1, 2 );
		public static var drop_verySoft:DropShadowFilter = new DropShadowFilter( 1.5, 45, 0x000000, 0.5, 1, 1, 2 );
		//滤镜 - 阴影
		public static var drop_classic:DropShadowFilter = new DropShadowFilter( 1, 45, 0x000000, 1, 1, 1, 3 );
		public static var drop_white:DropShadowFilter = new DropShadowFilter( 1, 45, 0xffffff, 1, 1, 1, 3 );
		public static var drop_dust:DropShadowFilter = new DropShadowFilter( 1, 45, 0x000000, 0.8, 1, 1, 1 );

		public static var drop_big:DropShadowFilter = new DropShadowFilter( 2, 45, 0x008684, 1, 1, 1, 3 );
		public static var drop_sun:DropShadowFilter = new DropShadowFilter( 2, 225, 0xffffff, 0.8, 1, 1, 2 );
		public static var greenGlow:GlowFilter = new GlowFilter(0x45fa3b,1,6,6,2,5,true,true);
		
		/**
		 *	设置灰色的状态
		 *
		 */
		public static function setGray(obj:DisplayObject):void
		{
			var matrix:Array = [ 0.3086, 0.6094, 0.082, 0, 0, 0.3086, 0.6094, 0.082, 0, 0, 0.3086, 0.6094, 0.082, 0, 0, 0, 0, 0, 1, 0 ];
			obj.filters = [ new ColorMatrixFilter( matrix )];
		}
	}
}