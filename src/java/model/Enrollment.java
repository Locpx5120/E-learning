/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class Enrollment {
    private int courseId;
    private String username;
    private int rating;
    private Date enrollDate;
    private Date finishedDate;
    private String feedback;

    public Enrollment() {
    }
    
    

    // Constructors, getters, and setters

    public Enrollment(int courseId, String username, int rating, Date enrollDate, Date finishedDate, String feedback) {
        this.courseId = courseId;
        this.username = username;
        this.rating = rating;
        this.enrollDate = enrollDate;
        this.finishedDate = finishedDate;
        this.feedback = feedback;
    }

    // Getter and setter methods for each field

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public Date getEnrollDate() {
        return enrollDate;
    }

    public void setEnrollDate(Date enrollDate) {
        this.enrollDate = enrollDate;
    }

    public Date getFinishedDate() {
        return finishedDate;
    }

    public void setFinishedDate(Date finishedDate) {
        this.finishedDate = finishedDate;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    // Override toString() method for easy printing
    @Override
    public String toString() {
        return "Enrollment{" +
                "courseId=" + courseId +
                ", username='" + username + '\'' +
                ", rating=" + rating +
                ", enrollDate=" + enrollDate +
                ", finishedDate=" + finishedDate +
                ", feedback='" + feedback + '\'' +
                '}';
    }
}
