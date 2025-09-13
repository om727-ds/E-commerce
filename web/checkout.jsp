<%@ page import="java.sql.*,java.util.*" %>
<%@ include file="db.jsp" %>

<%
    if(session.getAttribute("userId") == null){
        response.sendRedirect("login.jsp");
        return;
    }

    Map<Integer,Integer> cart = (Map<Integer,Integer>) session.getAttribute("cart");

    if(cart != null && !cart.isEmpty()){
        int uid = (int) session.getAttribute("userId");
        double total = 0;

        for(int pid : cart.keySet()){
            PreparedStatement ps = conn.prepareStatement("select price from products where id=?");
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                total = total + (rs.getDouble(1) * cart.get(pid));
            }
        }

        PreparedStatement orderPs = conn.prepareStatement("insert into orders(user_id,total) values(?,?)", Statement.RETURN_GENERATED_KEYS);
        orderPs.setInt(1, uid);
        orderPs.setDouble(2, total);
        orderPs.executeUpdate();

        ResultSet ors = orderPs.getGeneratedKeys();
        ors.next();
        int orderId = ors.getInt(1);

        for(int pid : cart.keySet()){
            int qty = cart.get(pid);
            PreparedStatement itemPs = conn.prepareStatement("insert into order_items(order_id,product_id,quantity) values(?,?,?)");
            itemPs.setInt(1, orderId);
            itemPs.setInt(2, pid);
            itemPs.setInt(3, qty);
            itemPs.executeUpdate();
        }

        session.removeAttribute("cart");
%>
<html>
    <body bgcolor="#f2f2f2">
    <center>
        <h2 style="color:green;">Order placed successfully!</h2>
        <font size="4">Your Order ID is: <b><%= orderId %></b></font><br><br>
        <a href="products.jsp" style="background:blue;color:white;padding:5px;text-decoration:none;">Continue Shopping</a>
    </center>
    </body>
</html>
<%
    } else {
%>
<html>
    <body>
    <center>
        <h3 style="color:red;">Your cart is empty!</h3>
        <a href="products.jsp">Go back to products</a>
    </center>
    </body>
</html>
<%
    }
%>
