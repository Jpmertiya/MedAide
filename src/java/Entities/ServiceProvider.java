/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

import java.sql.Timestamp;

/**
 *
 * @author js594
 */
public class ServiceProvider {

    private int id;
    private String name;
    private String DOB;
    private String email;
    private String number;
    private String additionalnumber;
    private String gender;
    private String father_name;
    private String mother_name;
    private String ID_type;
    private String ID_number;
    private String ID_authority;
    private String address;
    private String district;
    private String pincode;
    private String state;
    private String nationality;
    private String landmark;
    private String qualification_type;
    private String degree;
    private String degree_status;
    private String collateral_name;
    private String collateral_number;
    private String collateral_aadhar_number;
    private String profile;

    public ServiceProvider() {
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public ServiceProvider(int id, String name, String DOB, String email, String number, String additionalnumber, String gender, String father_name, String mother_name, String ID_type, String ID_number, String ID_authority, String address, String district, String pincode, String state, String nationality, String landmark, String qualification_type, String degree, String degree_status, String collateral_name, String collateral_number, String collateral_aadhar_number, String profile) {
        this.id = id;
        this.name = name;
        this.DOB = DOB;
        this.email = email;
        this.number = number;
        this.additionalnumber = additionalnumber;
        this.gender = gender;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.ID_type = ID_type;
        this.ID_number = ID_number;
        this.ID_authority = ID_authority;
        this.address = address;
        this.district = district;
        this.pincode = pincode;
        this.state = state;
        this.nationality = nationality;
        this.landmark = landmark;
        this.qualification_type = qualification_type;
        this.degree = degree;
        this.degree_status = degree_status;
        this.collateral_name = collateral_name;
        this.collateral_number = collateral_number;
        this.collateral_aadhar_number = collateral_aadhar_number;
        this.profile = profile;
    }

    public ServiceProvider(String name, String DOB, String email, String number, String additionalnumber, String gender, String father_name, String mother_name, String ID_type, String ID_number, String ID_authority, String address, String district, String pincode, String state, String nationality, String landmark, String qualification_type, String degree_status, String collateral_name, String collateral_number, String collateral_aadhar_number) {
        this.name = name;
        this.DOB = DOB;
        this.email = email;
        this.number = number;
        this.additionalnumber = additionalnumber;
        this.gender = gender;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.ID_type = ID_type;
        this.ID_number = ID_number;
        this.ID_authority = ID_authority;
        this.address = address;
        this.district = district;
        this.pincode = pincode;
        this.state = state;
        this.nationality = nationality;
        this.landmark = landmark;
        this.qualification_type = qualification_type;
        this.degree_status = degree_status;
        this.collateral_name = collateral_name;
        this.collateral_number = collateral_number;
        this.collateral_aadhar_number = collateral_aadhar_number;
    }

    public ServiceProvider(int id, String name, String DOB, String email, String number, String additionalnumber, String gender, String father_name, String mother_name, String ID_type, String ID_number, String ID_authority, String address, String district, String pincode, String state, String nationality, String landmark, String qualification_type, String degree, String degree_status, String collateral_name, String collateral_number, String collateral_aadhar_number) {
        this.id = id;
        this.name = name;
        this.DOB = DOB;
        this.email = email;
        this.number = number;
        this.additionalnumber = additionalnumber;
        this.gender = gender;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.ID_type = ID_type;
        this.ID_number = ID_number;
        this.ID_authority = ID_authority;
        this.address = address;
        this.district = district;
        this.pincode = pincode;
        this.state = state;
        this.nationality = nationality;
        this.landmark = landmark;
        this.qualification_type = qualification_type;
        this.degree = degree;
        this.degree_status = degree_status;
        this.collateral_name = collateral_name;
        this.collateral_number = collateral_number;
        this.collateral_aadhar_number = collateral_aadhar_number;
    }

    public ServiceProvider(String name, String DOB, String email, String number, String additionalnumber, String gender, String father_name, String mother_name, String ID_type, String ID_number, String ID_authority, String address, String district, String pincode, String state, String nationality, String landmark, String qualification_type, String degree, String degree_status, String collateral_name, String collateral_number, String collateral_aadhar_number) {
        this.name = name;
        this.DOB = DOB;
        this.email = email;
        this.number = number;
        this.additionalnumber = additionalnumber;
        this.gender = gender;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.ID_type = ID_type;
        this.ID_number = ID_number;
        this.ID_authority = ID_authority;
        this.address = address;
        this.district = district;
        this.pincode = pincode;
        this.state = state;
        this.nationality = nationality;
        this.landmark = landmark;
        this.qualification_type = qualification_type;
        this.degree = degree;
        this.degree_status = degree_status;
        this.collateral_name = collateral_name;
        this.collateral_number = collateral_number;
        this.collateral_aadhar_number = collateral_aadhar_number;
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

    public String getAdditionalnumber() {
        return additionalnumber;
    }

    public void setAdditionalnumber(String additionalnumber) {
        this.additionalnumber = additionalnumber;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
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

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
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

    public String getQualification_type() {
        return qualification_type;
    }

    public void setQualification_type(String qualification_type) {
        this.qualification_type = qualification_type;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getDegree_status() {
        return degree_status;
    }

    public void setDegree_status(String degree_status) {
        this.degree_status = degree_status;
    }

    public String getCollateral_name() {
        return collateral_name;
    }

    public void setCollateral_name(String collateral_name) {
        this.collateral_name = collateral_name;
    }

    public String getCollateral_number() {
        return collateral_number;
    }

    public void setCollateral_number(String collateral_number) {
        this.collateral_number = collateral_number;
    }

    public String getCollateral_aadhar_number() {
        return collateral_aadhar_number;
    }

    public void setCollateral_aadhar_number(String collateral_aadhar_number) {
        this.collateral_aadhar_number = collateral_aadhar_number;
    }

}
