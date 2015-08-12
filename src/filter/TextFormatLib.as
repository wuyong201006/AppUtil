package filter
{


	import flash.text.TextFormat;
	
	import color.ColorLib;

	/**
	 * 
	 */
	public class TextFormatLib 
	{
		
		//文字 
		public static var black_12px:TextFormat = new TextFormat( "宋体", 12, 0x000000 );
		public static var gray_12px:TextFormat = new TextFormat( "宋体", 12, 0x46413f );
		public static var brown_12px:TextFormat = new TextFormat( "宋体", 12, 0x5e5335 );
		public static var liteBrown_12px:TextFormat = new TextFormat( "宋体", 12, 0xb7ad9b );
		public static var liteBrown_13px:TextFormat = new TextFormat( "宋体", 13, 0xb4b578 );
		public static var red_14px:TextFormat = new TextFormat( "宋体", 14, ColorLib.red );
		public static var green_13px:TextFormat = new TextFormat( "宋体", 13, ColorLib.green );
		public static var gold_14px:TextFormat = new TextFormat( "宋体", 14, ColorLib.gold );
		public static var black_14px:TextFormat = new TextFormat( "宋体", 14, ColorLib.black );
		public static var white_12px:TextFormat = new TextFormat( "宋体", 12, ColorLib.white );
		public static var white_leading_12px:TextFormat = new TextFormat( "宋体", 12, ColorLib.white, null, null, null, null, null, null, null, null, null, 3 );
		public static var white_leading_right_12px:TextFormat = new TextFormat( "宋体", 12, ColorLib.white, null, null, null, null, null, "right", null, null, null, 2 );
		public static var darkGold_12px:TextFormat = new TextFormat( "宋体", 12, 0xffd790 );
		public static var white_leading3_14px:TextFormat = new TextFormat( "宋体", 14, ColorLib.white, null, null, null, null, null, null, null, null, null, 3 );
		public static var yellow_leading3_14px:TextFormat = new TextFormat( "宋体", 14, 0xb4b578, null, null, null, null, null, null, null, null, null, 3 );
		public static var yellow_leading3_13px:TextFormat = new TextFormat( "宋体", 13, 0xb4b578, null, null, null, null, null, null, null, null, null, 3 );
		public static var yellow_leading3_16px:TextFormat = new TextFormat( "宋体", 16, 0xb4b578, null, null, null, null, null, null, null, null, null, 3 );
		public static var white_bold_12px:TextFormat = new TextFormat( "宋体", 12, ColorLib.white, true );
		public static var liteGreen_bold_12px:TextFormat = new TextFormat( "宋体", 12, ColorLib.liteGreen, false );
		public static var white_arial_10px:TextFormat = new TextFormat( "Arial", 10, ColorLib.white, true );
		public static var white_arial_12px:TextFormat = new TextFormat( "Arial", 12, ColorLib.white, true );
		public static var white_14px:TextFormat = new TextFormat( "宋体", 14, ColorLib.white );
		public static var white_center_leading2_14px:TextFormat = new TextFormat( "宋体", 14, ColorLib.white, null, null, null, null, null, "center", null, null, null, 3 );
		public static var rice_center_14px:TextFormat = new TextFormat( "宋体", 14, ColorLib.rice, null, null, null, null, null, "center" );
		public static var rice_12px:TextFormat = new TextFormat( "宋体", 12, ColorLib.rice );
		public static var light_12px:TextFormat = new TextFormat( "宋体", 12, 0xcccccc );
		public static var liteGreen_right_12px:TextFormat = new TextFormat( "宋体", 12, ColorLib.blueGreen, null, null, null, null, null, "right" );
		public static var blueGreen_14px:TextFormat = new TextFormat( "宋体", 14, ColorLib.blueGreen );

		//带间隔的
		public static var white_space_12px:TextFormat = init_white_space_12px();

		public static function init_white_space_12px():TextFormat
		{
			var tf:TextFormat = new TextFormat( "宋体", 12, ColorLib.white );
			tf.letterSpacing = 1;
			return tf;
		}

		//金钱的数字
		public static var white_arial_right_bold_12px:TextFormat = new TextFormat( "Arial", 12, ColorLib.white, true, null, null, null, null, "right" );
		//金钱单位
		public static var drakBrown_14px:TextFormat = new TextFormat( "宋体", 13, ColorLib.brown, true );
	}
}