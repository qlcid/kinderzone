<%@page contentType="text/html; charset=utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*, java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<HTML>
  <HEAD>
  <META http-equiv="Content-Type" content="text/html;charset=utf-8">
  </HEAD>
  <BODY>
    <H3 align='center'>차량스케줄을 조회할 아이 이름을 입력해주세요.</H3>
    <FORM ACTION=BusInfo.jsp METHOD=POST>
        <div align='center'>
        아이 이름: <INPUT TYPE=TEXT NAME=name SIZE=10> &nbsp;&nbsp;
        <INPUT TYPE=SUBMIT class="btn btn-primary" VALUE= '확인'> &nbsp;&nbsp;
        <INPUT TYPE=BUTTON class="btn btn-primary" VALUE= '취소' onClick='history.back();'>
        </div><BR>
    </FORM>
    <%
      String[] mon1 = new String[2];
      String[] tue1 = new String[2];
      String[] wed1 = new String[2];
      String[] thu1 = new String[2];
      String[] fri1 = new String[2];
      String[] mPlace1 = new String[2];
      String[] tPlace1 = new String[2];
      String[] wPlace1 = new String[2];
      String[] hPlace1 = new String[2];
      String[] fPlace1 = new String[2];
    %>
<%
    request.setCharacterEncoding("utf-8");

    Connection connll = null;
    Statement stmtll = null;
    // String name_test = request.getParameter("name");

    try {
      Class.forName("com.mysql.jdbc.Driver");
      connll = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

      if (connll == null)
        throw new Exception("데이터베이스에 연결할 수 없습니다.<BR> ");

      stmtll = connll.createStatement();

      ResultSet rs = stmtll.executeQuery("SELECT * FROM shuttleinfo s WHERE s.kids_id = (SELECT k.kids_id FROM kidsinfo k WHERE k.kids_name ='" + request.getParameter("name") + "');");

      String kids_id = "";

      while (rs.next()) {
        kids_id = rs.getString("kids_id");
        String day = rs.getString("shuttle_day");
        String time = rs.getString("shuttle_time");
        String place = rs.getString("shuttle_place");

        if (place == null)
          place = "";
        if (time == null)
          time = "";

      switch (day) {
        case "월":
          mon1 = time.split(",");
          mPlace1 = place.split(",");
          break;
        case "화":
          tue1 = time.split(",");
          tPlace1 = place.split(",");
          break;
        case "수":
          wed1 = time.split(",");
          wPlace1 = place.split(",");
          break;
        case "목":
          thu1 = time.split(",");
          hPlace1 = place.split(",");
          break;
        case "금":
          fri1 = time.split(",");
          fPlace1 = place.split(",");
          break;
        }
    }

    ResultSet rs1 = stmtll.executeQuery("SELECT * FROM driverinfo WHERE bus_num = (SELECT bus_num FROM businfo WHERE kids_id = '" + kids_id + "');");

    if (rs1.next()) {
      String shuttle_num = rs1.getString("shuttle_num");
      String driver_name = rs1.getString("driver_name");

      out.print("<H3 align='center'>" + shuttle_num + "번 " + driver_name + "</h3>");
    }
  } finally {
      try {
        stmtll.close();
      } catch (Exception ignored) {
      }
      try {
        connll.close();
      } catch (Exception ignored) {
      }
    }
%>
<% if (mon1[0] != null || tue1[0] != null || wed1[0] != null || thu1[0] != null || fri1[0] != null) { %>
<table cellspacing="5" align="center" border="1" bordercolor="#c0c0c0" width="550" height="300">
<tr align="center">
  <td width="100" bgcolor="#a6eabf">월</td>
  <td width="100" bgcolor="#a6eabf">화</td>
  <td width="100" bgcolor="#a6eabf">수</td>
  <td width="100" bgcolor="#a6eabf">목</td>
  <td width="100" bgcolor="#a6eabf">금</td>
</tr>
<tr align="center">
  <td><%=mon1[0]%><br><%=mPlace1[0]%></td>
  <td><%=tue1[0]%><br><%=tPlace1[0]%></td>
  <td><%=wed1[0]%><br><%=wPlace1[0]%></td>
  <td><%=thu1[0]%><br><%=hPlace1[0]%></td>
  <td><%=fri1[0]%><br><%=fPlace1[0]%></td>
</tr>
<tr align="center">
  <td><%=mon1[1]%><br><%=mPlace1[1]%></td>
  <td><%=tue1[1]%><br><%=tPlace1[1]%></td>
  <td><%=wed1[1]%><br><%=wPlace1[1]%></td>
  <td><%=thu1[1]%><br><%=hPlace1[1]%></td>
  <td><%=fri1[1]%><br><%=fPlace1[1]%></td>
</tr>
</table>
<br>
<% } %>
</BODY>
</HTML>
