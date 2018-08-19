/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgc.controller;

import com.sgc.model.ScSearchViewDAO;
import com.sgc.model.SubClassificationDetails;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
 * @author Jeyarani
 */
@WebServlet(name = "ScSearchViewController", urlPatterns = {"/ScSearchViewController"})
public class ScSearchViewController extends HttpServlet {

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
            out.println("<title>Servlet ScSearchViewController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ScSearchViewController at " + request.getContextPath() + "</h1>");
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
//        processRequest(request, response);
        String search_key = request.getParameter("skey");
        String search_value = request.getParameter("svalue");
        try {
            List<SubClassificationDetails> scdetails = ScSearchViewDAO.getScDetails(search_key, search_value);
            request.setAttribute("scdetails", scdetails);
        } catch (SQLException ex) {
            Logger.getLogger(ScSearchViewController.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("./pages/ScSearchView.jsp").forward(request, response);

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
//        processRequest(request, response);
        String search_key = request.getParameter("skey");
        String search_value = request.getParameter("svalue");
        try {
            //processRequest(request, response);
            List<SubClassificationDetails> scdetails = ScSearchViewDAO.getScDetails(search_key, search_value);
            request.setAttribute("scdetails", scdetails);

        } catch (SQLException ex) {
            Logger.getLogger(ScSearchViewController.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("./pages/ScSearchView.jsp").forward(request, response);
    }
 @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String search_key = request.getParameter("skey");
        String search_value = request.getParameter("svalue");
        try {
            //processRequest(request, response);
            List<SubClassificationDetails> scdetails = ScSearchViewDAO.getScDetails(search_key, search_value);
            request.setAttribute("scdetails", scdetails);

        } catch (SQLException ex) {
            Logger.getLogger(ScSearchViewController.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("./pages/ScSearchView.jsp").forward(request, response);

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
