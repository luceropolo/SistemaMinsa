/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import com.sun.istack.internal.logging.Logger;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.logging.Level;

/**
 *
 * @author PILAR CARRASCO
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        VerData vd =new VerData ();
        //vd.Mostrar();
        //String password = vd.getPass("LUCERO");
        //System.out.println(password);
        vd.VerDistritos();
        vd.VerProvincia();
        
        System.out.println(Arrays.toString(vd.getDistritos()));
        System.out.println(Arrays.toString(vd.getProvincia()));
        
        try {
            DBconexion con1 = new DBconexion ("localhost", "minsa", "root","");
            con1.conectar();
            // TODO code application logic here
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
