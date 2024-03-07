
package dal;

import entity.Blog;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class BlogDAO extends DBContext {
    
    public boolean deleteBlog(int id){
        boolean success = false;
        String sql = "delete [dbo].[Blog] where id =? ";
        try{
             connection = getConnection();
            statement = connection.prepareStatement(sql);
            //Dua vao user va lay ra de sql
            statement.setInt(1, id);
            statement.executeUpdate();
            success = true;
        }catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
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
        return success;
    }
    
    public boolean updateBlog( String title, String content,int id){
        boolean success = false;
        String sql = "update [dbo].[Blog] set title = ?, content = ? where id =?";
        try{
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            //Dua vao user va lay ra de sql
            statement.setString(1, title);
            statement.setString(2, content);
            statement.setInt(3, id);
            statement.executeUpdate();
            success = true;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
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
        return success;
    }
    
    public void createBlog(int id, String title, String content, String date, String author) 
    {
        String sql = "INSERT INTO [dbo].[Blog]\n"
                + "           ( "
                + "           [userId]\n"
                + "           ,[title]\n"
                + "           ,[content]\n"
                + "           ,[date]\n"
                + "      ,[author])\n"
                + "     VALUES"
                + "           (?,?, ?, ?, ?)";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            //Dua vao user va lay ra de sql
            statement.setInt(1, id);
            statement.setString(2, title);
            statement.setString(3, content);
            statement.setString(4, date);
            statement.setString(5, author);
            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
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

    }
    
    public List<Blog> getAllBlog(){
        List<Blog> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[userId]\n"
                + "      ,[title]\n"
                + "      ,[content]\n"
                + "      ,[date]\n"
                + "      ,[author]\n"
                + "  FROM [dbo].[Blog]";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int userId = resultSet.getInt("userId");
                String title = resultSet.getString("title");
                String content = resultSet.getString("content");
                String date = resultSet.getString("date");
                String author = resultSet.getString("author");
                Blog blog = new Blog(id, userId, title, content, date, author);
                list.add(blog);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
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
    
    
    public Blog findbyId(int idBlog) {
        List<Blog> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[userId]\n"
                + "      ,[title]\n"
                + "      ,[content]\n"
                + "      ,[date]\n"
                + "      ,[author]\n"
                + "  FROM [dbo].[Blog] where [id] = ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            //Dua vao user va lay ra de sql
            statement.setInt(1, idBlog);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                int id = resultSet.getInt("id");
                int userId = resultSet.getInt("userId");
                String title = resultSet.getString("title");
                String content = resultSet.getString("content");
                String date = resultSet.getString("date");
                String author = resultSet.getString("author");
                Blog blog = new Blog(id, userId, title, content, date, author);
                list.add(blog);
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
        return list.isEmpty() ? null : list.get(0);
    }
}
