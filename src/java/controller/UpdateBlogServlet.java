/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.BlogDAO;
import entity.Blog;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;


/**
 *
 * @author Lenovo
 */
public class UpdateBlogServlet extends HttpServlet {

  

    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String id1 = req.getParameter("id");
        int id = Integer.parseInt(id1);
        BlogDAO dao = new BlogDAO();
        Blog blog = dao.findbyId(id);
        req.setAttribute("blogInfo", blog);
        req.getRequestDispatcher("update-blog.jsp").forward(req, res);
                
    }

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        BlogDAO dao = new BlogDAO();
        String id1 = req.getParameter("id");
        int id = Integer.parseInt(id1);
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        
        Blog blog = dao.findbyId(id);
        if(blog.getUserId() == user.getUserId()){
        
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        
        dao.updateBlog(title, content, id);       
        

        
        
    }
        res.sendRedirect("ShowBlogServlet");
    }

    

}
