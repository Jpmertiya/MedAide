/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package DataAccessObject;

import Entities.ServiceProvider;
import Entities.posts;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author js594
 */
public class userDao extends HttpServlet {

    private final Connection con;

    public userDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(ServiceProvider usr) {
        boolean f = false;
        try {
            String querry = "insert into serviceprovider(name,DOB,email,number,additionalnumber,gender,father_name"
                    + ",mother_name,ID_type,ID_number,ID_authority,address,district,pincode,state,nationality,"
                    + "landmark,qualification_type,degree_status,collateral_name,collateral_number,collateral_aadhar_number)"
                    + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(querry);
            pstmt.setString(1, usr.getName());
            System.out.println("user name is: " + usr.getName());
            pstmt.setString(2, usr.getDOB());
            System.out.println("user name is: " + usr.getDOB());
            pstmt.setString(3, usr.getEmail());
            System.out.println("user name is: " + usr.getEmail());
            pstmt.setString(4, usr.getNumber());
            System.out.println("user name is: " + usr.getNumber());
            pstmt.setString(5, usr.getAdditionalnumber());
            System.out.println("user name is: " + usr.getAdditionalnumber());
            pstmt.setString(6, usr.getGender());
            System.out.println("user name is: " + usr.getGender());
            pstmt.setString(7, usr.getFather_name());
            System.out.println("user name is: " + usr.getFather_name());
            pstmt.setString(8, usr.getMother_name());
            System.out.println("user name is: " + usr.getMother_name());
            pstmt.setString(9, usr.getID_type());
            System.out.println("user name is: " + usr.getID_type());
            pstmt.setString(10, usr.getID_number());
            System.out.println("user name is: " + usr.getID_number());
            pstmt.setString(11, usr.getID_authority());
            System.out.println("user name is: " + usr.getID_authority());
            pstmt.setString(12, usr.getAddress());
            System.out.println("user name is: " + usr.getAddress());
            pstmt.setString(13, usr.getDistrict());
            System.out.println("user name is: " + usr.getDistrict());
            pstmt.setString(14, usr.getPincode());
            System.out.println("user name is: " + usr.getPincode());
            pstmt.setString(15, usr.getState());
            System.out.println("user name is: " + usr.getState());
            pstmt.setString(16, usr.getNationality());
            System.out.println("user name is: " + usr.getNationality());
            pstmt.setString(17, usr.getLandmark());
            System.out.println("user name is: " + usr.getLandmark());
            pstmt.setString(18, usr.getQualification_type());
            System.out.println("user name is: " + usr.getQualification_type());
            pstmt.setString(19, usr.getDegree_status());
            System.out.println("user name is: " + usr.getDegree_status());
            pstmt.setString(20, usr.getCollateral_name());
            System.out.println("user name is: " + usr.getCollateral_name());
            pstmt.setString(21, usr.getCollateral_number());
            System.out.println("user name is: " + usr.getCollateral_number());
            pstmt.setString(22, usr.getCollateral_aadhar_number());
            System.out.println("user name is: " + usr.getCollateral_aadhar_number());
            System.out.println(pstmt.toString());
            pstmt.executeUpdate();
            f = true;
        } catch (SQLException e) {
            System.out.println("error in userDao");
        }
        return f;
    }

//    getting user detail from database
    public ServiceProvider getUserByEmailAndPassword(String email, String password) {
        ServiceProvider users = null;
        try {
            String querry = "select * from serviceprovider where email=? and number=? ";
            System.out.println("inside servic provider user dao");
            PreparedStatement psmt = con.prepareStatement(querry);
            psmt.setString(1, email);
            psmt.setString(2, password);
            ResultSet set = psmt.executeQuery();
            if (set.next()) {
                users = new ServiceProvider();
                users.setId(set.getInt(1));
                users.setName(set.getString("name"));
                users.setDOB(set.getString("DOB"));
                users.setEmail(set.getString("email"));
                users.setNumber(set.getString("number"));
                users.setAdditionalnumber(set.getString("additionalnumber"));
                users.setGender(set.getString("gender"));
                users.setFather_name(set.getString("father_name"));
                users.setMother_name(set.getString("mother_name"));
                users.setID_type(set.getString("ID_type"));
                users.setID_number(set.getString("ID_number"));
                users.setID_authority(set.getString("ID_authority"));
                users.setAddress(set.getString("address"));
                users.setDistrict(set.getString("district"));
                users.setPincode(set.getString("pincode"));
                users.setState(set.getString("state"));
                users.setNationality(set.getString("nationality"));
                users.setLandmark(set.getString("landmark"));
                users.setQualification_type(set.getString("qualification_type"));
                users.setDegree(set.getString("degree"));
                users.setDegree_status(set.getString("degree_status"));
                users.setCollateral_name(set.getString("collateral_name"));
                users.setCollateral_number(set.getString("collateral_number"));
                users.setCollateral_aadhar_number(set.getString("collateral_aadhar_number"));
                users.setProfile(set.getString("profile"));
                users.setId(set.getInt("sr_no"));
            } else {
                System.out.println("no such user found");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return users;
    }

    public ServiceProvider getUserByUserId(int postId) {
        ServiceProvider users = null;
        String q = "Select * from user where sr_no=?";
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, postId);
            ResultSet set = ps.executeQuery();

            if (set.next()) {
                users = new ServiceProvider();
                users.setId(set.getInt(1));
                users.setName(set.getString("name"));
                users.setDOB(set.getString("DOB"));
                users.setEmail(set.getString("email"));
                users.setNumber(set.getString("number"));
                users.setAdditionalnumber(set.getString("additionalnumber"));
                users.setGender(set.getString("gender"));
                users.setFather_name("father_name");
                users.setMother_name("mother_name");
                users.setID_type("ID_type");
                users.setID_number("ID_number");
                users.setID_authority("ID_authority");
                users.setAddress("address");
                users.setDistrict("district");
                users.setPincode("pincode");
                users.setState("state");
                users.setNationality("nationality");
                users.setLandmark("landmark");
                users.setQualification_type("qualification_type");
                users.setDegree("degree");
                users.setDegree_status("degree_status");
                users.setCollateral_name("collateral_name");
                users.setCollateral_number("collateral_number");
                users.setCollateral_aadhar_number("collateral_aadhar_number");
            }

        } catch (SQLException e) {
        }

        return users;
    }

