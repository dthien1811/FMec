/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bo;

import dal.AccountDAO;
import entity.Account;

/**
 *
 * @author Lenovo
 */
public class AccountLogic {

    public Account findByUsernamePassword(String email, String password) {
        Account account = new Account();
        AccountDAO accountDAO = new AccountDAO();
        account.setEmail(email);
        account.setPassword(password);
        Account accountFound = accountDAO.findByUsernamePassword(account);
        return accountFound;
    }
   
}
