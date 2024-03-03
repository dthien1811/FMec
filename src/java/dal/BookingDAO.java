/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import entity.Booking;
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
public class BookingDAO extends DBContext{
    public List<Booking> getDoctorBooking(int doctorId , Date date){
        List<Booking> bookings = new ArrayList<>();
        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        try {
            String sql = "SELECT * FROM Booking s WHERE s.doctor_id = ? "
                    + "and DATEPART(year , s.start_date) = ? AND DATEPART(month , s.start_date) = ? AND "
                    + "DATEPART(day , s.start_date) = ?";
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, doctorId);
            int year = localDate.getYear();
            int month = localDate.getMonthValue();
            int day = localDate.getDayOfMonth();
            statement.setInt(2,year);
            statement.setInt(3, month);
            statement.setInt(4, day);
            ResultSet resultSet = statement.executeQuery();
            Booking booking;
            while(resultSet.next()){
                int id = resultSet.getInt("id");
                Date startDate = resultSet.getTimestamp("start_date");
                Date endDate = resultSet.getTimestamp("end_date");
                booking = new Booking();
                booking.setId(id);
                booking.setStartDate(startDate);
                booking.setEndDate(endDate);
                bookings.add(booking);
            }
        } catch (Exception ex) {
            Logger.getLogger(DoctorScheduleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bookings;
    }
}
