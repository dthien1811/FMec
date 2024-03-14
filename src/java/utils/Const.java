/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import Enums.UserRoleEnum;
import java.util.HashMap;

/**
 *
 * @author My Computer
 */
public class Const {
    /* ADMIN URL */
    public static final String ADMIN_CREATE_DOCTOR_URL = "/createDoctor";
    public static final String ADMIN_VIEW_ALL_APPOINTMENT_URL = "/viewAppointment";
    /* DOCTOR URL */
    public static final String DOCTOR_VIEW_APPOINTMENT_URL = "/doctorAppointment";
    public static final String DOCTOR_TIME_TABLE_REGISTRATION_URL = "/timeTableRegistration";
    public static final String DOCTOR_START_EXAMINING_URL = "/startExamining";
    public static final String DOCTOR_END_EXAMINING_URL = "/endExamining";
    /* CUSTOMER URL */
    public static final String BOOKING_URL = "/appointment";
    public static final String CUSTOMER_VIEW_APPOINTMENT = "/myAppointment";
    
    /* PUBLIC URL */
    public static final String LOGIN_URL = "/LoginServlet";
    
    /* NOTIFICATION MESSAGE */
    public static final String NEW_BOOKING_REQUEST_MESSAGE = "New pending booking request was send";
    public static final String NEW_DOCTOR_SCHEDULE_REQUEST_MESSAGE = "New doctor schedule request was send";
    
    public static final String[] ADMIN_URL = new String[]{ADMIN_CREATE_DOCTOR_URL , ADMIN_VIEW_ALL_APPOINTMENT_URL};
    public static final String[] DOCTOR_URL = new String[]{DOCTOR_VIEW_APPOINTMENT_URL , DOCTOR_TIME_TABLE_REGISTRATION_URL ,
    DOCTOR_START_EXAMINING_URL , DOCTOR_END_EXAMINING_URL};
    public static final String[] CUSTOMER_URL = new String[]{BOOKING_URL , CUSTOMER_VIEW_APPOINTMENT};
    public static final HashMap<String , String[]> URL ;
    static {
        URL = new HashMap<>();
        // Initialize the map with desired key-value pairs
        URL.put(UserRoleEnum.UserRole.Admin.toString(), ADMIN_URL);
        URL.put(UserRoleEnum.UserRole.Customer.toString(), CUSTOMER_URL);
        URL.put(UserRoleEnum.UserRole.Professor.toString(), DOCTOR_URL);
    }
}
