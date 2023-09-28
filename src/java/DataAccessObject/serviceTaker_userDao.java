/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package DataAccessObject;

import Entities.ServiceProvider;
import Entities.posts;
import Entities.serviceTaker;
import jakarta.servlet.http.HttpServlet;
import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author js594
 */
public class serviceTaker_userDao extends HttpServlet {

    private final Connection con;

    public serviceTaker_userDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(serviceTaker usr) {
        boolean f = false;
        try {
            String querry = "insert into servicetaker(name,DOB,email,number,gender,occupation,father_name,mother_name,spouse_name,ID_Type,ID_Number,ID_Authority,address,district,block_number,state,nationality,landmark,profile) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,\"one.png\");";

//            String ss=
            PreparedStatement pstmt = this.con.prepareStatement(querry);
            System.out.println("getting all detail from form");
            pstmt.setString(1, usr.getName());
            pstmt.setString(2, usr.getDOB());
            pstmt.setString(3, usr.getEmail());
            pstmt.setString(4, usr.getNumber());
            pstmt.setString(5, usr.getGender());
            pstmt.setString(6, usr.getOccupation());
            pstmt.setString(7, usr.getFather_name());
            pstmt.setString(8, usr.getMother_name());
            pstmt.setString(9, usr.getSpouse_name());
            pstmt.setString(10, usr.getID_type());
            pstmt.setString(11, usr.getID_number());
            pstmt.setString(12, usr.getID_authority());
            pstmt.setString(13, usr.getAddress());
            pstmt.setString(14, usr.getDistrict());
            pstmt.setString(15, usr.getBlock_number());
            pstmt.setString(16, usr.getState());
            pstmt.setString(17, usr.getNationality());
            pstmt.setString(18, usr.getLandmark());
            System.out.println("collected all detail from the form 345");
//            execcute querry
            pstmt.executeUpdate();
            System.out.println("querry updated successfully");
            f = true;
        } catch (SQLException e) {
            System.out.println("error in service taker userDao");
        }
        return f;

    }

    //    getting user detail from database
    public serviceTaker getUserByEmailAndPassword(String email, String password) {
        serviceTaker users = null;
        try {
            String querry = "select * from servicetaker where email=? and number=? ";
            System.out.println("inside service taker user dao");
            PreparedStatement psmt = con.prepareStatement(querry);
            psmt.setString(1, email);
            psmt.setString(2, password);
            ResultSet set = psmt.executeQuery();

            if (set.next()) {
                users = new serviceTaker();
                users.setId(set.getInt(1));
                users.setName(set.getString("name"));
                users.setDOB(set.getString("DOB"));
                users.setEmail(set.getString("email"));
                users.setNumber(set.getString("number"));
                users.setGender(set.getString("gender"));
                users.setOccupation(set.getString("occupation"));
                users.setFather_name(set.getString("father_name"));
                users.setMother_name(set.getString("mother_name"));
                users.setSpouse_name(set.getString("spouse_name"));
                users.setID_type(set.getString("ID_Type"));
                users.setID_number(set.getString("ID_Number"));
                users.setID_authority(set.getString("ID_Authority"));
                users.setAddress(set.getString("address"));
                users.setDistrict(set.getString("district"));
                users.setBlock_number(set.getString("block_number"));
                users.setState(set.getString("state"));
                users.setNationality(set.getString("nationality"));
                users.setLandmark(set.getString("landmark"));
                users.setId(set.getInt("id"));
                users.setProfile(set.getString("profile"));
                System.out.println("service taker user found redirecting to service taker login page...");
            } else {
                System.out.println("no such user found");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return users;
    }

    public serviceTaker getUserByUserId(int postId) {
        serviceTaker users = null;
        String q = "Select * from user where id=?";
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, postId);
            ResultSet set = ps.executeQuery();

            if (set.next()) {
                users = new serviceTaker();
                users.setId(set.getInt(1));
                users.setName(set.getString("name"));
                users.setDOB(set.getString("DOB"));
                users.setEmail(set.getString("email"));
                users.setNumber(set.getString("number"));
                users.setGender(set.getString("gender"));
                users.setOccupation(set.getString("occupation"));
                users.setFather_name(set.getString("father_name"));
                users.setMother_name(set.getString("mother_name"));
                users.setSpouse_name(set.getString("spouse_name"));
                users.setID_type(set.getString("ID_Type"));
                users.setID_number(set.getString("ID_Number"));
                users.setID_authority(set.getString("ID_Authority"));
                users.setAddress(set.getString("address"));
                users.setDistrict(set.getString("district"));
                users.setBlock_number(set.getString("block_number"));
                users.setState(set.getString("state"));
                users.setNationality(set.getString("nationality"));
                users.setLandmark(set.getString("landmark"));
            }

        } catch (SQLException e) {
        }

        return users;
    }

    public boolean updateUser(serviceTaker user) {
        boolean f = false;
        try {
            System.out.println("inside user dao update user");
            String querry = "update servicetaker set name=?,number=?,occupation=?,district=?,block_number=?,state=?,landmark=?,profile=?  where id=?";
            PreparedStatement psmt = con.prepareStatement(querry);
            psmt.setString(1, user.getName());
            psmt.setString(2, user.getNumber());
            psmt.setString(3, user.getOccupation());
            psmt.setString(4, user.getDistrict());
            psmt.setString(5, user.getBlock_number());
            psmt.setString(6, user.getState());
            psmt.setString(7, user.getLandmark());
            psmt.setString(8, user.getProfile());
            psmt.setInt(9, user.getId());
            psmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean savePost(posts post) {
        boolean f = false;
        try {
            System.out.println("saving posts inside service taker user dao posted by user");
            String querry = "insert into jobs(name,number,email,address,state,city,landmark,type,profile,duration,pincode,st_id) values(?,?,?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement pstmt = this.con.prepareStatement(querry);
            System.out.println("now inside service taker user dao st id is :"+post.getSt_id());
            pstmt.setString(1, post.getName());
            pstmt.setString(2, post.getNumber());
            pstmt.setString(3, post.getEmail());
            pstmt.setString(4, post.getAddress());
            pstmt.setString(5, post.getState());
            pstmt.setString(6, post.getCity());
            pstmt.setString(7, post.getLandmark());
            pstmt.setString(8, post.getType());
            pstmt.setString(9, post.getPhoto());
            pstmt.setString(10, post.getDuration());
            pstmt.setString(11, post.getPincode());
            pstmt.setInt(12, post.getSt_id());
            pstmt.executeUpdate();
            System.out.println("job posteed successfully from servie taker user ervlet Savepost method successfully");
            f = true;

        } catch (Exception e) {
            System.out.println("inside service taker user servlet now saving the post but we found error check it");
        }

        return f;
    }
    

}
