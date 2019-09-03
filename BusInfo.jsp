<%@page contentType="text/html; charset=utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*, java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

    <!--[if lt IE 9]>
      <script src="js/vendor/html5shiv.min.js"></script>
      <script src="js/vendor/respond.min.js"></script>
    <![endif]-->
  </head>
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
                  out.println("<li><a href='testcss.html'>로그인</a></li>");
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
              <h1>시간표</h1>
            </div>
          </div>
        </div>
      </section>



      <section class="probootstrap-section probootstrap-section-sm">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="row probootstrap-gutter0">
                <div class="col-md-4" id="probootstrap-sidebar">
                  <div class="probootstrap-sidebar-inner probootstrap-overlap probootstrap-animate">
                    <h3>Kids - 차량스케줄</h3>
                    <ul class="probootstrap-side-menu">
                      <li class="active"></li>
                      <li><a href="TimeTableInfo.jsp">시간표</a></li>
                      <li><a href="BusInfo.jsp">차량스케줄</a></li>
                      <li><a href="FoodInfo.jsp">식단표</a></li>
                    </ul>
                  </div>
                </div>
                <div class="col-md-7 col-md-push-1  probootstrap-animate" id="probootstrap-content">
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
                      ResultSet rs = stmt.executeQuery("select * from teacherinfo where teacher_id = '" + id + "';");
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
                    String[] mon = new String[2];
                    String[] tue = new String[2];
                    String[] wed = new String[2];
                    String[] thu = new String[2];
                    String[] fri = new String[2];
                    String[] mPlace = new String[2];
                    String[] tPlace = new String[2];
                    String[] wPlace = new String[2];
                    String[] hPlace = new String[2];
                    String[] fPlace = new String[2];
                  %>
                  <% if (t) { %>
                      <%@ include file="BusInfoView.jsp" %>

                      <div align="center">
                      <input type="button" class="btn btn-primary" value="스케줄 입력" onclick="location.href='InputBusInfo.jsp'"> &nbsp;&nbsp;
                      <input type="button" class="btn btn-primary" value="차량정보 입력" onclick="location.href='InputDriver.jsp'">
                      </div><BR>
                  <%
                    } else {
                      String kids_id = "";
                      try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

                        if (conn == null)
                          throw new Exception("데이터베이스에 연결할 수 없습니다.<BR> ");

                        stmt = conn.createStatement();

                        // parents_id = 'session으로 넘어온 부모 id'
                        // ResultSet rs = stmt.executeQuery("SELECT * FROM shuttleinfo where kids_id = (SELECT kids_id FROM kidsinfo WHERE parents_id = 'parents83')");
                        ResultSet rs = stmt.executeQuery("SELECT * FROM shuttleinfo WHERE kids_id = (SELECT kids_id FROM kidsinfo WHERE parents_id = '" + id + "');");

                        while (rs.next()) {
                          kids_id = rs.getString("kids_id");
                          String day = rs.getString("shuttle_day");
                          String time = rs.getString("shuttle_time");
                          String place = rs.getString("shuttle_place");

                          switch (day) {
                            case "월":
                              mon = time.split(",");
                              mPlace = place.split(",");
                              break;
                            case "화":
                              tue = time.split(",");
                              tPlace = place.split(",");
                              break;
                            case "수":
                              wed = time.split(",");
                              wPlace = place.split(",");
                              break;
                            case "목":
                              thu = time.split(",");
                              hPlace = place.split(",");
                              break;
                            case "금":
                              fri = time.split(",");
                              fPlace = place.split(",");
                              break;
                          }
                        }

                        ResultSet rs1 = stmt.executeQuery("SELECT * FROM driverinfo WHERE bus_num = (SELECT bus_num FROM businfo WHERE kids_id = '" + kids_id + "');");

                        if (rs1.next()) {
                          String shuttle_num = rs1.getString("shuttle_num");
                          String driver_name = rs1.getString("driver_name");

                          out.print("<H4 align='center'>" + shuttle_num + "번 " + driver_name + "</h4><BR>");
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
                  <table cellspacing="5" align="center" border="1" bordercolor="#c0c0c0" width="550" height="300">
                    <tr align="center">
                        <td width="100" bgcolor="#a6eabf">월</td>
                        <td width="100" bgcolor="#a6eabf">화</td>
                        <td width="100" bgcolor="#a6eabf">수</td>
                        <td width="100" bgcolor="#a6eabf">목</td>
                        <td width="100" bgcolor="#a6eabf">금</td>
                    </tr>
                    <tr align="center">
                        <td><%=mon[0]%><br><%=mPlace[0]%></td>
                        <td><%=tue[0]%><br><%=tPlace[0]%></td>
                        <td><%=wed[0]%><br><%=wPlace[0]%></td>
                        <td><%=thu[0]%><br><%=hPlace[0]%></td>
                        <td><%=fri[0]%><br><%=fPlace[0]%></td>
                    </tr>
                    <tr align="center">
                        <td><%=mon[1]%><br><%=mPlace[1]%></td>
                        <td><%=tue[1]%><br><%=tPlace[1]%></td>
                        <td><%=wed[1]%><br><%=wPlace[1]%></td>
                        <td><%=thu[1]%><br><%=hPlace[1]%></td>
                        <td><%=fri[1]%><br><%=fPlace[1]%></td>
                    </tr>
                  </table>
                  <br>
                  <% } %>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

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
                  <li><i class="icon-location2"></i><span>햇살유치원</span></li>
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
