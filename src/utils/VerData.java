/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LAB 1
 */
public class VerData 
{
    Connection conexion;
    DBconexion con = new DBconexion("localhost", "minsa", "root", "");// creando los apuntadores necesarios para nuestra base de datos
    public void Mostrar() //es un metodo de la clase de ver data
    {
        
        

        try { //intentar si falla o no, bota un mensaje, que intente y no salga del programa
            this.conexion = con.conectar(); // estoy asignando 
            Statement st = conexion.createStatement();

            ResultSet rs = st.executeQuery("SELECT usuarios.`password` FROM usuarios WHERE usuarios.`user`='LUCERO'");
            rs.next();
            System.out.println(rs.getString(1));
        } catch (SQLException ex) {
            Logger.getLogger(VerData.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public String getPass(String user)
    {
        String pass = "";
        try {
            this.conexion = con.conectar();
            Statement st = conexion.createStatement();

            ResultSet rs = st.executeQuery("SELECT usuarios.`password` FROM usuarios WHERE usuarios.`user`='" + user +"'");
            System.out.println("SELECT `password` FROM personas WHERE usuario=`" + user +"`");
            // System.out.println(rs.getString(1));
            if(rs.next())
            {
                pass = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VerData.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return pass;
    }
}
