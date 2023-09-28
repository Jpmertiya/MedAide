package Entities;

public class Notification_message {
        private int sp_id;
        private int st_id;
        private int message_id;
        private String name;
        private String dateAndTime;
        private String email;
        private String number;
        private String additional_number;
        private String gender;
        private String profile;

    public Notification_message(int Sp_id, String name, String email, String number, String additional_number, String gender, String profile,int message_id,String date) {
        this.sp_id = Sp_id;
        this.name = name;
        this.message_id=message_id;
        this.email = email;
        this.number = number;
        this.additional_number = additional_number;
        this.gender = gender;
        this.profile = profile;
        this.dateAndTime=date;
    }

    public Notification_message() {
    }

    public Notification_message(int Sp_id, int st_id, String name, String email, String number, String additional_number, String gender, String profile) {
        this.sp_id = Sp_id;
        this.st_id = st_id;
        this.name = name;
        this.email = email;
        this.number = number;
        this.additional_number = additional_number;
        this.gender = gender;
        this.profile = profile;
    }
    
    public Notification_message(int Sp_id, int st_id, int message_id, String name, String email, String number, String additional_number, String gender, String profile) {
        this.sp_id = Sp_id;
        this.st_id = st_id;
        this.message_id = message_id;
        this.name = name;
        this.email = email;
        this.number = number;
        this.additional_number = additional_number;
        this.gender = gender;
        this.profile = profile;
    }

    public String getDateAndTime() {
        return dateAndTime;
    }

    public void setDateAndTime(String dateAndTime) {
        this.dateAndTime = dateAndTime;
    }
      
    public int getSt_id() {
        return st_id;
    }

    public void setSt_id(int st_id) {
        this.st_id = st_id;
    }

    public int getMessage_id() {
        return message_id;
    }

    public void setMessage_id(int message_id) {
        this.message_id = message_id;
    }

    public int getSp_id() {
        return sp_id;
    }

    public void setSp_id(int p_id) {
        this.sp_id = p_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAdditional_number() {
        return additional_number;
    }

    public void setAdditional_number(String additional_number) {
        this.additional_number = additional_number;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
        
}
