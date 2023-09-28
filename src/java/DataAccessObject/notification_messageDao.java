package DataAccessObject;

import Entities.Notification_message;
import jakarta.servlet.http.HttpServlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class notification_messageDao extends HttpServlet {

    private final Connection con;

    public notification_messageDao(Connection con) {
        this.con = con;
    }

    public boolean saveNotificationMessage(Notification_message msg) {
        boolean f = false;
        try {
            System.out.println("implement message db querry");
            String querry = "insert into message(name,email,number,gender,profile,additional_number,st_id,sp_id) values(?,?,?,?,?,?,?,?)";
            PreparedStatement p = con.prepareStatement(querry);
            System.out.println("this is service taker id" + msg.getSt_id());
            p.setString(1, msg.getName());
            p.setString(2, msg.getEmail());
            p.setString(3, msg.getNumber());
            p.setString(4, msg.getGender());
            p.setString(5, msg.getProfile());
            p.setString(6, msg.getAdditional_number());
            p.setInt(7, msg.getSt_id());
            p.setInt(8, msg.getSp_id());
            System.out.println("obtain all values from notification message entities");
            System.out.println("Now running querry");
            p.executeUpdate();
            System.out.println("querry run completely successful");
            f = true;
        } catch (Exception e) {
            System.out.println("problem with databse connectivity of notification message");
        }

        return f;
    }

    public List<Notification_message> getNotificationMessage(int sercviceTaker_id) {

        List<Notification_message> list = new ArrayList<>();

        try {
            System.out.println("fetching message according to st_id ehere st id=" + sercviceTaker_id);
            String q = "Select * from message where st_id=?";
            PreparedStatement p = con.prepareStatement(q);
            p.setInt(1, sercviceTaker_id);
            ResultSet set = p.executeQuery();
            while (set.next()) {
                System.out.println("getting Message detail inside getnotificaton message dao");
                int serviceProvider_id = set.getInt("sp_id");
                int m_id=set.getInt("message_id");
                System.out.println(serviceProvider_id);
                String name = set.getString("name");
                String date=set.getString("date");
                String number = set.getString("number");
                String email = set.getString("email");
                System.out.println(email);
                String additional_number = set.getString("additional_number");
                String gender = set.getString("gender");
                String profile = set.getString("profile");
                System.out.println(gender);
                Notification_message msg = new Notification_message(serviceProvider_id, name, email, number, additional_number, gender, profile,m_id,date);
                list.add(msg);
                System.out.println("job listed in list arraylist insode getNotificationmssage By pid");
            }
        } catch (Exception e) {
            System.out.println("can't fetch notification message");
        }

        return list;
    }

    public Notification_message getNotificationMessageByMessageId(int m_id) {

        Notification_message msg=null;

        try {
            System.out.println("fetching message according to message_id where message id=" + m_id);
            String q = "Select * from message where message_id=?";
            PreparedStatement p = con.prepareStatement(q);
            p.setInt(1, m_id);
            ResultSet set = p.executeQuery();
            while (set.next()) {
                System.out.println("getting Message detail inside getnotificaton message dao");
                int serviceProvider_id = set.getInt("sp_id");
                int me_id=set.getInt("message_id");
                System.out.println(serviceProvider_id);
                String name = set.getString("name");
                String number = set.getString("number");
                String date=set.getString("date");
                String email = set.getString("email");
                System.out.println(email);
                String additional_number = set.getString("additional_number");
                String gender = set.getString("gender");
                String profile = set.getString("profile");
                System.out.println(gender);
                msg = new Notification_message(serviceProvider_id, name, email, number, additional_number, gender, profile,me_id,date);
               
                System.out.println("job listed in list arraylist insode getNotificationmssage By pid");
            }
        } catch (Exception e) {
            System.out.println("can't fetch notification message on the basis of message_id");
        }

        return msg;
    }
}
