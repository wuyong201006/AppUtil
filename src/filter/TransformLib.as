package filter
{
	import flash.geom.ColorTransform;

	/**
	 * @author Administrator
	 */
	public class TransformLib 
	{
		public static var  normal : ColorTransform = new ColorTransform();
		public static var  white_classic : ColorTransform = new ColorTransform(1.3, 1.3, 1.3, 1);
		public static var  light : ColorTransform = new ColorTransform(1.5, 1.5, 1.5, 1);
		public static var  green_classic : ColorTransform = new ColorTransform(1, 4, 1.05, 1.05);
		public static var  dark : ColorTransform = new ColorTransform(0.8, 0.8, 0.8, 1);
		public static var  black_classic : ColorTransform = new ColorTransform(0.5, 0.5, 0.5, 1);
		public static var dodge:ColorTransform = new ColorTransform( 1, 1, 1, 1, 70, 70, 70, 0 ); //按下状态
		public static var  read_classic : ColorTransform = new ColorTransform(3, 1, 1, 1,50,0,0);
	}
}
