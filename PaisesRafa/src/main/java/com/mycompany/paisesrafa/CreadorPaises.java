/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.paisesrafa;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Daw2
 */
@WebServlet(name = "CreadorPaises", urlPatterns = {"/CreadorPaises"})
public class CreadorPaises extends HttpServlet {

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
        HttpSession sesion = request.getSession(true);
                    System.out.println("aqui");

      //  if (sesion.isNew()) {
            System.out.println("com.mycompany.paisesrafa.CreadorPaises.processRequest()");
            Locale locales[] = SimpleDateFormat.getAvailableLocales();
            ArrayList<String> array = new ArrayList();
            TreeMap<String, String> map = new TreeMap<String, String>();
            for (int i = 0; i < locales.length; i++) {
                // map.put(locales[i].toString(), locales[i].getDisplayName());
               // System.out.println(locales[i].toString() + locales[i].getDisplayName());
                array.add(locales[i].toString() + locales[i].getDisplayName());
                if (locales[i].getDisplayCountry() != ""&&locales[i].toString().length()==5) {
                 
                    map.put(locales[i].getDisplayCountry(),locales[i].toString());
                }

            }
            for (Map.Entry<String, String> entry : map.entrySet()) {
                System.out.println("clave=" + entry.getKey() + ", valor=" + entry.getValue());
            }
            sesion.setAttribute("paises", map);

        //}
        request.getRequestDispatcher("jsps/Paises.jsp").forward(request, response);

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
        processRequest(request, response);
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
