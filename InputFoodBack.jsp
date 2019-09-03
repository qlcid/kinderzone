<%@page contentType="text/html; charset=utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*, com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy, java.util.*, java.io.*"%>
<%
    String id = (String) session.getAttribute("id");
    String kind_name = "";

    Connection conn = null;
    Statement stmt = null;

    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

      if (conn == null)
        throw new Exception("데이터베이스에 연결할 수 없습니다.<BR> ");

      stmt = conn.createStatement();

      // teacher_id = 'session으로 넘어온 id'
      // ResultSet rs = stmt.executeQuery("select * from teacherinfo where teacher_id = '" + id + "';");
      ResultSet rs = stmt.executeQuery("select * from teacherinfo where teacher_id = 't1234'");

      if (rs.next()) {
        kind_name = rs.getString("kind_name");
      }
    } finally {
      try {
        stmt.close();
      } catch (Exception ignored) {
      }
      try {
        conn.close();
      } catch (Exception ignored) {
      }
    }
%>
<%
    request.setCharacterEncoding("utf-8");

      String f_date = (String) request.getParameter("f_date");
      String food = request.getParameter("food");

    if (f_date == null || food == null)
        throw new Exception("데이터를 입력하세요.");

    // Connection conn = null;
    // Statement stmt = null;

    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone?useUnicode=true&characterEncoding=utf8", "root", "dhfl2575");

      if (conn == null)
          throw new Exception("데이터베이스에 연결할 수 없습니다.<BR>");

      stmt = conn.createStatement();

      ResultSet rsDup = stmt.executeQuery("SELECT * FROM foodinfo WHERE kind_name = '" + kind_name + "' and f_date = '" + f_date + "';");

      if (rsDup.next()) { // 중복 시 UPDATE되도록
          String command = String.format("UPDATE foodinfo SET kind_name := '%s', f_date := '%s', food := '%s' WHERE kind_name = '%s' and f_date = '%s';", kind_name, f_date, food, kind_name, f_date);
          int rowNum = stmt.executeUpdate(command);

          if (rowNum < 1)
              throw new Exception("데이터를 DB에 입력할 수 없습니다.");
      } else {
          String command = String.format("INSERT INTO foodinfo (kind_name, f_date, food) values ('%s', '%s', '%s');", kind_name, f_date, food);
          int rowNum = stmt.executeUpdate(command);

          if (rowNum < 1)
              throw new Exception("데이터를 DB에 입력할 수 없습니다.");
      }
    } finally {
        try {
          stmt.close();
        } catch (Exception ignored) {
        }
        try {
          conn.close();
        } catch (Exception ignored) {
        }
    }
    response.sendRedirect("FoodInfo.jsp");
%>
