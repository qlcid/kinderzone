<%@page contentType= "text/html; charset=utf-8" errorPage= "DBError.jsp" %>
<%@page import= "java.sql.*, java.util.ArrayList"%>

<%
String id = (String) session.getAttribute("id");
Connection conn = null;
Statement stmt = null;

try {
  Class.forName("com.mysql.jdbc.Driver");
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

  if (conn == null)
    throw new Exception("데이터베이스에 연결할 수 없습니다.<BR> ");

  stmt = conn.createStatement();

  // parents_id = '선생님 id'
  ResultSet rs = stmt.executeQuery("select * from timetableinfo t where t.class_name = (select c.class_name from classinfo c where teacher_id = '" + id + "');");

  String[] t1 = new String[5];
  String[] t2 = new String[5];
  String[] t3 = new String[5];
  String[] t4 = new String[5];
  String[] t5 = new String[5];
  String[] t6 = new String[5];

  while (rs.next()) {
    String class_name = rs.getString("class_name");
    String t_time = rs.getString("t_time");
    String t_day = rs.getString("t_day");
    String subject = rs.getString("subject");

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
RequestDispatcher dispatcher = request.getRequestDispatcher("InputTimeTableReRe.jsp");
dispatcher.forward(request, response);
%>
