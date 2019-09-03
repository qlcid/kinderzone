<%@page contentType="text/html; charset=utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>

<%
    request.setCharacterEncoding("utf-8");

    String id = (String) session.getAttribute("id");
    String class_name = "";
    // String class_name = request.getParameter("class_name");
    // String class_name = (String) request.getAttribute("class_name");
    String[] one = request.getParameterValues("one");
    String[] two = request.getParameterValues("two");
    String[] thr = request.getParameterValues("thr");
    String[] fou = request.getParameterValues("fou");
    String[] fiv = request.getParameterValues("fiv");
    String[] six = request.getParameterValues("six");

    String[] day = { "월", "화", "수", "목", "금" };

    for (int i = 0; i < 5; i++) {
      if (one[i] == "" || two[i] == "" || thr[i] == "" || fou[i] == "" || fiv[i] == "" || six[i] == "")
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

      ResultSet rsC = stmt.executeQuery("SELECT * FROM classinfo WHERE teacher_id = '" + id + "';");

      if (rsC.next()) {
        class_name = rsC.getString("class_name");
      }

      // i는 교시, j는 요일
      for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 5; j++) {
          String t_day = day[j];
          String t_time = Integer.toString(i + 1);
          String subject = "";

          switch (i) {
            case 0:
                subject = one[j]; break;
            case 1:
                subject = two[j]; break;
            case 2:
                subject = thr[j]; break;
            case 3:
                subject = fou[j]; break;
            case 4:
                subject = fiv[j]; break;
            case 5:
                subject = six[j]; break;
          }

          ResultSet rsDup = stmt.executeQuery("SELECT * FROM timetableinfo WHERE class_name = '" + class_name + "' and t_day ='" + t_day + "' and t_time = '" + t_time + "' and subject = '" + subject + "';");


          if (!rsDup.next()) { // 중복 시 UPDATE되도록
            out.println("실행");
              String command = String.format("UPDATE timetableinfo SET subject := '%s' WHERE class_name = '%s' and t_day ='%s' and t_time = '%s';", subject, "달님반", t_day, t_time);
              int rowNum = stmt.executeUpdate(command);
              //
              // if (rowNum < 1)
              //     throw new Exception("데이터를 DB에 입력할 수 없습니다.");
          }
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
