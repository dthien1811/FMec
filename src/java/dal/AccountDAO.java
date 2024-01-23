/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Account;
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
public class AccountDAO extends DBContext {

    public List<Account> findAll() {

        List<Account> list = new ArrayList<>();
        String sql = "select * from Account";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String fullName = resultSet.getString("fullName");
                int phone = resultSet.getInt("phone");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                Account account = new Account(fullName, phone, email, password);
                list.add(account);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
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
        AccountDAO accountDAO = new AccountDAO();
        List<Account> list = accountDAO.findAll();
        if (list.isEmpty()) {
            System.out.println("List is Empty");
        } else {

            for (Account account : accountDAO.findAll()) {
                System.out.println(account);
            }
        }
    }

    public Account findByUsernamePassword(Account account) {
        String sql = "select * from Account\n"
                + "where email = ? and password = ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);

            statement.setString(1, account.getEmail());
            statement.setString(2, account.getPassword());

            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String fullName = resultSet.getString("fullName");
                int phone = resultSet.getInt("phone");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                Account accountFound = new Account(fullName, phone, email, password);
                return accountFound;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
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

}
