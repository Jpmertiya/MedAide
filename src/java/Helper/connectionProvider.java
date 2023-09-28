  package Helper;
import java.sql.Connection;
import java.sql.DriverManager;
public class connectionProvider {
    public static Connection con;
    
  public static Connection getConnection(){
      
      try{
//         loading the Driver
             if (con==null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                //creating connection
                String url="jdbc:mysql://localhost:3306/medaide";
                String name="root";
                String password="JASPALsingh@1";
                
                con=DriverManager.getConnection(url,name,password);
                }
             
      }
      catch(Exception e){
          System.out.println("problem in connection Provider");
                     }
      
      return con;
  }
}