    public boolean updateUser(ServiceProvider user) {
        boolean f = false;
        try {
            System.out.println("inside user dao update user");
            String querry = "update serviceprovider set name=?,number=?,additionalnumber=?,district=?,pincode=?,state=?,landmark=?,profile=? where sr_no=?";
            PreparedStatement psmt = con.prepareStatement(querry);
            psmt.setString(1, user.getName());
            psmt.setString(2, user.getNumber());
            psmt.setString(3, user.getAdditionalnumber());
            psmt.setString(4, user.getDistrict());
            psmt.setString(5, user.getPincode());
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

    //    this is tp feetch all the post from database 
    public List<posts> getAllPosts() {
        List<posts> list = new ArrayList<>();
        try {
            PreparedStatement p = con.prepareCall("select * from jobs order by job_id desc");
            ResultSet set = p.executeQuery();
            while (set.next()) {
                int st_id = set.getInt("st_id");
                int pid = set.getInt("job_id");
                String name = set.getString("name");
                String number = set.getString("number");
                String email = set.getString("email");
                String address = set.getString("address");
                String state = set.getString("state");
                String city = set.getString("city");
                String landmark = set.getString("landmark");
                String type = set.getString("type");
                String profile = set.getString("profile");
                String duration = set.getString("duration");
                String pincode = set.getString("pincode");
                posts post = new posts(pid, st_id, name, number, email, address, state, pincode, city, landmark, type, duration, profile);
                list.add(post);
                System.out.println("job listed in List in service provider user dao get all post's method");
            }
        } catch (Exception e) {

        }

        return list;
    }

//    get post by joiid
    public posts getJobByJobId(int jobId) throws SQLException {
        posts post = null;
        String q = "select * from jobs where job_id=?";
        System.out.println("fetching post by post id");
        try {
            PreparedStatement p = con.prepareStatement(q);
            p.setInt(1, jobId);
            ResultSet set = p.executeQuery();

            System.out.println("fetching post by post id inside try");
            if (set.next()) {

                System.out.println("fetching post by post id fetching all details");
                int pid = set.getInt("job_id");
                int jid = set.getInt("st_id");
                String name = set.getString("name");
                String number = set.getString("number");
                String email = set.getString("email");
                String address = set.getString("address");
                String state = set.getString("state");
                String city = set.getString("city");
                String landmark = set.getString("landmark");
                String type = set.getString("type");
                String profile = set.getString("profile");
                String duration = set.getString("duration");
                String pincode = set.getString("pincode");
                post = new posts(pid, jid, name, number, email, address, state, pincode, city, landmark, type, duration, profile);

            }

        } catch (Exception e) {
            System.out.println("error while fetching job in userDao");
        }
        return post;
    }

    public List<posts> getJobByStId(int stId) throws SQLException {
        List<posts> list = new ArrayList<>();
        String q = "select * from jobs where st_id=? order by job_id desc";
        System.out.println("fetching post by post id");
        try {
            PreparedStatement p = con.prepareCall(q);
            p.setInt(1, stId);
            System.out.println("servic taker id in load service is" + stId);
            ResultSet set = p.executeQuery();
            System.out.println("fetching post by service taker id inside try");
            while (set.next()) {

                System.out.println("fetching post by st id fetching all details");
                int pid = set.getInt("job_id");
                int jid = set.getInt("job_id");
                String name = set.getString("name");
                String number = set.getString("number");
                String email = set.getString("email");
                String address = set.getString("address");
                String state = set.getString("state");
                String city = set.getString("city");
                String landmark = set.getString("landmark");
                String type = set.getString("type");
                String profile = set.getString("profile");
                System.out.println("profile name is" + profile);
                System.out.println("job id is" + jid);
                String duration = set.getString("duration");
                String pincode = set.getString("pincode");
                posts post = new posts(pid, jid, name, number, email, address, state, pincode, city, landmark, type, duration, profile);
                list.add(post);
            }

        } catch (Exception e) {
            System.out.println("error while fetching job in userDao");
        }
        return list;
    }

    public boolean deleteService(int jobId) throws SQLException{
        boolean t=false;
        String q="delete from jobs where job_id=?";
        try {
            PreparedStatement p = con.prepareCall(q);
            p.setInt(1, jobId);
            t=p.execute();
            System.out.println("query is deleted with id "+jobId);
        } catch (Exception e) {
        }
        
        
        return t;
    }
}
