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

  Connection conn = null;
  PreparedStatement stmt = null;
  Statement pstmt = null;
  ResultSet rs = null;
  String pId = null;
  String tId = null;

  try{
    Class.forName("com.mysql.jdbc.Driver");
  	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

  String sql = "select a.parents_id, b.teacher_id from parentsinfo a, teacherinfo b where a.parents_id=? or b.teacher_id=?;";
  stmt = conn.prepareStatement(sql);
  stmt.setString(1,id);
  stmt.setString(2,id);
  rs = stmt.executeQuery();

  if(rs.next()){
    pId = rs.getString("parents_id");
    tId = rs.getString("teacher_id");
  }


  if(pId!=null || tId!=null){
    out.println("<script>alert('아이디가 중복됩니다. 다시 입력해주십시오')</script>");
  }else{
      out.println("<script>alert('아이디를 사용가능합니다.')</script>");
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
