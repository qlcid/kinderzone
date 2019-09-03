<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection, java.util.GregorianCalendar" %>

<%
	String id = (String) session.getAttribute("id");

	String[] kidsid =  request.getParameterValues("kidsid");

	String[] attends= new String[100];
	String count = request.getParameter("count");
	int cnt = Integer.parseInt(count);


	GregorianCalendar now = new GregorianCalendar();

	String[] date = new String[100];
	String[] time = new String[100];

	for(int j = 0; j < cnt; j++) {
		attends[j] = request.getParameter("attends" + (j));
		out.println(attends[j]);

		date[j] = String.format("%TF", now);
		time[j] = String.format("%TT", now);
	}

	for(int i = 0; i < kidsid.length; i++) {
		out.println(kidsid[i]);
	}


       Connection conn = null;
       Statement stmt = null;
       ResultSet rs = null;
			 String n = "";

       try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

             if (conn == null)
                  throw new Exception( "데이터베이스에 연결할 수 없습니다.");

             stmt = conn.createStatement();

						 String command =null;
	for( int i = 0; i < kidsid.length; i++) {
		rs = stmt.executeQuery(String.format("select * from attendinfo where kids_id='%s' and check_date='%s';", kidsid[i], date[i]));
		if (rs.next()) {
		if (attends[i].equals("attends")) {
			command = String.format("update attendinfo set attend_time := '%s', absence_time=NULL, earlyLeave_time=NULL WHERE kids_id = '%s' and check_date ='%s';", time[i], kidsid[i], date[i]);
			stmt.executeUpdate(command);
		} else if (attends[i].equals("absent")) {
			command = String.format("update attendinfo set attend_time := NULL, absence_time='%s', earlyLeave_time=NULL WHERE kids_id = '%s' and check_date ='%s';", time[i], kidsid[i], date[i]);
			stmt.executeUpdate(command);
		} else {
			command = String.format("update attendinfo set attend_time := NULL, absence_time=NULL, earlyLeave_time='%s' WHERE kids_id = '%s' and check_date ='%s';", time[i], kidsid[i], date[i]);
			stmt.executeUpdate(command);
		}
	       out.println("<script>");
      	 out.println("alert('출석정보가 수정되었습니다.')");
       	out.println("location.href='attends.jsp'");
       	out.println("</script>");
	} else {
		if (attends[i].equals("attends")) {
			command = String.format("insert into attendinfo (kids_id, check_date, attend_time) VALUES ( '%s', '%s', '%s');", kidsid[i], date[i], time[i]);
			stmt.executeUpdate(command);
		} else if(attends[i].equals("absent")) {
			command = String.format("insert into attendinfo (kids_id, check_date, absence_time) VALUES ( '%s', '%s', '%s');", kidsid[i], date[i], time[i]);
			stmt.executeUpdate(command);
		} else {
			command = String.format("insert into attendinfo (kids_id, check_date, earlyLeave_time) VALUES ( '%s', '%s', '%s');", kidsid[i], date[i], time[i]);
			stmt.executeUpdate(command);
		}
	out.println("<script>");
      	 out.println("alert('출석정보가 입력되었습니다.')");
       	out.println("location.href='attends.jsp'");
       	out.println("</script>");

	}
	}






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


	stmt.close();
	conn.close();

  %>
