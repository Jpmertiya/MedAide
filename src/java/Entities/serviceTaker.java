package Entities;

public class serviceTaker {

    private int id;
    private String name;
    private String DOB;
    private String email;
    private String number;
    private String gender;
    private String occupation;
    private String father_name;
    private String mother_name;
    private String spouse_name;
    private String ID_type;
    private String ID_number;
    private String ID_authority;
    private String address;
    private String district;
    private String block_number;
    private String state;
    private String nationality;
    private String landmark;
    private String profile;

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public serviceTaker(int id, String name, String DOB, String email, String number, String gender, String occupation, String father_name, String mother_name, String spouse_name, String ID_type, String ID_number, String ID_authority, String address, String district, String block_number, String state, String nationality, String landmark, String profile) {
        this.id = id;
        this.name = name;
        this.DOB = DOB;
        this.email = email;
        this.number = number;
        this.gender = gender;
        this.occupation = occupation;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.spouse_name = spouse_name;
        this.ID_type = ID_type;
        this.ID_number = ID_number;
        this.ID_authority = ID_authority;
        this.address = address;
        this.district = district;
        this.block_number = block_number;
        this.state = state;
        this.nationality = nationality;
        this.landmark = landmark;
        this.profile = profile;
    }

    public serviceTaker(int id, String name, String DOB, String email, String number, String gender, String occupation, String father_name, String mother_name, String spouse_name, String ID_type, String ID_number, String ID_authority, String address, String district, String block_number, String state, String nationality, String landmark) {
        this.id = id;
        this.name = name;
        this.DOB = DOB;
        this.email = email;
        this.number = number;
        this.gender = gender;
        this.occupation = occupation;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.spouse_name = spouse_name;
        this.ID_type = ID_type;
        this.ID_number = ID_number;
        this.ID_authority = ID_authority;
        this.address = address;
        this.district = district;
        this.block_number = block_number;
        this.state = state;
        this.nationality = nationality;
        this.landmark = landmark;
    }

    public serviceTaker(String name, String DOB, String email, String number, String gender, String occupation, String father_name, String mother_name, String spouse_name, String ID_type, String ID_number, String ID_authority, String address, String district, String block_number, String state, String nationality, String landmark) {
        this.name = name;
        this.DOB = DOB;
        this.email = email;
        this.number = number;
        this.gender = gender;
        this.occupation = occupation;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.spouse_name = spouse_name;
        this.ID_type = ID_type;
        this.ID_number = ID_number;
        this.ID_authority = ID_authority;
        this.address = address;
        this.district = district;
        this.block_number = block_number;
        this.state = state;
        this.nationality = nationality;
        this.landmark = landmark;
    }

    public serviceTaker() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getFather_name() {
        return father_name;
    }

    public void setFather_name(String father_name) {
        this.father_name = father_name;
    }

    public String getMother_name() {
        return mother_name;
    }

    public void setMother_name(String mother_name) {
        this.mother_name = mother_name;
    }

    public String getSpouse_name() {
        return spouse_name;
    }

    public void setSpouse_name(String spouse_name) {
        this.spouse_name = spouse_name;
    }

    public String getID_type() {
        return ID_type;
    }

    public void setID_type(String ID_type) {
        this.ID_type = ID_type;
    }

    public String getID_number() {
        return ID_number;
    }

    public void setID_number(String ID_number) {
        this.ID_number = ID_number;
    }

    public String getID_authority() {
        return ID_authority;
    }

    public void setID_authority(String ID_authority) {
        this.ID_authority = ID_authority;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getBlock_number() {
        return block_number;
    }

    public void setBlock_number(String block_number) {
        this.block_number = block_number;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getLandmark() {
        return landmark;
    }

    public void setLandmark(String landmark) {
        this.landmark = landmark;
    }

}
