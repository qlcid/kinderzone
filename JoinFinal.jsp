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
 String who = request.getParameter("who");
 String kindname = request.getParameter("kindname");
 String classname = request.getParameter("class");
 String id  =        request.getParameter("my_id");
 String name =   request.getParameter("my_name");
 String pwd =     request.getParameter("my_pwd");
 String email  =   request.getParameter("my_email");
 String email2 = request.getParameter("my_email_dns");
 //String email3= request.getParameter("emailaddr");
 String birth= request.getParameter("my_year");
 birth+="."+request.getParameter("my_month");
 birth+="."+request.getParameter("my_date");
 String phone = request.getParameter("cel1");
 phone+=request.getParameter("cel2_1");
 phone+=request.getParameter("cel2_2");
 String add = request.getParameter("addr");

 if(request.getParameter("emailaddr").equals(""))
	email +="@"+ request.getParameter("my_email_dns");
 else
	email +="@"+request.getParameter("emailaddr");
   	 Connection conn = null;
       	Statement stmt = null;
	int kindnum=0;
	int classnum =0;
	String kidsid=null;


	try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");
             if (conn == null)
                  throw new Exception( "데이터베이스에 연결할 수 없습니다.");
             stmt = conn.createStatement();
	String command =null;
	String command2 =null;


	if(who.equals("parents")){

	String sql = "select kind_num from kinderinfo where kind_name='"+kindname+"';";

	ResultSet rs = stmt.executeQuery(sql);

	if(rs.next()){

	kindnum = rs.getInt("kind_num");


	}

	String sql1 = "select class_num from classinfo where class_name='"+classname+"';";

	ResultSet rs2 = stmt.executeQuery(sql1);

	if(rs2.next()){

	classnum = rs2.getInt("class_num");

	}

	String sql2 = "select * from parentsinfo";

	ResultSet rs3 = stmt.executeQuery(sql2);
	int count =1;
	while(rs3.next()){

	count++;
	}

	kidsid = String.valueOf(kindnum)+String.valueOf(classnum)+String.valueOf(count);

	command = String.format("insert into parentsinfo (parents_id, parents_name, kind_name,parents_pw, mail, birth, tel, address) values ( '%s', '%s', '%s', '%s', '%s', '%s', '%s','%s');", id, name, kindname,pwd, email, birth, phone, add);

             stmt.executeUpdate(command);


	command2 = String.format("insert into kidsinfo (parents_id, kids_id, class_name) values ( '%s', '%s', '%s');", id, kidsid, classname);

             stmt.executeUpdate(command2);
	}

	else{

	 command = String.format( "insert into teacherinfo (teacher_id, teacher_name, kind_name, teacher_pw, mail, birth, tel, address) values ( '%s', '%s', '%s', '%s', '%s', '%s', '%s','%s');", id, name,kindname, pwd, email, birth, phone, add);

	stmt.executeUpdate(command);

	command2 = "update classinfo set teacher_id := '"+id+"' where class_name = '"+classname+"'";

	stmt.executeUpdate(command2);


	}

	request.setAttribute("kidsid", kidsid);
	request.setAttribute("parentsid", id);
	request.setAttribute("classname", classname);


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

	if(who.equals("parents")){
	RequestDispatcher dispatcher = request.getRequestDispatcher("kidsinfo.jsp");
	dispatcher.forward(request, response);
	}else{
	RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
	dispatcher.forward(request, response);
	}


%>
