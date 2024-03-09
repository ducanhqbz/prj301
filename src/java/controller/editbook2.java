/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.Dao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Author;
import model.Category;
import model.book;

/**
 *
 * @author Acer
 */
public class editbook2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet editbook2</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editbook2 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String id_raw = request.getParameter("book_id"); // Không kiểm tra 'id' theo yêu cầu
        String title = request.getParameter("title");
        String category_id_raw = request.getParameter("category_id");
        String author_id_raw = request.getParameter("author_id");
        String copies_owned_raw = request.getParameter("copies_owned");
        String publication_date = request.getParameter("publication_date");
        String url = request.getParameter("url");

        Dao dao = new Dao();
        try {
            int id = Integer.parseInt(id_raw);
            int category_id = Integer.parseInt(category_id_raw);
            int author_id = Integer.parseInt(author_id_raw);
            int copies_owned = Integer.parseInt(copies_owned_raw);
            if (title == null || title.trim().isEmpty()) {
                throw new Exception();

            } else if (publication_date == null || publication_date.trim().isEmpty()) {
                throw new Exception();
            }
            if (url.isEmpty()) {
                url = null;
            }

            Author author = dao.GetAuthorByID(author_id);
            Category cate = dao.GetCateByID(category_id);
            book book = new book(id, title, cate, author, publication_date, copies_owned, url);

            dao.UpdateBook(book);
            response.sendRedirect("ListAllBook");
        } catch (Exception e) {
            request.setAttribute("error", "Không thể cập nhật sách. Vui lòng kiểm tra lại thông tin.");

            request.getRequestDispatcher("editbook.jsp").forward(request, response);

        }
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
