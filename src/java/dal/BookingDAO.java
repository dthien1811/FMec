/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import Enums.StatusEnum;
import dto.BookingDTO;
import dto.DoctorAppointmentDTO;
import dto.MyAppointmentDTO;
import entity.Booking;
import entity.User;
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
public class BookingDAO extends DBContext {

    public List<Booking> getDoctorBooking(int doctorId, Date date) {
        List<Booking> bookings = new ArrayList<>();
        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        try {
            String sql = "SELECT * FROM Booking s WHERE s.doctor_id = ? "
                    + "and DATEPART(year , s.start_date) = ? AND DATEPART(month , s.start_date) = ? AND "
                    + "DATEPART(day , s.start_date) = ? AND s.status != ?";
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, doctorId);
            int year = localDate.getYear();
            int month = localDate.getMonthValue();
            int day = localDate.getDayOfMonth();
            statement.setInt(2, year);
            statement.setInt(3, month);
            statement.setInt(4, day);
            statement.setInt(5, StatusEnum.BookingStatus.CANCELED.getValue());
            ResultSet resultSet = statement.executeQuery();
            Booking booking;
            while (resultSet.next()) {
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
    
    public List<MyAppointmentDTO> getPatientAppointment(int customerId) {
        List<MyAppointmentDTO> bookings = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Booking s "
                    + "LEFT JOIN [User] doctor ON s.doctor_id = doctor.[userId] "
                    + "  WHERE s.customer_id = ? ";
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, customerId);
            ResultSet resultSet = statement.executeQuery();
            MyAppointmentDTO booking;
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                Date startDate = resultSet.getTimestamp("start_date");
                Date endDate = resultSet.getTimestamp("end_date");
                Date createDate = resultSet.getTimestamp("create_date");
                String doctorName = resultSet.getString("name");
                String note = resultSet.getString("note");
                int status = resultSet.getInt("status");
                String statusName = "";
                for(StatusEnum.BookingStatus s : StatusEnum.BookingStatus.values()){
                    if(status == s.getValue()){
                        statusName = s.name();
                        break;
                    }
                }
                booking = new MyAppointmentDTO(id, doctorName, statusName, note, startDate, endDate , createDate);
                bookings.add(booking);
            }
        } catch (Exception ex) {
            Logger.getLogger(DoctorScheduleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bookings;
    }
    
    public List<DoctorAppointmentDTO> getDoctorAppointment(int doctorId) {
        List<DoctorAppointmentDTO> bookings = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Booking s "
                    + "LEFT JOIN [User] doctor ON s.doctor_id = doctor.[userId] "
                    + "  WHERE s.doctor_id = ? ";
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, doctorId);
            ResultSet resultSet = statement.executeQuery();
            DoctorAppointmentDTO booking;
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                Date startDate = resultSet.getTimestamp("start_date");
                Date endDate = resultSet.getTimestamp("end_date");
                Date createDate = resultSet.getTimestamp("create_date");
                String doctorName = resultSet.getString("name");
                String note = resultSet.getString("note");
                int status = resultSet.getInt("status");
                String statusName = "";
                for(StatusEnum.BookingStatus s : StatusEnum.BookingStatus.values()){
                    if(status == s.getValue()){
                        statusName = s.name();
                        break;
                    }
                }
                booking = new DoctorAppointmentDTO(id, doctorName, statusName, note, startDate, endDate , createDate);
                bookings.add(booking);
            }
        } catch (Exception ex) {
            Logger.getLogger(DoctorScheduleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bookings;
    }

    public int insertBooking(BookingDTO bookingDTO) {
        try {
            String sql = "INSERT INTO [dbo].[Booking]\n"
                    + "           ([doctor_id]\n"
                    + "           ,[customer_id]\n"
                    + "           ,[status]\n"
                    + "           ,[note]\n"
                    + "           ,[start_date]\n"
                    + "           ,[end_date])\n"
                    + "     VALUES\n"
                    + "           (? , ? , ? , ? , ? , ?)";
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, bookingDTO.getDoctorId());
            statement.setInt(2, bookingDTO.getCustomerId());
            statement.setInt(3, StatusEnum.BookingStatus.PENDING.getValue());
            statement.setString(4, bookingDTO.getNote());
            statement.setTimestamp(5, new java.sql.Timestamp(bookingDTO.getStartDate().getTime()) );
            statement.setTimestamp(6, new java.sql.Timestamp(bookingDTO.getEndDate().getTime()));
            return statement.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(BookingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
}
