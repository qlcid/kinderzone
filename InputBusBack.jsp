<%@page contentType="text/html; charset=utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    request.setCharacterEncoding("utf-8");

    int bus_num = 0;
    String kids_id = "";
    String kind_name = request.getParameter("k_name");
    String driver_name = request.getParameter("d_name");
    String kids_name = request.getParameter("name");
    String shuttle_time = request.getParameter("hour1") + ":" + request.getParameter("minute1")
                  + ", " + request.getParameter("hour2") + ":" + request.getParameter("minute2");
    String shuttle_place = request.getParameter("place1") + ", " + request.getParameter("place2");
    String shuttle_day = request.getParameter("day");

    if (driver_name == "" || kind_name == "" || kids_name == "" || shuttle_time == "" || shuttle_place == "" || shuttle_day == "")
        throw new Exception("데이터를 입력하세요.");

    Connection conn = null;
    Statement stmt = null;

    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone?useUnicode=true&characterEncoding=utf8", "root", "dhfl2575");

      if (conn == null)
          throw new Exception("데이터베이스에 연결할 수 없습니다.<BR>");

      stmt = conn.createStatement();

      ResultSet rsID = stmt.executeQuery("SELECT kids_id FROM kidsinfo WHERE kids_name = '" + kids_name + "';");

      if (rsID.next()) {
        kids_id = rsID.getString("kids_id");
      }

      ResultSet rsDup = stmt.executeQuery("SELECT * FROM shuttleinfo WHERE kids_id = '" + kids_id + "' and shuttle_day ='" + shuttle_day + "';");

      if (rsDup.next()) { // 중복 시 UPDATE되도록
          String command = String.format("UPDATE shuttleinfo SET shuttle_time := '%s', shuttle_place := '%s' WHERE kids_id = '%s' and shuttle_day = '%s';", shuttle_time, shuttle_place, kids_id, shuttle_day);
          int rowNum = stmt.executeUpdate(command);

          if (rowNum < 1)
              throw new Exception("데이터를 DB에 입력할 수 없습니다.");
      } else {
          String command = String.format("INSERT INTO shuttleinfo (kids_id, shuttle_time, shuttle_place, shuttle_day) values ('%s', '%s', '%s', '%s');", kids_id, shuttle_time, shuttle_place, shuttle_day);
          int rowNum = stmt.executeUpdate(command);

          if (rowNum < 1)
              throw new Exception("데이터를 DB에 입력할 수 없습니다.");
      }

      // businfo
      ResultSet rsN = stmt.executeQuery("SELECT bus_num FROM driverinfo WHERE driver_name = '" + driver_name + "';");

      if (rsN.next()) {
        bus_num = rsN.getInt("bus_num");
      }

      ResultSet rsDupB = stmt.executeQuery("SELECT * FROM businfo WHERE kids_id = '" + kids_id + "';");

      if (rsDupB.next()) { // 중복 시 UPDATE되도록
        String command = String.format("UPDATE businfo SET bus_num := '%s', kind_name := '%s' WHERE kids_id = '%s';", bus_num, kind_name, kids_id);
        int rowNum = stmt.executeUpdate(command);

        if (rowNum < 1)
          throw new Exception("데이터를 DB에 입력할 수 없습니다.");
      } else {
          String command = String.format("INSERT INTO businfo (kids_id, kind_name, bus_num) values ('%s', '%s', '%s');", kids_id, kind_name, bus_num);
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
