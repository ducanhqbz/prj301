/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import jakarta.servlet.jsp.jstl.sql.Result;
import model.Author;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Category;
import model.book;
import org.apache.tomcat.dbcp.dbcp2.SQLExceptionList;

/**
 *
 * @author Acer
 */
public class Dao extends DBContext {

    public Author GetAuthorByID(int id) {
        Author author = null;
        String sql = "SELECT [id]\n"
                + "      ,[first_name]\n"
                + "      ,[last_name]\n"
                + "  FROM [dbo].[author]" + "where id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int author_id = rs.getInt("id");
                String first_name = rs.getString("first_name");
                String last_name = rs.getString("last_name");
                author = new Author(author_id, first_name, last_name);
                return author;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<Category> getAllCate() {
        ArrayList<Category> listcate = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[category_name]\n"
                + "  FROM [dbo].[category]";

        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int cate_id = rs.getInt("id");
                String category_name = rs.getString("category_name");
                Category cate = new Category(cate_id, category_name);
                listcate.add(cate);

            }
            return listcate;
        } catch (Exception e) {
        }
        return null;
    }

    public Category GetCateByID(int id) {

        String sql = "SELECT [id]\n"
                + "      ,[category_name]\n"
                + "  FROM [dbo].[category]" + " where id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int cate_id = rs.getInt("id");
                String category_name = rs.getString("category_name");
                Category cate = new Category(cate_id, category_name);

                return cate;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<book> GetAll() {
        ArrayList<book> list = new ArrayList<>();

        String sql = "SELECT [id], [title], [category_id], [author_id], [publication_date], [copies_owned], [images] FROM [dbo].[book]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("title");
                Category cate = GetCateByID(rs.getInt("category_id"));
                Author author = GetAuthorByID(rs.getInt("author_id"));
                String publication = rs.getString("publication_date");
                int copies_owned = rs.getInt("copies_owned");
                String images = rs.getString("images");
                book book = new book(id, title, cate, author, publication, copies_owned, images);
                list.add(book);
            }
            return list; // Chuyển return list; ra ngoài vòng lặp while
        } catch (Exception e) {
            e.printStackTrace(); // In ra lỗi (hoặc thực hiện xử lý lỗi phù hợp)
        }
        return null;
    }

    public static void main(String[] args) {
        Dao dao = new Dao();
        System.out.println(dao.GetAuthorByID(5).toString());

        ArrayList<book> list = dao.GetAll();
        for (book book : list) {
            System.out.println(book);

        }
    }
}
