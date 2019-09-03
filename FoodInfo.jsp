<%@page contentType= "text/html; charset=utf-8" errorPage= "DBError.jsp" %>
<%@page import= "java.sql.*, java.util.*, java.text.*"%>

<!DOCTYPE html>

<!--
  Theme Name: Enlight
  Theme URL: https://probootstrap.com/enlight-free-education-responsive-bootstrap-website-template
  Author: ProBootstrap.com
  Author URL: https://probootstrap.com
  License: Released for free under the Creative Commons Attribution 3.0 license (probootstrap.com/license)
-->
﻿<% String id = (String) session.getAttribute("id"); %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ProBootstrap:Enlight &mdash; Free Bootstrap Theme, Free Responsive Bootstrap Website Template</title>
    <meta name="description" content="Free Bootstrap Theme by ProBootstrap.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,700|Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="css/styles-merged.css">
    <link rel="stylesheet" href="css/style.min.css">
    <link rel="stylesheet" href="css/custom.css">


      <style TYPE="text/css">
        body {
        scrollbar-face-color: #F6F6F6;
        scrollbar-highlight-color: #bbbbbb;
        scrollbar-3dlight-color: #FFFFFF;
        scrollbar-shadow-color: #bbbbbb;
        scrollbar-darkshadow-color: #FFFFFF;
        scrollbar-track-color: #FFFFFF;
        scrollbar-arrow-color: #bbbbbb;
        margin-left:"0px"; margin-right:"0px"; margin-top:"0px"; margin-bottom:"0px";
        }

        /* td {font-family: "돋움"; font-size: 9pt; color:#595959;}
        th {font-family: "돋움"; font-size: 9pt; color:#000000;}
        select {font-family: "돋움"; font-size: 9pt; color:#595959;} */


        .divDotText {
        overflow:hidden;
        text-overflow:ellipsis;
        }
