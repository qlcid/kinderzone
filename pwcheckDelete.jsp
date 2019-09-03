<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
    <%
    request.setCharacterEncoding("utf-8");

      String id = (String)session.getAttribute("id");
      String pw = (String)session.getAttribute("pw");
      String cPw = request.getParameter("pw");


      ResultSet rs = null;
      Connection conn = null;
      PreparedStatement pstmt = null;
      String sql = "";
      String pId = null;
      String pPw = null;

    try{
        Class.forName("com.mysql.jdbc.Driver");
      	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

      sql = "select parents_id from parentsinfo where parents_id=?;";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1,id);
      rs = pstmt.executeQuery();

      if(rs.next()){
        pId = rs.getString("parents_id");
      }

      if(pId==null){
          if(cPw.equals(pw)){
            sql = "delete from teacherinfo where teacher_id=?";
     pstmt=conn.prepareStatement(sql);
     pstmt.setString(1, id);
     pstmt.executeUpdate();
     session.invalidate();
     out.println("<script>");
     out.println("alert('정상적으로 탈퇴되었습니다.')");
     out.println("location.href='login.jsp'");
     out.println("</script>");
        }else{
          out.println("<script>alert('비밀번호가 일치하지 않습니다.')");
          out.println("location.href='deletepage.jsp'</script>");
        }

     }else{
         if(cPw.equals(pw)){
          sql = "delete from parentsinfo where parents_id=?";
     pstmt=conn.prepareStatement(sql);
     pstmt.setString(1, id);
     pstmt.executeUpdate();
     session.invalidate();
     out.println("<script>");
     out.println("alert('정상적으로 탈퇴되었습니다.')");
     out.println("location.href='login.jsp'");
     out.println("</script>");
       }else{
         out.println("<script>alert('비밀번호가 일치하지 않습니다')");
          out.println("location.href='deletepage.jsp'</script>");
       }
      }
     rs.close();
        } finally {
          try {
            pstmt.close();
          } catch (Exception ignored) {
          }
          try {
            conn.close();
          } catch (Exception ignored) {
          }
    }
     %>
