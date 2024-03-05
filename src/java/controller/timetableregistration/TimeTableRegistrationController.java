/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.timetableregistration;

import com.google.gson.Gson;
import dal.DoctorScheduleDAO;
import dal.TimeConfigDAO;
import dto.TimeConfigDTO;
import entity.DoctorSchedule;
import entity.TimeConfig;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author My Computer
 */
@WebServlet(name = "TimeTableRegistrationController", urlPatterns = {"/timeTableRegistration"})
public class TimeTableRegistrationController extends HttpServlet {
    private final TimeConfigDAO timeConfigDAO;
    private final DoctorScheduleDAO doctorScheduleDAO;
    private final Gson gson;
    private final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    public TimeTableRegistrationController(){
        timeConfigDAO = new TimeConfigDAO();
        doctorScheduleDAO = new DoctorScheduleDAO();
        gson = new Gson();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dateRaw = request.getParameter("date");
        Date date = new Date();
        try {
            if(dateRaw != null)
            date = dateFormat.parse(dateRaw);
        } catch (ParseException ex) {
            Logger.getLogger(TimeTableRegistrationController.class.getName()).log(Level.SEVERE, null, ex);
        }
        HttpSession session = request.getSession();
        User doctor = (User) session.getAttribute("user");
        
        List<TimeConfig> timeConfigs = timeConfigDAO.getTimeConfigOrderByStartTimeAsc();
        List<TimeConfigDTO> dtos = new ArrayList<>();
        List<DoctorSchedule> schedulesByDate = doctorScheduleDAO.getDoctorScheduleIsNotCanceled(doctor.getUserId(), date);
        List<DoctorSchedule> schedules = doctorScheduleDAO.getDoctorSchedule(doctor.getUserId());
        for(TimeConfig timeConfig : timeConfigs){
            Calendar startDate = Calendar.getInstance();
            startDate.setTime(date);
            startDate.set(Calendar.HOUR_OF_DAY, timeConfig.getStartHour().getHour());
            startDate.set(Calendar.MINUTE, timeConfig.getStartHour().getMinute());
            Calendar endDate = Calendar.getInstance();
            endDate.setTime(date);
            endDate.set(Calendar.HOUR_OF_DAY, timeConfig.getEndHour().getHour());
            endDate.set(Calendar.MINUTE, timeConfig.getEndHour().getMinute());
            if(isDuplicateSchedule(schedulesByDate, startDate.getTime(), endDate.getTime())) continue;
            TimeConfigDTO dto = new TimeConfigDTO(timeConfig.getId(), timeConfig.getConfigName(), startDate.getTime() , endDate.getTime() );
            dtos.add(dto);
        }
        request.setAttribute("slots", dtos);
        String formattedDate = dateFormat.format(date);
        String minDate = dateFormat.format(new Date());
        request.setAttribute("minDate", minDate);
        request.setAttribute("doctorSchedules", gson.toJson(schedules));
        request.setAttribute("date", formattedDate);
        
        request.getRequestDispatcher("Main Template/time-table-registration.jsp").forward(request, response);
    }
    
    boolean isDuplicateSchedule(List<DoctorSchedule> schedules , Date startDate , Date endDate){
        if(schedules == null || schedules.isEmpty()) return false;
        for (DoctorSchedule doctorSchedule : schedules) {
                if (startDate.compareTo(doctorSchedule.getEndDate()) < 0
                        && endDate.compareTo(doctorSchedule.getStartDate()) > 0) {
                    return true;
                }
            }
        return false;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String format = "EEE MMM dd HH:mm:ss zzz yyyy";
        SimpleDateFormat sdf = new SimpleDateFormat(format);

        String startDateRaw = request.getParameter("startDate");
        String endDateRaw = request.getParameter("endDate");
        Date startDate = null;
        Date endDate = null;
        if (startDateRaw != null && endDateRaw != null) {
            try {
                startDate = sdf.parse(startDateRaw);
                startDate.setMinutes(0);
                endDate = sdf.parse(endDateRaw);
                endDate.setMinutes(0);
            } catch (ParseException ex) {
                Logger.getLogger(TimeTableRegistrationController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if (startDate != null && endDate != null) {
            HttpSession session = request.getSession();
            User doctor = (User) session.getAttribute("user");
            DoctorSchedule schedule = new DoctorSchedule();
            schedule.setStartDate(startDate);
            schedule.setEndDate(endDate);
            schedule.setDoctor(doctor);
            int result = doctorScheduleDAO.insertDoctorSchedule(schedule);
            response.getWriter().print(result);
            return;
        }
        response.getWriter().print(-1);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
