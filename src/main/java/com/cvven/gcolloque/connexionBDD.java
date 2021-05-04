/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvven.gcolloque;
import java.sql.*;


/**
 *
 * @author toyzy
 */

public class connexionBDD {
     Connection conn=null;

    public static Connection Connexion(){
        try {
           Class.forName("org.postgresql.Driver");
           Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/cvven_colloque", "postgres", "test");
                                                if (conn!=null)
            System.out.println("Connexion à la base de données a été établie avec succès !");
                                                else
                                                System.out.println("Problème de connexion à la base de données");

       return conn;

        }
        catch(Exception e) {
            System.out.println("--> SQLException : " + e) ;
       return null;
        }
    }

}


        

    


