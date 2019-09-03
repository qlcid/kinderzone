<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<html>
  <head>
  </head>
<body>
<%
  request.setCharacterEncoding("UTF-8");

  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
  String check = request.getParameter("check");
  Connection conn = null;
  PreparedStatement stmt = null;
 ResultSet rs = null;


  try{
    Class.forName("com.mysql.jdbc.Driver");
  	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");


if(check.equals("parents")){
  String query = "select count(*) as cnt from parentsinfo where parents_id=? and parents_pw=?";
  stmt = conn.prepareStatement(query);
  stmt.setString(1,id);
  stmt.setString(2,pw);
  rs = stmt.executeQuery();
  rs.next();

    if(rs.getString("cnt").equals("1")){
       out.println("<script>");
       out.println("alert('로그인이 되었습니다. 환영합니다')");
       out.println("location.href='index.jsp'");
       out.println("</script>");
       session.setAttribute("id", id);
       session.setAttribute("pw", pw);
       session.setAttribute("check", check);

     }else{
     out.println("<script>");
     out.println("alert('로그인실패')");
     out.println("location.href='login.jsp'");
      out.println("</script>");

   }
}else{
  String query = "select count(*) as cnt from teacherinfo where teacher_id=? and teacher_pw = ?";
  stmt = conn.prepareStatement(query);
  stmt.setString(1,id);
  stmt.setString(2,pw);
  rs = stmt.executeQuery();
  rs.next();

 if(rs.getString("cnt").equals("1")){
       out.println("<script>");
       out.println("alert('로그인이 되었습니다. 환영합니다')");
       out.println("location.href='index.jsp'");
       out.println("</script>");
       session.setAttribute("id", id);
       session.setAttribute("pw", pw);


     }else{
     out.println("<script>");
     out.println("alert('로그인실패')");
     out.println("location.href='login.jsp'");
     out.println("</script>");

   }
 }


 rs.close();
}
 finally {
              try {
                     stmt.close();
              }
              catch (Exception ignored) {
              }
              try {
                     conn.close();
              }
             catch (Exception ignored) {
             }
       }



%>
</body>
</html>
