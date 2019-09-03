<%@page contentType="text/html; charset=utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    request.setCharacterEncoding("utf-8");

    String class_name = request.getParameter("class_name");
    String[] mon = request.getParameterValues("mon");
    String[] tue = request.getParameterValues("tue");
    String[] wed = request.getParameterValues("wed");
    String[] thu = request.getParameterValues("thu");
    String[] fri = request.getParameterValues("fri");

    String[] day = { "월", "화", "수", "목", "금" };

    for (int i = 0; i < 6; i++) {
      if (class_name == "" || mon[i] == "" || tue[i] == "" || wed[i] == "" || thu[i] == "" || fri[i] == "")
        throw new Exception("데이터를 입력하세요.");
    }

    Connection conn = null;
    Statement stmt = null;

    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone?useUnicode=true&characterEncoding=utf8", "root", "dhfl2575");

      if (conn == null)
          throw new Exception("데이터베이스에 연결할 수 없습니다.<BR>");

      stmt = conn.createStatement();

      // i는 요일, j는 교시
      for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 6; j++) {
          String t_day = day[i];
          String t_time = Integer.toString(j + 1);
          String subject = "";

          switch (i) {
            case 0:
              subject = mon[j]; break;
            case 1:
              subject = tue[j]; break;
            case 2:
              subject = wed[j]; break;
            case 3:
              subject = thu[j]; break;
            case 4:
              subject = fri[j]; break;
          }

          String command = String.format("INSERT INTO timetableinfo (class_name, t_day, t_time, subject) values ('%s', '%s', '%s', '%s');", class_name, t_day, t_time, subject);
          int rowNum = stmt.executeUpdate(command);

          if (rowNum < 1)
            throw new Exception("데이터를 DB에 입력할 수 없습니다.");
          }
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
    response.sendRedirect("TimeTableInfo.jsp");
%>
