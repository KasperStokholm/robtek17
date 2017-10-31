/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package billedgenkendelse;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.net.URL;
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

        JFrame frame = new JFrame();
        BufferedImage buffImage = null;
        
        //Trying to read image from URL
        try {
            URL url = new URL("https://i.imgur.com/DqszXEK.png");
            buffImage = ImageIO.read(url);
            // File img = new File("C:\\Users\\Madsi\\Pictures\\LineCat.jpg");
            // buffImage = ImageIO.read(img);

        } catch (IOException e) {
            e.printStackTrace();
        }
        
        frame.setSize(buffImage.getHeight(), buffImage.getWidth());
        ImageIcon image = new ImageIcon(buffImage);

        JLabel imageLabel = new JLabel(image);
        frame.add(imageLabel);
        
        //Creating panes
        PaneImage q = new PaneImage(image);
        PaneImage p = new PaneImage(400, 400);
        
        //Test drawings
        Drawing g = new Drawing(10, 10, 100, 100);
        p.addDrawing(g);

        Drawing d = new Drawing(340, 140, 100, 100);
        p.addDrawing(d);
        
        //Set all frames and panes to visible
        imageLabel.setVisible(true);
        q.setVisible(true);
        p.setVisible(true);

    }
    
}
