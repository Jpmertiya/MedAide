package Entities;

public class posts {
    private int job_id;
    private int st_id;
    private String Name;
    private String Number;
    private String Email;
    private String address;
    private String state;
    private String pincode;
    private String city;
    private String landmark;
    private String type;
    private String duration;
    private String check;
    private String photo;

    public posts() {
    }

    public int getJob_id() {
        return job_id;
    }

    public void setJob_id(int job_id) {
        this.job_id = job_id;
    }

    public posts(int job_id, int st_id, String Name, String Number, String Email, String address, String state, String pincode, String city, String landmark, String type, String duration, String check, String photo) {
        this.job_id = job_id;
        this.st_id = st_id;
        this.Name = Name;
        this.Number = Number;
        this.Email = Email;
        this.address = address;
        this.state = state;
        this.pincode = pincode;
        this.city = city;
        this.landmark = landmark;
        this.type = type;
        this.duration = duration;
        this.photo = photo;
    }
    
    public posts(int job_id,int st_id, String Name, String Number, String Email, String address, String state, String pincode, String city, String landmark, String type, String duration, String photo) {
        this.job_id = job_id;
        this.Name = Name;
        this.Number = Number;
        this.Email = Email;
        this.address = address;
        this.state = state;
        this.pincode = pincode;
        this.city = city;
        this.landmark = landmark;
        this.type = type;
        this.duration = duration;
        this.photo = photo;
        this.st_id=st_id;
    }
    
    public posts(String Name,int st_id, String Number, String Email, String address, String state, String pincode, String city, String landmark, String type, String duration, String photo) {
        this.Name = Name;
        this.Number = Number;
        this.Email = Email;
        this.address = address;
        this.state = state;
        this.pincode = pincode;
        this.city = city;
        this.landmark = landmark;
        this.type = type;
        this.duration = duration;
        this.photo = photo;
        this.st_id=st_id;
    }

    public posts(String Name, String Number, String Email, String address, String state, String pincode, String city, String landmark, String type, String duration, String check, String photo,int st_id) {
        this.Name = Name;
        this.Number = Number;
        this.Email = Email;
        this.address = address;
        this.state = state;
        this.pincode = pincode;
        this.city = city;
        this.landmark = landmark;
        this.type = type;
        this.duration = duration;
        this.check = check;
        this.photo = photo;
        this.st_id=st_id;
    }

    public int getSt_id() {
        return st_id;
    }

    public void setSt_id(int st_id) {
        this.st_id = st_id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getNumber() {
        return Number;
    }

    public void setNumber(String Number) {
        this.Number = Number;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getLandmark() {
        return landmark;
    }

    public void setLandmark(String landmark) {
        this.landmark = landmark;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

}
