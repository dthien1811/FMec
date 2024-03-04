/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import Enums.StatusEnum;
import entity.DoctorSchedule;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author My Computer
 */
public class DoctorScheduleDAO extends DBContext{
    public List<DoctorSchedule> getDoctorSchedule(int doctorId , Date date){
        List<DoctorSchedule> schedules = new ArrayList<>();
        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        try {
            String sql = "SELECT * FROM DoctorSchedule s WHERE s.doctor_id = ? "
                    + "and DATEPART(year , s.start_date) = ? AND DATEPART(month , s.start_date) = ? AND "
                    + "DATEPART(day , s.start_date) = ? AND s.status = ?";
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, doctorId);
            int year = localDate.getYear();
            int month = localDate.getMonthValue();
            int day = localDate.getDayOfMonth();
            statement.setInt(2,year);
            statement.setInt(3, month);
            statement.setInt(4, day);
            statement.setInt(5, StatusEnum.ScheduleStatus.APPROVED.getValue());
            ResultSet resultSet = statement.executeQuery();
            DoctorSchedule doctorSchedule;
            while(resultSet.next()){
                int id = resultSet.getInt("id");
                Date startDate = resultSet.getTimestamp("start_date");
                Date endDate = resultSet.getTimestamp("end_date");
                doctorSchedule = new DoctorSchedule();
                doctorSchedule.setId(id);
                doctorSchedule.setStartDate(startDate);
                doctorSchedule.setEndDate(endDate);
                schedules.add(doctorSchedule);
            }
        } catch (Exception ex) {
            Logger.getLogger(DoctorScheduleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return schedules;
    }
    
}
