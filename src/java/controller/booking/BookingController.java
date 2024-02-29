/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.booking;

import Enums.ConfigEnum;
import dal.ConfigDAO;
import dal.TimeConfigDAO;
import entity.TimeConfig;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author My Computer
 */
@WebServlet(name = "BookingController", urlPatterns = {"/appointment"})
public class BookingController extends HttpServlet {
    private final ConfigDAO configDAO;
    private final TimeConfigDAO timeConfigDAO;
    private final  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    public BookingController(){
        this.configDAO = new ConfigDAO();
        this.timeConfigDAO = new TimeConfigDAO();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double durationConfig = configDAO.getConfigValue(ConfigEnum.Config.TIME_DURATION.name());
        String dateRaw = request.getParameter("date");
        Date date = new Date();
        if(dateRaw != null) try {
            date = dateFormat.parse(dateRaw);
        } catch (ParseException ex) {
            Logger.getLogger(BookingController.class.getName()).log(Level.SEVERE, null, ex);
        }
        List<TimeConfig> timeConfigs = timeConfigDAO.getTimeConfigOrderByStartTimeAsc();
        LocalTime starTime = null;
        LocalTime endTime = null;
        if(timeConfigs != null && !timeConfigs.isEmpty()){
            starTime = timeConfigs.get(0).getStartHour();
            endTime = timeConfigs.get(timeConfigs.size() - 1).getEndHour();
        }
        request.setAttribute("duration", durationConfig);
        request.setAttribute("starTime", starTime);
        request.setAttribute("endTime", endTime);
        request.setAttribute("date", dateFormat.format(date));
        request.getRequestDispatcher("Main Template/appointment.jsp").forward(request, response);
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
        processRequest(request, response);
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
