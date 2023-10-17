package bean;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author simondarota
 */
public class Student {

    private static int idd = 0;
    private String id, firstName, lastName, gender, educationLevel, departmentName;

    public Student(String id, String firstName, String lastName, String gender, String educationLevel, String departmentName) {
        this.id = "" + (idd++);
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.educationLevel = educationLevel;
        this.departmentName = departmentName;
    }

    public Student() {
        this.id = "" + (idd++);

    }

    public Student(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEducationLevel() {
        return educationLevel;
    }

    public void setEducationLevel(String educationLevel) {
        this.educationLevel = educationLevel;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    @Override
    public String toString() {
        if (this != null) {
            return firstName + " " + lastName;
        } else {
            return "Default";
        }
    }

}
