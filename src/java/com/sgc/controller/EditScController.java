/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgc.controller;

import com.sgc.model.EditScDAO;
import com.sgc.model.MainClassificationDAO;
import com.sgc.model.MainClassificationDetails;
import com.sgc.model.SubClassificationDAO;
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
 * @author Sobiha
 */
@WebServlet(name = "EditScController", urlPatterns = {"/EditScController"})
public class EditScController extends HttpServlet {
SubClassificationDetails sc =new SubClassificationDetails();
EditScDAO editsc = new EditScDAO();
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
            out.println("<title>Servlet EditScController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditScController at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        String scid=request.getParameter("scId");
        try {
            //processRequest(request, response);
                List<MainClassificationDetails> mainClassifications = MainClassificationDAO.getMainClassific();
                request.setAttribute("mainClassifications", mainClassifications);
                List<SubClassificationDetails> subClassifications = SubClassificationDAO.getSubClassific();
                request.setAttribute("subClassifications", subClassifications);
            SubClassificationDetails abc = EditScDAO.EditSc(scid);
            request.setAttribute("abc", abc);

        } catch (SQLException ex) {
            Logger.getLogger(EditScController.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("./pages/ScEdit.jsp").forward(request, response);
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
        //processRequest(request, response);
        sc.setScId(request.getParameter("Scid"));
        sc.setMcId(request.getParameter("Mcid"));
        sc.setScName(request.getParameter("Scname"));        
        
        try {
            editsc.UpdateSc(sc);
        } catch (SQLException ex) {
            Logger.getLogger(EditController.class.getName()).log(Level.SEVERE, null, ex);
//            JOptionPane.showMessageDialog(null,"Invalid");
//                request.getRequestDispatcher("./pages/AddBookDetails.jsp").forward(request,response);
        }
        request.getRequestDispatcher("./pages/ScEdit.jsp").forward(request,response);
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
