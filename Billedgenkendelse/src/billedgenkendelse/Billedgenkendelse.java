/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package billedgenkendelse;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.net.URL;
import java.util.Arrays;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;

/**
 *
 * @author Kasper
 */
public class Billedgenkendelse {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        JFrame pictureFrame = new JFrame();
        JFrame lineFrame = new JFrame();
        BufferedImage buffImage = null;

        //Trying to read image from URL
        try {
            URL url = new URL("https://ae01.alicdn.com/kf/HTB1BO7uKXXXXXblXVXXxh4dFXXXD/10pcs-lot-Pet-Cat-Kitten-Toys-Super-Q-Rainbow-Toy-Balls-Small-Dog-Cat-Pet-EVA.jpeg_50x50.jpeg");
            buffImage = ImageIO.read(url);
            // File img = new File("C:\\Users\\Madsi\\Pictures\\LineCat.jpg");
            // buffImage = ImageIO.read(img);

        } catch (IOException e) {
            e.printStackTrace();
        }
        
        ImageIcon image = new ImageIcon(buffImage);
        JLabel imageLabel = new JLabel(image);
        PaneImage p = new PaneImage(400, 400);
        
        //Setting size on pictureFrame
        pictureFrame.setSize(buffImage.getHeight(), buffImage.getWidth());
        pictureFrame.add(imageLabel);

        int numPixels = buffImage.getWidth() * buffImage.getHeight();

        //Creating RGB-arrays
        int[] rgbData = new int[numPixels];
        int counter = 0;
        for (int i = 0; i < buffImage.getHeight(); i++) {
            for (int j = 0; j < buffImage.getWidth(); j++) {
                while (counter < numPixels) {
                    rgbData[counter] = buffImage.getRGB(i, j);
                    counter++;
                }
            }

        }

        int[][] imageArray = new int[numPixels][3];
        // creates doule array with length = #pixels in png, containing 3 values (RGB)

        //System.out.println(Arrays.deepToString(arr));                                         
        // print initial array
        for (int i = 0; i < numPixels; i++) {
            // for-loop for storing RBG in array
            Color c = new Color(rgbData[i]);
            imageArray[i][0] = c.getRed();
            imageArray[i][1] = c.getGreen();
            imageArray[i][2] = c.getBlue();
        }
        
        System.out.println(Arrays.deepToString(imageArray));

        //Test drawings
        p.addDrawing(10, 10, 100, 100);
        p.addDrawing(10, 10, 400, 100);

        lineFrame.setSize(400, 400);
        lineFrame.add(p);
        
        //Set all frames to visible
        pictureFrame.setVisible(true);
        lineFrame.setVisible(true);

    }

}
