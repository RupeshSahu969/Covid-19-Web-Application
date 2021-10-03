package com;
import java.sql.*;
public class myconnection
{
     Connection con;
      Statement st;
       ResultSet rs;
         public myconnection()
{
          con=null;
           st=null;
          rs=null;
}
       public void connect() throws Exception
           {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                    con=DriverManager.getConnection("jdbc:odbc:test");
                    st=con.createStatement();
           }
}