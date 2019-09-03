<!DOCTYPE html>

<!--
  Theme Name: Enlight
  Theme URL: https://probootstrap.com/enlight-free-education-responsive-bootstrap-website-template
  Author: ProBootstrap.com
  Author URL: https://probootstrap.com
  License: Released for free under the Creative Commons Attribution 3.0 license (probootstrap.com/license)
-->
<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% String id = (String)session.getAttribute("id"); %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kinder Zone &mdash; Teachers</title>
    <meta name="description" content="Free Bootstrap Theme by ProBootstrap.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,700|Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="css/styles-merged.css">
    <link rel="stylesheet" href="css/style.min.css">
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="js/vendor/html5shiv.min.js"></script>
      <script src="js/vendor/respond.min.js"></script>
    <![endif]-->
    <script>
    function checkattends() {
      <% if(id==null){
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
  	     out.println("location.href = 'attends.jsp';");
       } %>
    }

    function checkkindinfo() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
  	     out.println("location.href = 'kinderinfo.jsp';");
       } %>
    }

    function checkteacherinfo() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
        } else {
  	      out.println("location.href = 'teacherinfo.jsp';");
        } %>
    }

    function checktime() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
  	     out.println("location.href = 'TimeTableInfo.jsp';");
       } %>
    }

    function checkbus() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
  	     out.println("location.href = 'BusInfo.jsp';");
       } %>
    }

    function checktalk() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
  	     out.println("location.href = 'contact_main.jsp';");
       } %>
    }

    function checkfood() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
  	     out.println("location.href = 'FoodInfo.jsp';");
       } %>
    }

    function checkdelete() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
  	     out.println("location.href = 'deletepage.jsp';");
       } %>
    }

    function checklogout() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
  	     out.println("location.href = 'logout.jsp';");
       } %>
    }

    function checkmy() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
         out.println("location.href = 'main_pro.jsp';");
       } %>
    }

    function checkmyedit() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
  	     out.println("location.href = 'teacher_update.jsp';");
       } %>
    }

    function checkkidsedit() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
  	     out.println("location.href = 'kids_update.jsp';");
       } %>
    }

    function checknotice() {
      <% if (id == null) {
  	     out.println("alert('로그인을 하세요');");
  	     out.println("location.href = 'login.jsp';");
       } else {
  	     out.println("location.href = 'noticeinfo.jsp';");
      } %>
    }
    </script>
  </head>
  <body>

    <div class="probootstrap-search" id="probootstrap-search">
      <a href="#" class="probootstrap-close js-probootstrap-close"><i class="icon-cross"></i></a>
      <form action="#">
        <input type="search" name="s" id="search" placeholder="Search a keyword and hit enter...">
      </form>
    </div>

    <div class="probootstrap-page-wrapper">
      <!-- Fixed navbar -->

      <div class="probootstrap-header-top">
        <div class="container">
          <div class="row">
            <div class="col-lg-9 col-md-9 col-sm-9 probootstrap-top-quick-contact-info">
              <span><i class="icon-location2"></i>햇살유치원</span>
              <span><i class="icon-phone2"></i>02-123-4567</span>
              <span><i class="icon-mail"></i>sunshine@gmail.com</span>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 probootstrap-top-social">
              <ul>
                <%
                if (id == null) {
                  out.println("<li><a href='login.jsp'>로그인</a></li>");
                } else {
                  out.println("<li><a href='logout.jsp'>로그아웃</a></li>");
                } %>
                <li><a href="joinMain.jsp">회원가입</a></li>
                <li><a href="#" class="probootstrap-search-icon js-probootstrap-search"><i class="icon-search"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <nav class="navbar navbar-default probootstrap-navbar">
        <div class="container">
          <div class="navbar-header">
            <div class="btn-more js-btn-more visible-xs">
              <a href="#"><i class="icon-dots-three-vertical "></i></a>
            </div>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a href="index.jsp" title="ProBootstrap:Enlight"><img src='./img/test.png'/></a>
          </div>

          <div id="navbar-collapse" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="index.jsp">홈</a></li>
	  <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">about</a>
                <ul class="dropdown-menu">
                  <li><a href= "#" onclick ="checkkindinfo()">유치원정보</a></li>
                  <li><a href= "#" onclick ="checkteacherinfo()">선생님정보</a></li>
                </ul>
              </li>
              <li><a href= "#" onclick ="checkattends()">출석</a></li>
	            <li><a href= "#" onclick ="checknotice()">알림장</a></li>
              <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">키즈</a>
                <ul class="dropdown-menu">
                  <li><a href= "#" onclick ="checktime()">시간표</a></li>
                  <li><a href= "#" onclick ="checkbus()">차량스케줄</a></li>
                  <li><a href= "#" onclick ="food()">식단표</a></li>
                </ul>
              </li>
              <li><a href= "#" onclick ="checktalk()">상담</a></li>
              <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">마이페이지</a>
                <ul class="dropdown-menu">
                  <li><a href= "#" onclick ="checkmy()">내정보</a></li>
                  <li><a href= "#" onclick ="checkmyedit()">내정보수정</a></li>
                  <li><a href= "#" onclick ="checkkidsedit()">아이정보수정</a></li>
                  <li><a href= "#" onclick ="checklogout()">로그아웃</a></li>
                  <li><a href= "#" onclick ="checkdelete()">탈퇴</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </nav>

      <section class="probootstrap-section probootstrap-section-colored">
        <div class="container">
          <div class="row">
            <div class="col-md-12 text-left section-heading probootstrap-animate">
              <h1>Our Teachers</h1>
            </div>
          </div>
        </div>
      </section>

      <%
    Class.forName("com.mysql.jdbc.Driver");

    Connection conn = null;
    PreparedStatement pstmt = null;
    Statement stmt = null;
    ResultSet rs = null;
    String pid = null;
    String sql = null;
    String kind_name = null;

    try {

      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone?useSSL=false&serverTimezone=Asia/Seoul", "root", "dhfl2575");

      if (conn == null)
        throw new Exception("cannot connect to DB");

      sql = "select parents_id from parentsinfo where parents_id = ?;";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, id);
      rs = pstmt.executeQuery();

      if (rs.next()) {
        pid = rs.getString("parents_id");
      }

      stmt = conn.createStatement();

      if (pid == null) { //선생님
        String query1 = "select kind_name from teacherinfo where teacher_id = '" + id + "';";
        ResultSet rs1 = stmt.executeQuery(query1);
        if (rs1.next()) {
          kind_name = rs1.getString("kind_name");
        }

        String query2 = "select * from teacherinfo where kind_name = '" + kind_name + "';";
        ResultSet rs2 = stmt.executeQuery(query2);

      while(rs2.next()) {
      %>

      <section class="probootstrap-section">
        <div class="container">

          <div class="row">
			<div">
              <div class="probootstrap-teacher text-center probootstrap-animate">
                <figure class="media">
                  <img src="img/person_1.jpg" alt="Free Bootstrap Template by ProBootstrap.com" class="img-responsive">
                </figure>
                <div class="text">
                  <h3><%=rs2.getString("teacher_name")%></h3>
                  <p><%=rs2.getString("teacherinfo.mail")%></p>
                  <ul class="probootstrap-footer-social">
                    <li class="twitter"><a href="#"><i class="icon-twitter"></i></a></li>
                    <li class="facebook"><a href="#"><i class="icon-facebook2"></i></a></li>
                    <li class="instagram"><a href="#"><i class="icon-instagram2"></i></a></li>
                    <li class="google-plus"><a href="#"><i class="icon-google-plus"></i></a></li>
                  </ul>
                </div>
              </div>
			</div>
          </div>


		  	  <%
	} rs1.close();
	rs2.close();//while end
  } else { //부모
		String query3 = "select kind_name from parentsinfo where parents_id = '" + id + "';";
		ResultSet rs3 = stmt.executeQuery(query3);

		if (rs3.next()) {
			kind_name = rs3.getString("kind_name");
		}

		String query4 = "select * from teacherinfo where kind_name = '" + kind_name + "';";
		ResultSet rs4 = stmt.executeQuery(query4);
		while(rs4.next()) {
	%>
		<div class="container">
		  <div class="row">
              <div class="probootstrap-teacher text-center probootstrap-animate">
                <figure class="media">
                  <img src="img/person_2.jpg" alt="Free Bootstrap Template by ProBootstrap.com" class="img-responsive">
                </figure>
                <div class="text">
                  <h3><%=rs4.getString("teacher_name")%></h3>
                  <p><%=rs4.getString("teacherinfo.mail")%></p>
                  <ul class="probootstrap-footer-social">
                    <li class="twitter"><a href="#"><i class="icon-twitter"></i></a></li>
                    <li class="facebook"><a href="#"><i class="icon-facebook2"></i></a></li>
                    <li class="instagram"><a href="#"><i class="icon-instagram2"></i></a></li>
                    <li class="google-plus"><a href="#"><i class="icon-google-plus"></i></a></li>
                  </ul>
                </div>
              </div>
          </div>

        </div>
      </section>

	  	  <%
    }//while end
	rs3.close();
    rs4.close();
  } //else end
      rs.close();
      stmt.close();
      conn.close();
  } catch (SQLException e) {
      out.println("err:" + e.toString());
    }
    %>

      <footer class="probootstrap-footer probootstrap-bg">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <div class="probootstrap-footer-widget">
                <h3>About The Page</h3>
                <p>This page is an intergrated kindergarten site for easy contact and clear operation made by 8th in Database Programming</p>
                <h3>Social</h3>
                <ul class="probootstrap-footer-social">
                  <li><a href="#"><i class="icon-twitter"></i></a></li>
                  <li><a href="#"><i class="icon-facebook"></i></a></li>
                  <li><a href="#"><i class="icon-github"></i></a></li>
                  <li><a href="#"><i class="icon-dribbble"></i></a></li>
                  <li><a href="#"><i class="icon-linkedin"></i></a></li>
                  <li><a href="#"><i class="icon-youtube"></i></a></li>
                </ul>
              </div>
            </div>
            <div class="col-md-3 col-md-push-1">
              <div class="probootstrap-footer-widget">
                <h3>Links</h3>
                <ul>
                  <li><a href="index.jsp">홈</a></li>
                  <li><a href="kinderinfo.jsp">유치원 정보</a></li>
                  <li><a href="teacherinfo.jsp">선생님 정보</a></li>
                  <li><a href="noticeinfo.jsp">알림장</a></li>
                  <li><a href="contact_main.jsp">상담</a></li>
                </ul>
              </div>
            </div>
            <div class="col-md-4">
              <div class="probootstrap-footer-widget">
                <h3>Contact Info</h3>
                <ul class="probootstrap-contact-info">
                  <li><i class="icon-location2"></i> <span>돈암수정캠퍼스 서울 성북구 보문로 34다길 2</span></li>
                  <li><i class="icon-mail"></i><span>info@domain.com</span></li>
                  <li><i class="icon-phone2"></i><span>02-920-7114</span></li>
                </ul>
              </div>
            </div>

          </div>
          <!-- END row -->

        </div>

        <div class="probootstrap-copyright">
          <div class="container">
            <div class="row">
              <div class="col-md-8 text-left">
                <p>&copy; 2017 <a href="https://probootstrap.com/">ProBootstrap:Enlight</a>. All Rights Reserved. Designed &amp; Developed with <i class="icon icon-heart"></i> by <a href="https://probootstrap.com/">ProBootstrap.com</a></p>
              </div>
              <div class="col-md-4 probootstrap-back-to-top">
                <p><a href="#" class="js-backtotop">Back to top <i class="icon-arrow-long-up"></i></a></p>
              </div>
            </div>
          </div>
        </div>
      </footer>

    </div>
    <!-- END wrapper -->


    <script src="js/scripts.min.js"></script>
    <script src="js/main.min.js"></script>
    <script src="js/custom.js"></script>

  </body>
</html>
