package bitmap
{
	import flash.display.BitmapData;
	import flash.display.DisplayObject;

	public class Tra25Util
	{
		public function Tra25Util()
		{
		}
		
		//2.5D坐标转换----你可以换成更牛逼的真3D坐标转换，有兴趣自己百度
		public static function tra25Pos(src:DisplayObject):BitmapData 
		{
			var bd:BitmapData = new BitmapData(src.width, src.height, true, 0x0);
			var tra:BitmapData = new BitmapData(src.width+src.height*0.5, src.height, true, 0x0);
			
			bd.draw(src);
			
			//官方说加上这句有利于效率
			tra.lock ();
			var px:Number; //像素的坐标
			var py:Number; 
			var c:uint;
			//解析---对原图片的每个像素转换
			for(var i:int=0;i<bd.width ;i++)
			{
				for(var j:int=0;j<bd.height ;j++)
				{
					c=bd.getPixel32 (i, j);
					px=i;
					py=j;
					////下面两句，就是把 矩形变成 45度 平行四边形
					
					px=py*0.5+px;
					py*=0.5;
					//z轴高度转换
//					py+=100
//					px+=20
//					
//					py-=(c>>16 & 0xff)*.5-63
					//px+=(c>>8 & 0xff)*.5-63//取消这句注释，会有惊喜
					
					tra.setPixel32 (px,py,c);
				}
			}
			
			//官方说加上这句有利于效率
			tra.unlock ();
			
			return tra;
		}
	}
}