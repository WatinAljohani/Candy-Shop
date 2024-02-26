/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package CandyShop;

import javax.swing.JFrame;

/**
 *
 * @author twin1
 */
public class CandyShop {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        WelcomeForm lgc = new  WelcomeForm();
        lgc.setVisible(true);
        lgc.pack();
        lgc.setLocationRelativeTo(null);
        lgc.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
}
