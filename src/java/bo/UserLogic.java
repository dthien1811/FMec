/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bo;

import dal.UserDAO;
import entity.User;

/**
 *
 * @author Lenovo
 */
public class UserLogic {

    public User findByUsernamePassword(String email, String password) {
        User user = new User();
        UserDAO userDAO = new UserDAO();
        //Dua email nhan duoc o giao dien ve user
        user.setEmail(email);
        user.setPassword(password);
        User userFound = userDAO.findByUsernamePassword(user);
        return userFound;
    }

    public boolean createUser(String name, String phone, String email, String password) {
        User userRegister = new User();
        UserDAO userDAO = new UserDAO();
        userRegister.setName(name);
        userRegister.setPhone(phone);
        userRegister.setEmail(email);
        userRegister.setPassword(password);
    boolean isSuccessRegister =userDAO.createUser(userRegister);
        return isSuccessRegister;

    }


}
