<%@ page import="java.sql.*" %>
<%
   String dbURL = "jdbc:mysql://localhost:3306/ecomm_db?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
   String dbUser = "root";
   String dbPass = "root";   // your actual MySQL root password
   Class.forName("com.mysql.cj.jdbc.Driver");
   Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
%>
