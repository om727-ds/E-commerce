<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>

<html>
<head>
<title>Product Catalog</title>
<style>
body {
    font-family: Arial, sans-serif;
    background: #f9f9f9;
    margin: 20px;
}
h2 {
    text-align: center;
    color: #333;
}
table {
    width: 80%;
    margin: 20px auto;
    border-collapse: collapse;
    background: #fff;
    box-shadow: 0px 0px 5px rgba(0,0,0,0.1);
}
th, td {
    padding: 12px;
    text-align: center;
    border: 1px solid #ccc;
}
th {
    background: #5469d4;
    color: white;
}
td a {
    text-decoration: none;
    background: #28a745;
    color: white;
    padding: 5px 10px;
    border-radius: 5px;
}
td a:hover {
    background: #218838;
}
.view-cart {
    display: block;
    width: 200px;
    margin: 20px auto;
    text-align: center;
    background: #007bff;
    color: white;
    padding: 10px;
    border-radius: 5px;
    text-decoration: none;
}
.view-cart:hover {
    background: #0056b3;
}
</style>
</head>
<body>

<h2>Product Catalog</h2>

<%
   try {
       Statement st = conn.createStatement();   // ✅ fixed
       ResultSet rs = st.executeQuery("SELECT * FROM products");
%>
<table>
<tr>
   <th>Name</th>
   <th>Price</th>
   <th>Action</th>
</tr>
<% 
   while(rs.next()) { 
%>
<tr>
   <td><%= rs.getString("name") %></td>
   <td>₹<%= rs.getDouble("price") %></td>
   <td><a href="cart.jsp?add=<%= rs.getInt("id") %>">Add to Cart</a></td>
</tr>
<% 
   } 
   } catch(Exception e) {
       out.println("<p style='color:red;text-align:center;'>Error: " + e + "</p>");
   }
%>
</table>

<a class="view-cart" href="cart.jsp">View Cart</a>

</body>
</html>
