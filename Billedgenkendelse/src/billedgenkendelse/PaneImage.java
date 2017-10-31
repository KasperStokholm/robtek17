/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package billedgenkendelse;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.Line2D;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author Kasper
 */
public class PaneImage extends JFrame{
    
    JPanel frame = new JPanel();
    
    public PaneImage(int sizeX, int sizeY){
       
       setSize(sizeX, sizeY);
       getContentPane().add(frame);
    }
    
    public PaneImage(ImageIcon i){
        setSize(i.getIconHeight(), i.getIconWidth());
        JLabel image = new JLabel(i);
        getContentPane().add(image);
    }
    
    public void addDrawing(Drawing d){
       getContentPane().add(d);
    }
    
    
}
