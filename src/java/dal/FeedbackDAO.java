/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import entity.Feedback;
import entity.User;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author My Computer
 */
public class FeedbackDAO extends DBContext{
    public List<Feedback> getTop8LastFeedbacks(){
        List<Feedback> feedbacks = new ArrayList<>();
        try {
            String sql = "SELECT TOP 8 * FROM Feedback "
                    + "LEFT JOIN [User] patient on Feedback.benhnhanFeedbackId = patient.userId "
                    + "ORDER BY feedbackId desc";
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            Feedback feedback;
            while(rs.next()){
                feedback = new Feedback();
                feedback.setId(rs.getInt("feedbackId"));
                User patient = new User();
                patient.setEmail(rs.getString("email"));
                patient.setAvatar(rs.getString("avatar"));
                feedback.setPatient(patient);
                feedback.setContent(rs.getString("content"));
                feedbacks.add(feedback);
            }
        } catch (Exception ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return feedbacks;
    }
    
    public List<Feedback> getFeedbacksByDoctorId(int doctorId){
        List<Feedback> feedbacks = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Feedback "
                    + "LEFT JOIN [User] patient on Feedback.benhnhanFeedbackId = patient.userId "
                    + "WHERE Feedback.bacsiNhanFeedbackId = ? ";
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, doctorId);
            ResultSet rs = statement.executeQuery();
            Feedback feedback;
            while(rs.next()){
                feedback = new Feedback();
                feedback.setId(rs.getInt("feedbackId"));
                User patient = new User();
                patient.setEmail(rs.getString("email"));
                feedback.setPatient(patient);
                feedback.setContent(rs.getString("content"));
                feedbacks.add(feedback);
            }
        } catch (Exception ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return feedbacks;
    }
}
