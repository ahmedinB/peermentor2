package bean;


import java.util.Date;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author simondarota
 */
public class Discussion {

    private static int idd = 0;
    private int id;
    private Student fromStudent;
    private Student toStudent;
    private String text;
    private boolean isRead;
    private Date date;

    public Discussion() {
        this.id = idd++;
        this.date = new Date();
    }

    public static int getIdd() {
        return idd;
    }

    public static void setIdd(int idd) {
        Discussion.idd = idd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Student getFromStudent() {
        return fromStudent;
    }

    public void setFromStudent(Student fromStudent) {
        this.fromStudent = fromStudent;
    }

    public Student getToStudent() {
        return toStudent;
    }

    public void setToStudent(Student toStudent) {
        this.toStudent = toStudent;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public boolean isIsRead() {
        return isRead;
    }

    public void setIsRead(boolean isRead) {
        this.isRead = isRead;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Discussion{" + "id=" + id + ", fromStudent=" + fromStudent + ", toStudent=" + toStudent + ", text=" + text + ", isRead=" + isRead + ", date=" + date + '}';
    }

}
