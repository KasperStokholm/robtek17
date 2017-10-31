/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package billedgenkendelse;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.util.ArrayList;
import javax.swing.JComponent;

/**
 *
 * @author Kasper
 */
public class Drawing extends JComponent {
    
    private int x;
    private int y;
    private int x2;
    private int y2;
    
    public Drawing(int x, int y, int x2, int y2){
       this.x = x;
       this.y = y;
       this.x2 = x2;
       this.y2 = y2;
    }
    
    @Override
    public void paint(Graphics g){
        Graphics2D g2 = (Graphics2D) g;
        g2.drawLine(x, y, x2, y2);
    }
    
    
}
