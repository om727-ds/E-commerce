package com.ecomm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection con = DBConnection.getConnection()) {
            PreparedStatement ps = con.prepareStatement("INSERT INTO users(name, email, password) VALUES(?,?,?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);

            int rows = ps.executeUpdate();
            if (rows > 0) {
                response.sendRedirect("login.jsp?msg=registered");
            } else {
                response.sendRedirect("register.jsp?error=1");
            }
        } catch (Exception e) {
        }
    }
}
