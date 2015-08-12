package bitmap
{
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;

	public class BitmapScale
	{
		public function BitmapScale()
		{
		}
		
		public static function getBitmapScale(target:DisplayObject, tarW:int, tarH:int,full:Boolean=true):BitmapData 
		{
			//获取显示对象矩形范围
			var rect:Rectangle = target.getBounds(target);
			//计算出应当缩放的比例
			var perw:Number = tarW / rect.width;
			var perh:Number = tarH / rect.height;
			var scale:Number = full?(perw <= perh?perw:perh) : (perw <= perh?perh:perw);
			//计算缩放后与规定尺寸之间的偏移量
			var offerW:Number = (tarW - rect.width * scale) / 2;
			var offerH:Number = (tarH - rect.height * scale) / 2;
			//开始绘制快照（这里透明参数是false,是方便观察效果，实际应用可改为true)
			var bmd:BitmapData = new BitmapData(tarW, tarH, false, 0);
			var matrix:Matrix = new Matrix();
			matrix.scale(scale, scale);
			matrix.translate( offerW, offerH);
			bmd.draw(target, matrix);
//			//如果是bitmap对象，释放位图资源
//			if (target is Bitmap)   (target as Bitmap).bitmapData.dispose();
			//返回截图数据
			return bmd;
		}
	}
}