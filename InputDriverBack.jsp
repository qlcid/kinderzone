<%@page contentType="text/html; charset=utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    request.setCharacterEncoding("utf-8");

    int bus_num = 0;
    String driver_name = request.getParameter("name");
    String shuttle_num = request.getParameter("num");

    if (driver_name == "" || shuttle_num == "")
        throw new Exception("데이터를 입력하세요.");

    Connection conn = null;
    Statement stmt = null;

    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone?useUnicode=true&characterEncoding=utf8", "root", "dhfl2575");

      if (conn == null)
          throw new Exception("데이터베이스에 연결할 수 없습니다.<BR>");

      stmt = conn.createStatement();

      ResultSet rsN = stmt.executeQuery("SELECT bus_num FROM driverinfo WHERE driver_name = '" + driver_name + "' and shuttle_num = '" + shuttle_num + "';");

      if (rsN.next()) {
        bus_num = rsN.getInt("bus_num");
      }

      ResultSet rsDup = stmt.executeQuery("SELECT * FROM driverinfo WHERE bus_num = '" + bus_num + "';");

      if (rsDup.next()) { // 중복 시 UPDATE되도록
          String command = String.format("UPDATE driverinfo SET shuttle_num := '%s', driver_name := '%s' WHERE bus_num = '%s';", shuttle_num, driver_name, bus_num);
          int rowNum = stmt.executeUpdate(command);

          if (rowNum < 1)
              throw new Exception("데이터를 DB에 입력할 수 없습니다.");
      } else {
          int chk = 1;
          rsN = stmt.executeQuery("SELECT bus_num FROM driverinfo ORDER BY bus_num;");

          while (rsN.next()) {
            bus_num = rsN.getInt("bus_num");
                 if (bus_num == chk) {
                    chk++;
                 }
          }

          String command = String.format("INSERT INTO driverinfo (bus_num, shuttle_num, driver_name) values ('%s', '%s', '%s');", chk, shuttle_num, driver_name);
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
    response.sendRedirect("BusInfo.jsp");
%>
