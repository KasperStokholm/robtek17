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
import java.util.ArrayList;
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
        
        ArrayList<Drawing> drawings = new ArrayList();
        EdgeDetector edge = new EdgeDetector("http://www.pxleyes.com/images/tutorials/ext//4b2375eecb12c.jpg");
        Color[][] array = edge.getGreyscaleArray();
        int[][] booleanArray = new int[edge.getBufferedImage().getWidth()][edge.getBufferedImage().getHeight()];
        
        
        for (int i = 0; i < 49; i++) {
            for (int j = 0; j < 49; j++) {
                if(array[i][j].getGreen() == 255 && array[i][j].getRed() == 255 && array[i][j].getBlue() == 255){
                    booleanArray[i][j] = 0;
                } else{
                    booleanArray[i][j] = 1;
                    drawings.add(new Drawing(i, j, i, j));
                }
            }
        }
        
        
        
        System.out.println(Arrays.deepToString(booleanArray));
        
        JFrame pictureFrame = new JFrame();
        JFrame lineFrame = new JFrame();
        
        ImageIcon image = new ImageIcon(edge.getBufferedImage());
        JLabel imageLabel = new JLabel(image);
        
        PaneImage p = new PaneImage(400, 400);
        lineFrame.setSize(400, 400);
        lineFrame.add(p);
        
        //Setting size on pictureFrame
        pictureFrame.setSize(edge.getBufferedImage().getHeight(), edge.getBufferedImage().getWidth());
        pictureFrame.add(imageLabel);
        

        //Test drawings
        for(Drawing d : drawings){
            p.addDrawing(d);
        }
       // p.addDrawing(10, 10, 100, 100);
       // p.addDrawing(10, 10, 400, 100);

        
        //Set all frames to visible
        pictureFrame.setVisible(true);
        lineFrame.setVisible(true);

    }

}
