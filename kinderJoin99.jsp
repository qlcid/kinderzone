<%@page contentType="text/html; charset=utf8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*" %>

<html>
<head><title>데이터입력</title></head>
<body>
<%

request.setCharacterEncoding("euc-kr");

String kindname = request.getParameter("kindname");
String c1 = request.getParameter("classname1");
String c2 = request.getParameter("classname2");
String c3 =request.getParameter("classname3");
String c4 = request.getParameter("classname4");
String c5 =request.getParameter("classname5");
String tel = request.getParameter("tel");
String kindinfo = request.getParameter("kindinfo");

  /*InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            out.println(filePart.getName());
            out.println(filePart.getSize());
            out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }*/


        Connection conn = null; // connection to the database
        Statement stmt=null;
	String sql1=null;
	String sql2=null;
	String sql3=null;
	String sql4=null;
	String sql5=null;
String sql6=null;



        try {

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");
	stmt =conn.createStatement();
	String query =null;
	ResultSet rs = null;

  	query= "select kind_name from kinderinfo";

	rs = stmt.executeQuery(query);
	int count1 =0;
	while(rs.next()){

	count1++;
	}

            // constructs SQL statement
	String sql= "insert into kinderinfo (kind_name, tel, kind_info, kind_num) values('"+kindname+"', '"+tel+"', '"+kindinfo+"', '"+count1+"')";
	stmt.executeUpdate(sql);

	int count=0;
	while(count<5){
	count++;
	if(c1 !=""){

	sql2= "insert into classinfo (class_name, class_num, kind_num) values ('"+c1+"', '"+count+"', '"+count1+"')";
	stmt.executeUpdate(sql2);
	}


	count++;
	if(c2 !=""){

	sql3= "insert into classinfo (class_name, class_num, kind_num) values ('"+c2+"', '"+count+"', '"+count1+"')";
	stmt.executeUpdate(sql3);

	}
	count++;
	if(c3 !=""){



	sql4= "insert into classinfo (class_name, class_num, kind_num) values ('"+c3+"', '"+count+"', '"+count1+"')";
	stmt.executeUpdate(sql4);
	}

	count++;
	if(c4 !=""){



	sql5= "insert into classinfo (class_name, class_num, kind_num) values ('"+c4+"', '"+count+"', '"+count1+"')";
	stmt.executeUpdate(sql5);
	}

	count++;
	while(c5 != ""){

	sql6= "insert into classinfo (class_name, class_num, kind_num) values ('"+c5+"', '"+count+"', '"+count1+"')";
	stmt.executeUpdate(sql6);
	}
	}
	}
	finally{
		try{
			stmt.close();
		}catch(Exception ignored){
		}try{
			conn.close();
		}
		catch(Exception ignored){
		}
	}

out.println("데이터가 들었습니다.");

RequestDispatcher dispatcher = request.getRequestDispatcher("MainPage.jsp");
dispatcher.forward(request, response);




%>
</body>
</html>
