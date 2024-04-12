/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.*;

/**
 *
 * @author shahnaz
 */
public class DBCon {
    public Statement stmt=null;
    public PreparedStatement pstmt=null;
    public Connection con=null;
    public ResultSet rst=null;
    public DBCon(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MediStock Manager","root","root");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
