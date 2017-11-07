/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DrawingProgram;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.Line2D;
import java.util.ArrayList;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author Kasper
 */
public class PaneImage extends JPanel {

    ArrayList<Drawing> drawings = new ArrayList();

    public PaneImage(int sizeX, int sizeY) {
        setSize(sizeX, sizeY);
    }

    public PaneImage(ImageIcon i) {
        setSize(i.getIconHeight(), i.getIconWidth());
        JLabel image = new JLabel(i);
        add(image);
    }

    public void addDrawing(int x, int y, int x2, int y2) {
        this.drawings.add(new Drawing(x, y, x2, y2));
        repaint();
    }
    
    public void addDrawing(Drawing d) {
        this.drawings.add(d);
        repaint();
    }

    public void paintComponent(Graphics g) {
        for (Drawing d : drawings) {
            d.paint(g);
        }
    }
    
    

}
