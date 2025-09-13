<%@ page import="java.sql.*,java.util.*" %>
<%@ include file="db.jsp" %>

<%
    Map<Integer,Integer> cart = (Map<Integer,Integer>) session.getAttribute("cart");
    if(cart == null){
        cart = new HashMap<Integer,Integer>();
        session.setAttribute("cart", cart);
    }

    if(request.getParameter("add") != null){
        int pid = Integer.parseInt(request.getParameter("add"));
        if(cart.containsKey(pid)){
            cart.put(pid, cart.get(pid)+1);
        } else {
            cart.put(pid, 1);
        }
    }
%>

<html>
<head>
    <title>Shopping Cart</title>
</head>
<body bgcolor="#f2f2f2">

<center>
    <h2 style="color:blue;">Your Shopping Cart</h2>
    <table border="1" cellpadding="8" cellspacing="0" bgcolor="white">
        <tr bgcolor="#cccccc">
            <th>Product</th>
            <th>Qty</th>
            <th>Price</th>
            <th>Subtotal</th>
        </tr>

<%
    double total = 0;
    for(int pid : cart.keySet()){
        PreparedStatement ps = conn.prepareStatement("select * from products where id=?");
        ps.setInt(1, pid);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            double price = rs.getDouble("price");
            int qty = cart.get(pid);
            double sub = price * qty;
            total += sub;
%>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= qty %></td>
            <td>?<%= price %></td>
            <td>?<%= sub %></td>
        </tr>
<%
        }
    }
%>
    </table>

    <br>
    <font size="4"><b>Total: ?<%= total %></b></font>
    <br><br>
    <a href="checkout.jsp" style="background:green;color:white;padding:6px;text-decoration:none;">Proceed to Checkout</a>
</center>

</body>
</html>
