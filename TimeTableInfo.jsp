<%@page contentType= "text/html; charset=utf-8" errorPage= "DBError.jsp" %>
<%@page import= "java.sql.*, java.util.ArrayList"%>
<%
  String id = (String) session.getAttribute("id");
  boolean t = false;

  Connection conn = null;
  Statement stmt = null;

  try {
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

    if (conn == null)
      throw new Exception("데이터베이스에 연결할 수 없습니다.<BR> ");

    stmt = conn.createStatement();

    // teacher_id = 'session으로 넘어온 id'
    ResultSet rs = stmt.executeQuery("select * from teacherinfo where teacher_id = '" + id + "';");
    // ResultSet rs = stmt.executeQuery("SELECT * FROM teacherinfo WHERE teacher_id = 't5678'");

    if (rs.next()) {
      t = true;
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
try {
  Class.forName("com.mysql.jdbc.Driver");
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

  if (conn == null)
    throw new Exception("데이터베이스에 연결할 수 없습니다.<BR> ");

  stmt = conn.createStatement();

  ResultSet rs1 = null;
  if (t) {
    rs1 = stmt.executeQuery("select t.* from timetableinfo t, classinfo c where t.class_name = (select c.class_name from classinfo c where c.teacher_id = '" + id + "');");
  } else {
    rs1 = stmt.executeQuery("select t.* from kidsinfo k, timetableinfo t where t.class_name = (select k.class_name from kidsinfo k where k.parents_id = '" + id + "');");
  }

  String[] t1 = new String[5];
  String[] t2 = new String[5];
  String[] t3 = new String[5];
  String[] t4 = new String[5];
  String[] t5 = new String[5];
  String[] t6 = new String[5];

  while (rs1.next()) {
    String class_name = rs1.getString("class_name");
    String t_time = rs1.getString("t_time");
    String t_day = rs1.getString("t_day");
    String subject = rs1.getString("subject");

    String[] day = { "월", "화", "수", "목", "금" };

    switch (t_time) {
      case "1":
        for (int i = 0; i < day.length; i++) {
          if (t_day.equals(day[i]))
            t1[i] = subject;
        }
        break;

      case "2":
        for (int i = 0; i < day.length; i++) {
          out.print("two");
          if (t_day.equals(day[i]))
            t2[i] = subject;
        }
        break;

      case "3":
        for (int i = 0; i < day.length; i++) {
          if (t_day.equals(day[i]))
            t3[i] = subject;
        }
        break;

      case "4":
        for (int i = 0; i < day.length; i++) {
          if (t_day.equals(day[i]))
            t4[i] = subject;
        }
        break;

      case "5":
        for (int i = 0; i < day.length; i++) {
          if (t_day.equals(day[i]))
            t5[i] = subject;
        }
        break;

      case "6":
        for (int i = 0; i < day.length; i++) {
          if (t_day.equals(day[i]))
            t6[i] = subject;
        }
        break;
    }

    request.setAttribute("class_name", class_name);
    request.setAttribute("one", t1);
    request.setAttribute("two", t2);
    request.setAttribute("thr", t3);
    request.setAttribute("fou", t4);
    request.setAttribute("fiv", t5);
    request.setAttribute("six", t6);
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
RequestDispatcher dispatcher = request.getRequestDispatcher("TimeTableInfoView.jsp");
dispatcher.forward(request, response);
%>
