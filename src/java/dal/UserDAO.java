/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Lenovo
 */
public class UserDAO extends DBContext {

    public List<User> findAll() {

        List<User> list = new ArrayList<>();
        String sql = "SELECT [userId]\n"
                + "      ,[majorId]\n"
                + "      ,[role]\n"
                + "      ,[address]\n"
                + "      ,[avatar]\n"
                + "      ,[name]\n"
                + "      ,[phone]\n"
                + "      ,[email]\n"
                + "      ,[password]\n"
                + "  FROM [dbo].[User]";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String majorId = resultSet.getString("majorId");
                String role = resultSet.getString("role");
                String address = resultSet.getString("address");
                String avatar = resultSet.getString("avatar");
                String name = resultSet.getString("name");
                String phone = resultSet.getString("phone");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                User user = new User(majorId, role, address, avatar, name, phone, email, password);
                list.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
//                if (resultSet != null) {
//                    resultSet.close();
//                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return list;
    }

    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();
        List<User> list = userDAO.findAll();
        if (list.isEmpty()) {
            System.out.println("List is Empty");
        } else {

            for (User user : userDAO.findAll()) {
                System.out.println(user);
            }
        }
    }

    public User findByUsernamePassword(User user) {
        String sql = "SELECT [userId]\n"
                + "      ,[majorId]\n"
                + "      ,[role]\n"
                + "      ,[address]\n"
                + "      ,[avatar]\n"
                + "      ,[name]\n"
                + "      ,[phone]\n"
                + "      ,[email]\n"
                + "      ,[password]\n"
                + "  FROM [dbo].[User]\n"
                + "where email = ? and password = ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            //Dua vao user va lay ra de sql
            statement.setString(1, user.getEmail());
            statement.setString(2, user.getPassword());

            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String majorId = resultSet.getString("majorId");
                String role = resultSet.getString("role");
                String address = resultSet.getString("address");
                String avatar = resultSet.getString("avatar");
                String name = resultSet.getString("name");
                String phone = resultSet.getString("phone");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                User userFound = new User(majorId, role, address, avatar, name, phone, email, password);
                return userFound;
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
//                if (resultSet != null) {
//                    resultSet.close();
//                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return null;
    }

    public boolean createUser(User userRegister) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           (    \n"
                + "           [name]\n"
                + "           ,[phone]\n"
                + "           ,[email]\n"
                + "           ,[password])\n"
                + "     VALUES\n"
                + "           (\n"
                + "           ?,?,?,?)";
         try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            //Dua vao user va lay ra de sql
            statement.setString(1, userRegister.getName());
            statement.setString(2, userRegister.getPhone());
            statement.setString(3, userRegister.getEmail());
            statement.setString(4, userRegister.getPassword());

            statement.executeUpdate();
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
//                if (resultSet != null) {
//                    resultSet.close();
//                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return false;
    }

}
