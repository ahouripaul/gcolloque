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
public class main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
         try
         {
      //Charger la classe de driver
      Class.forName("org.postgresql.Driver");
      
      //Créer l'objet de connexion
      Connection conn = DriverManager.getConnection(
      "jdbc:postgresql://localhost:5432/cvven_colloque","postgres","test");
      
      //Créer l'objet statement 
      Statement stmt = conn.createStatement();
      ResultSet res = stmt.executeQuery("SELECT * FROM salle");
      
      //étape 4: exécuter la requête
      while(res.next())
        System.out.println(res.getInt(1)+"  "+res.getString(2)+"  "+res.getString(3)+"  "+res.getString(4));  
      //étape 5: fermez l'objet de connexion
      conn.close();
            }
    catch(Exception e){ 
      System.out.println(e);
        }
    }
    
}
