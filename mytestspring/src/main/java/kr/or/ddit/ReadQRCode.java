package kr.or.ddit;

import java.awt.image.BufferedImage;
import java.io.FileInputStream;

import javax.imageio.ImageIO;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;

public class ReadQRCode {
	public static void main(String[] args) throws Exception{
		try {
			String path = "";
			
			BufferedImage bf = ImageIO.read(new FileInputStream(path));
			BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(
					new BufferedImageLuminanceSource(bf)));
			
			Result result = new MultiFormatReader().decode(bitmap);
			
			System.out.println(result.getText());
			
		} catch (Exception e) {

		}
	}
}
