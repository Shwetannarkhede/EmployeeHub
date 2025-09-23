package com.jbk;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/hrlogin")
public class HrLogin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if ("shweta@gmail.com".equals(email) && "Shweta@123".equals(password)) {
        	 response.sendRedirect("hrprofile.html");
        } else {
            request.setAttribute("errorMsg", "Invalid Credentials!");
            RequestDispatcher rs = request.getRequestDispatcher("login.html");
            rs.forward(request, response);
        }
    }
}
