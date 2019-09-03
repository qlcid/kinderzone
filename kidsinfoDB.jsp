<%@ page contentType="text/html;charset=euc-kr" import="java.sql.*" %>
<%@page import="java.io.*"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*" %>


<%


  request.setCharacterEncoding("euc-kr");  //Set encoding
 String kidsid = request.getParameter("kidsid");
 String illness = request.getParameter("illness");
 String name =   request.getParameter("name");
 String birth= request.getParameter("my_year");
 birth+="."+request.getParameter("my_month");
 birth+="."+request.getParameter("my_date");
 String enter= request.getParameter("enter");
 enter+="."+request.getParameter("my_month");
 enter+="."+request.getParameter("my_date");
 String etc = request.getParameter("etc");



   	 Connection conn = null;
       	Statement stmt = null;
	String sql = null;



	try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");
             if (conn == null)
                  throw new Exception( "데이터베이스에 연결할 수 없습니다.");
             stmt = conn.createStatement();

	sql = "update kidsinfo set kids_name ='"+name+"', illness= '"+illness+"', entrance = '"+enter+"',  birth = '"+birth+"', etc='"+etc+"'where kids_id='"+kidsid+"'";
	stmt.executeUpdate(sql);



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

RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
dispatcher.forward(request, response);

%>
