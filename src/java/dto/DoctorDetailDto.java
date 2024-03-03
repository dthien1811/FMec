/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import entity.Feedback;
import java.util.List;

/**
 *
 * @author My Computer
 */
public class DoctorDetailDto extends DoctorCardDto{
    private List<Feedback> feedbacks;

    public List<Feedback> getFeedbacks() {
        return feedbacks;
    }

    public void setFeedbacks(List<Feedback> feedbacks) {
        this.feedbacks = feedbacks;
    }
    
    
}