/*
    A:link { font-size:9pt; font-family:"돋움";color:#000000; text-decoration:none; }
    A:visited { font-size:9pt; font-family:"돋움";color:#000000; text-decoration:none; }
    A:active { font-size:9pt; font-family:"돋움";color:red; text-decoration:none; }
    A:hover { font-size:9pt; font-family:"돋움";color:red;text-decoration:none;} */
    #content{ margin: 0 auto; }
    </style>
    <!--[if lt IE 9]>
      <script src="js/vendor/html5shiv.min.js"></script>
      <script src="js/vendor/respond.min.js"></script>
    <![endif]-->
  </head>
  <script>
  function checkattends() {
    <% if(id == null) {
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
                <li><a href="joinMain.html">회원가입</a></li>
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
                  <li><a href= "#" onclick ="checkfood()">식단표</a></li>
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
              <h1>식단표</h1>
            </div>
          </div>
        </div>
      </section>
      <%
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
          ResultSet rs = stmt.executeQuery("select * from teacherinfo where teacher_id = '" + (String) session.getAttribute("id") + "';");
          // ResultSet rs = stmt.executeQuery("select * from teacherinfo where teacher_id = 't1234'");

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
      java.util.Date today = new java.util.Date();
      SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
      String strdate = simpleDate.format(today);
      %>
      <%
      String kind_name = "";

      try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

        if (conn == null)
          throw new Exception("데이터베이스에 연결할 수 없습니다.<BR>");

        stmt = conn.createStatement();

        if (t) {  // 선생이면
          ResultSet rsKind = stmt.executeQuery("SELECT kind_name FROM teacherinfo WHERE teacher_id = '" + id + "';");
          // ResultSet rsKind = stmt.executeQuery("SELECT kind_name FROM teacherinfo WHERE teacher_id = 't1234';");

          if (rsKind.next())
            kind_name = rsKind.getString("kind_name");
        } else {  // 부모이면
          ResultSet rsKind = stmt.executeQuery("SELECT kind_name FROM parentsinfo WHERE parents_id = '" + id + "';");
          // ResultSet rsKind = stmt.executeQuery("SELECT kind_name FROM parentsinfo WHERE parents_id = 'parents83';");

          if (rsKind.next())
            kind_name = rsKind.getString("kind_name");
        }

        ResultSet rsToday = stmt.executeQuery("SELECT * FROM foodinfo WHERE kind_name = '" + kind_name + "' and f_date ='" + strdate + "';");

        if (rsToday.next()) {
          String day = rsToday.getString("f_date");
          String food = rsToday.getString("food");

          out.print("<BR><h3 align='center'>오늘의 식단(" + day + ")<BR> " + food + "</h3>");

        } else {
          out.print("<BR><h3 align='center'>식단이 아직 올라오지 않았습니다!</h3>");
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
      <% if (t) { %>
          <div align="center">
          <input type="button" class="btn btn-primary" value="글쓰기" onclick="location.href='InputFoodInfo.jsp'">
          </div><BR>
      <% } %>
      <%
      Calendar cal = Calendar.getInstance();

      String strYear = request.getParameter("year");
      String strMonth = request.getParameter("month");

      int year = cal.get(Calendar.YEAR);
      int month = cal.get(Calendar.MONTH);
      int date = cal.get(Calendar.DATE);

      if(strYear != null)
      {
        year = Integer.parseInt(strYear);
        month = Integer.parseInt(strMonth);
      } else {
      }

      // 년, 월 셋팅
      cal.set(year, month, 1);

      int startDay = cal.getMinimum(java.util.Calendar.DATE);
      int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
      int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
      int newLine = 0;

      // 오늘 날짜 저장.
      Calendar todayCal = Calendar.getInstance();
      SimpleDateFormat sdf = new SimpleDateFormat("yyyMMdd");
      int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));
      %>
      <%-- <html lang="ko">
      <HEAD>
      	<TITLE>캘린더</TITLE>
      	<meta http-equiv="content-type" content="text/html; charset=utf-8">
      	<script type="text/javaScript" language="javascript">
        </script>
      	<style TYPE="text/css">
      		body {
      		scrollbar-face-color: #F6F6F6;
      		scrollbar-highlight-color: #bbbbbb;
      		scrollbar-3dlight-color: #FFFFFF;
      		scrollbar-shadow-color: #bbbbbb;
      		scrollbar-darkshadow-color: #FFFFFF;
      		scrollbar-track-color: #FFFFFF;
      		scrollbar-arrow-color: #bbbbbb;
      		margin-left:"0px"; margin-right:"0px"; margin-top:"0px"; margin-bottom:"0px";
      		}

      		td {font-family: "돋움"; font-size: 9pt; color:#595959;}
      		th {font-family: "돋움"; font-size: 9pt; color:#000000;}
      		select {font-family: "돋움"; font-size: 9pt; color:#595959;}


      		.divDotText {
      		overflow:hidden;
      		text-overflow:ellipsis;
      		}

      A:link { font-size:9pt; font-family:"돋움";color:#000000; text-decoration:none; }
      A:visited { font-size:9pt; font-family:"돋움";color:#000000; text-decoration:none; }
      A:active { font-size:9pt; font-family:"돋움";color:red; text-decoration:none; }
      A:hover { font-size:9pt; font-family:"돋움";color:red;text-decoration:none;}
      </style>
      </HEAD> --%>
      <BODY>
      <form name="calendarFrm" id="calendarFrm" action="" method="post">
      <DIV id="content" style="width:712px;">

      <%-- <table width="100%" border="0" cellspacing="1" cellpadding="1">
      <tr>
      	<td align ="right">
      		<input type="button" onclick="javascript:location.href='<c:url value='/CalendarExam2.jsp' />'" value="오늘"/>
      	</td>

      </tr>
      </table> --%>
      <!--날짜 네비게이션  -->
      <table class="type01" width="100%" border="0" cellspacing="1" cellpadding="1" id="KOO" bgcolor="#a6eabf" style="border:1px solid #c0c0c0">

      <tr>
      <td height="60">

      	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      	<tr>
      		<td height="10">
      		</td>
      	</tr>

      	<tr>
      		<td align="center" >
            <%-- <a href="<c:url value='./FoodInfo.jsp' />?year=<%=year%>&amp;month=<%=month-1%>" target="_self"> --%>
      			<a href="./FoodInfo.jsp?year=<%=year-1%>&amp;month=<%=month%>">
      				<b>&lt;&lt;</b><!-- 이전해 -->
      			</a>
      			<%if(month > 0 ){ %>
      			<a href="./FoodInfo.jsp?year=<%=year%>&amp;month=<%=month-1%>">
      				<b>&lt;</b><!-- 이전달 -->
      			</a>
      			<%} else {%>
      				<b>&lt;</b>
      			<%} %>
      			&nbsp;&nbsp;
      			<%=year%>년

      			<%=month+1%>월
      			&nbsp;&nbsp;
      			<%if(month < 11 ){ %>
      			<a href="./FoodInfo.jsp?year=<%=year%>&amp;month=<%=month+1%>">
      				<!-- 다음달 --><b>&gt;</b>
      			</a>
      			<%}else{%>
      				<b>&gt;</b>
      			<%} %>
      			<a href="./FoodInfo.jsp?year=<%=year+1%>&amp;month=<%=month%>">
      				<!-- 다음해 --><b>&gt;&gt;</b>
      			</a>
      		</td>
      	</tr>
      	</table>

      </td>
      </tr>
      </table>
      <br>
      <table border="0" cellspacing="1" cellpadding="1" bgcolor="#FFFFFF">
      <THEAD>
      <TR bgcolor="#CECECE">
      	<TD width='100px'>
      	<DIV align="center"><font color="red">일</font></DIV>
      	</TD>
      	<TD width='100px'>
      	<DIV align="center">월</DIV>
      	</TD>
      	<TD width='100px'>
      	<DIV align="center">화</DIV>
      	</TD>
      	<TD width='100px'>
      	<DIV align="center">수</DIV>
      	</TD>
      	<TD width='100px'>
      	<DIV align="center">목</DIV>
      	</TD>
      	<TD width='100px'>
      	<DIV align="center">금</DIV>
      	</TD>
      	<TD width='100px'>
      	<DIV align="center"><font color="#529dbc">토</font></DIV>
      	</TD>
      </TR>
      </THEAD>
      <TBODY>
      <TR>
      <%
      //처음 빈공란 표시
      for(int index = 1; index < start ; index++ )
      {
        out.println("<TD >&nbsp;</TD>");
        newLine++;
      }

      for(int index = 1; index <= endDay; index++)
      {
      	String color = "";

      	if(newLine == 0){			color = "RED";
      	}else if(newLine == 6){ 	color = "#529dbc";
      	}else{						color = "BLACK"; };

      	String sUseDate = Integer.toString(year);

      	sUseDate += Integer.toString(month+1).length() == 1 ? "0" + Integer.toString(month+1) : Integer.toString(month+1);
      	sUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index) : Integer.toString(index);

      	int iUseDate = Integer.parseInt(sUseDate);


      	String backColor = "#EFEFEF";
      	if(iUseDate == intToday) {
      		backColor = "#c9c9c9";
      	}
      	out.println("<TD valign='top' align='left' height='92px' bgcolor='" + backColor + "'nowrap>");
      %>
      <font color='<%=color%>'>
      	<%=index %>
      </font>
      <%
        try {
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

          if (conn == null)
            throw new Exception("데이터베이스에 연결할 수 없습니다.<BR> ");

          stmt = conn.createStatement();

          // kind_name = '자식의 유치원 이름'
          ResultSet rs = stmt.executeQuery("SELECT * FROM foodinfo WHERE kind_name = '" + kind_name + "' and f_date ='" + iUseDate + "';");

          while (rs.next()) {
            String[] tmp = rs.getString("food").split(",");

        	  out.println("<BR>");
            for (int i = 0; i < tmp.length; i++)
        	   out.println(tmp[i] + "<BR>");
        	  out.println("<BR>");
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

      	//기능 제거
      	out.println("</TD>");
      	newLine++;

      	if (newLine == 7) {
      	  out.println("</TR>");

      	  if (index <= endDay) {
      	    out.println("<TR>");
      	  }
      	  newLine=0;
      	}
      }

      // 마지막 공란 LOOP
      while (newLine > 0 && newLine < 7) {
        out.println("<TD>&nbsp;</TD>");
        newLine++;
      }
      %>
      </TR>
      </TBODY>
      </TABLE>
      </DIV>
      </form>
      <BR><BR>

      <section class="probootstrap-cta">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h2 class="probootstrap-animate" data-animate-effect="fadeInRight">Get your admission now!</h2>
              <a href="#" role="button" class="btn btn-primary btn-lg btn-ghost probootstrap-animate" data-animate-effect="fadeInLeft">Enroll</a>
            </div>
          </div>
        </div>
      </section>
      <footer class="probootstrap-footer probootstrap-bg">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <div class="probootstrap-footer-widget">
                <h3>about '햇살유치원'</h3>
                <p>'재미있게 놀며 자라는 아이들의 행복놀이터'<br/>어린이는 우리의 미래이자 희망입니다. 아름답고 행복한 교육의 장을 꿈꾸면서 햇살유치원은 밝게 빛나는 미래의 주인공들을 길러내도록 전 교직원이 정성을 다하겠습니다. 감사합니다. </p>
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
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Courses</a></li>
                  <li><a href="#">Teachers</a></li>
                  <li><a href="#">News</a></li>
                  <li><a href="#">Contact</a></li>
                </ul>
              </div>
            </div>
            <div class="col-md-4">
              <div class="probootstrap-footer-widget">
                <h3>Contact Info</h3>
                <ul class="probootstrap-contact-info">
                  <li><i class="icon-location2"></i> <span>햇살유치원</span></li>
                  <li><i class="icon-mail"></i><span>sunshine@gmail.com.com</span></li>
                  <li><i class="icon-phone2"></i><span>02-123-4567</span></li>
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
