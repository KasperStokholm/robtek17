/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DrawingProgram;

import java.awt.Color;
import java.util.ArrayList;
import java.util.Arrays;
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
        
//        RobotClient client = new RobotClient("localhost", 11159);
//        
//        if(client.isConnected()){
//            System.out.println("CONNECT");
//        }
        
        ArrayList<Drawing> drawings = new ArrayList();
        EdgeDetector edge = new EdgeDetector("http://blogs.worldbank.org/africacan/files/africacan/small_better_small.jpg");
        Color[][] array = edge.getGreyscaleArray();
        int[][] booleanArray = new int[edge.getBufferedImage().getWidth()][edge.getBufferedImage().getHeight()];
        String robotString = "";
        
        for (int i = 0; i < booleanArray.length; i++) {
            for (int j = 0; j < booleanArray[i].length-1; j++) {
                if(array[i][j].getGreen() == 255 && array[i][j].getRed() == 255 && array[i][j].getBlue() == 255){
                    booleanArray[i][j] = 0;
                    robotString = robotString + "0";
                } else{
                    booleanArray[i][j] = 1;
                    drawings.add(new Drawing(i, j, i, j));
                    robotString = robotString + "1";
                }
            }
        }
        
//        String[] s = new String[edge.getBufferedImage().getHeight()];
//        
//        for (int i = 0; i < s.length; i++) {
//            s[i] = "";
//        }
//        
//        int counter = 1;
//        int change = 0;
//        //FIX
//        for (int i = 0; i < edge.getBufferedImage().getHeight(); i++) {
//            s[i] = robotString.substring(0+change, booleanArray[0].length*counter);
//            counter++;
//            change = change + booleanArray[0].length;
//        }
//        
//        for(String st: s){
//            System.out.println(st);
//        }

        System.out.println(robotString);
        
        JFrame pictureFrame = new JFrame();
        JFrame lineFrame = new JFrame();
        
        ImageIcon image = new ImageIcon(edge.getBufferedImage());
        JLabel imageLabel = new JLabel(image);
        
        PaneImage p = new PaneImage(400, 400);
        lineFrame.setSize(400, 400);
        lineFrame.add(p);
        
        //Setting size on pictureFrame
        pictureFrame.setSize(400, 400);
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
