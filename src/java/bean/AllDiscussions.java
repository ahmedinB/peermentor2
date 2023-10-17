package bean;

import java.util.ArrayList;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author simondarota
 */
public class AllDiscussions {

    private ArrayList<Discussion> discussions = new ArrayList();
    private ArrayList<Student> mentorsList = new ArrayList();

    public AllDiscussions() {
        // for (int i = 0; i < 10; i++) {
        Discussion d = new Discussion();
        Student fStudent = new Student();
        fStudent.setFirstName("Will");
        fStudent.setLastName("Smith");
        mentorsList.add(fStudent);
        d.setToStudent(fStudent);
        discussions.add(d);
        
        Student ttStudent = new Student();
        ttStudent.setFirstName("Foo");
        ttStudent.setLastName("Bazz");
      //  mentorsList.add(ttStudent);
        d.setFromStudent(ttStudent);
        d.setText("This is sent to test the system");
        
        Student tStudent = new Student();
        tStudent.setFirstName("Ahamedin-");
        tStudent.setLastName("Bekera-");
        mentorsList.add(tStudent);
        Student t2Student = new Student();
        t2Student.setFirstName("Simon-");
        t2Student.setLastName("Daorta-");
        mentorsList.add(t2Student);
        Student t3Student = new Student();
        t3Student.setFirstName("Winner-");
        t3Student.setLastName("Abula-");
        mentorsList.add(t3Student);
        Student t4Student = new Student();
        t4Student.setFirstName("Rediet");
        t4Student.setLastName("Mulugeta");
        mentorsList.add(t4Student);

//            d.setFromStudent(fStudent);
//            d.setToStudent(tStudent);
        // d.setText("Testing duscussion " + i);
        // discussions.add(d);
        //  }
    }

    @Override
    public String toString() {
        return "AllDiscussions{" + "discussions=" + discussions + ", mentorsList=" + mentorsList + '}';
    }

    public ArrayList<Discussion> getDiscussions() {
        return discussions;
    }

    public ArrayList<Student> getMentorsList() {
        return mentorsList;
    }

    public void setMentorsList(ArrayList<Student> mentorsList) {
        this.mentorsList = mentorsList;
    }

    public void setDiscussions(ArrayList<Discussion> discussions) {
        this.discussions = discussions;
    }

    public Student getStudentByID(String id) {
        for (Discussion d : discussions) {
            if (d.getFromStudent().getId().equals(id)) {
                return d.getFromStudent();
            } else if (d.getToStudent().getId().equals(id)) {
                return d.getToStudent();
            }
        }
        return null;

    }
}
