package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/signin")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public login() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // JDBC URL, username, and password of MySQL server
        String jdbcUrl = "jdbc:mysql://localhost:3306/green_sup";
        String dbUser = "root";
        String dbPassword = "ospjsps";

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            try (Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword)) {
                // Create a prepared statement
                String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                    preparedStatement.setString(1, username);
                    preparedStatement.setString(2, password);

                    // Execute the statement
                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        if (resultSet.next()) {
                            // Login successful
                            HttpSession session = request.getSession();
                            session.setAttribute("username", username);
                            response.sendRedirect("home.jsp");
                        } else {
                            // Login failed
                            response.sendRedirect("login.jsp");
                        }
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp");
        }
    }
}
