<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!            ResultSet rs;
            String uid, pwd;
        %>
        <%
            uid = request.getParameter("userid");
            pwd = request.getParameter("pwd");
            ps = con.prepareStatement("select * from Users where userid=? and password=?");
            ps.setString(1, uid);
            ps.setString(2, pwd);
            rs = ps.executeQuery();
            if (rs.next()) {
                session.setAttribute("UserId", uid);
                session.setAttribute("MailId", rs.getString(3));
                session.setAttribute("FirstName", rs.getString(1));
                session.setAttribute("LastName", rs.getString(2));
                response.sendRedirect("LoginPhase2_1.jsp");
            }
            else{
                response.sendRedirect("UserLogin.jsp?msg=Your Login Attempt wat not Successful. Please try again!!");
            }
            rs.close();
            ps.close();
        %>
    </body>
</html>
