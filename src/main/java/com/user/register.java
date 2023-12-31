package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public register() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");

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
                String sql = "INSERT INTO users (username, password, email, mobile) VALUES (?, ?, ?, ?)";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                    preparedStatement.setString(1, username);
                    preparedStatement.setString(2, password);
                    preparedStatement.setString(3, email);
                    preparedStatement.setString(4, mobile);

                    // Execute the statement
                    int rowsAffected = preparedStatement.executeUpdate();

                    if (rowsAffected > 0) {
                        // Registration successful
                        response.sendRedirect("login.jsp");
                    } else {
                        // Registration failed
                        response.sendRedirect("register.jsp"); // Redirect to the registration page
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp"); // Redirect to the registration page in case of an exception
        }
    }
}
