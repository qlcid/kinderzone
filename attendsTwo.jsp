<%@page contentType= "text/html; charset=euc-kr"%>
<%@page import= "java.sql.* "%>
<%@page import="java.sql.Connection"%>
<%String id = (String)session.getAttribute("id");%>
<html>
<head>
<title>출석체크</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>kinderzone-출석체크</title>
    <meta name="description" content="Free Bootstrap Theme by ProBootstrap.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,700|Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="css/styles-merged.css">
    <link rel="stylesheet" href="css/style.min.css">
    <link rel="stylesheet" href="css/custom.css">
<style>
	td{
		font-size:25px;
		padding: 20px;

	}


	#content{

	margin: 0 auto;
	width:430px;
	}

	#cname{
		margin-left: 130px;
		width: 150px;
		background:#caf1da;
		border-radius: 20px;
		text-align: center;
	}


</style>
<script>
function checknotice(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'noticeinfo.jsp';");
}
%>
    }
function checkattends(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'attends.jsp';");
}
%>
    }

function checkkindinfo(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'kinderinfo.jsp';");
}
%>
    }

function checkteacherinfo(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'teacherinfo.jsp';");
}
%>
    }

function checktime(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'TimeTableInfo.jsp';");
}
%>
    }

function checkbus(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'BusInfo.jsp';");
}
%>
    }

function checktalk(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'contect_main.jsp';");
}
%>
    }

function checkfood(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'FoodInfo.jsp';");
}
%>
    }

function checkdelete(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'deletepage.jsp';");
}
%>
    }
function checklogout(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'logout.jsp';");
}
%>
    }

function checkmy(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'main_pro.jsp';");
}
%>
    }

function checkmyedit(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'teacher_update.jsp';");
}
%>
    }
function checkkidsedit(){
<%if(id==null){
	out.println("alert('로그인을 하세요');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'kids_update.jsp';");
}
%>
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
                if(id==null){
                  out.println("<li><a href='login.jsp'>로그인</a></li>");
                }else{
                  out.println("<li><a href='logout.jsp'>로그아웃</a></li>");
                }%>
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
            <a href="index.jsp" title="ProBootstrap:Enlight"><img src = './img/test.png' /></a>
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
              <h1>출석체크</h1>
            </div>
          </div>
        </div>
      </section>



<form action = "attendsThree.jsp" method =post>
<DIV id="content">
<table width="400" style="text-align: center;">
<tr>
<td>이름</td>
<td>출석</td>
<td>결석</td>
<td>조퇴</td>
</tr>
  <%


       Connection conn = null;
       Statement stmt = null;
	ResultSet rs = null;
	String classname = null;


  	Class.forName("com.mysql.jdbc.Driver");
  	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");
  	stmt =conn.createStatement();

	String sql1 = "select class_name from classinfo where teacher_id='" + id + "'";

	rs = stmt.executeQuery(sql1);
	while(rs.next()){
		classname = rs.getString("class_name");
	}
	out.println("<br/><div id =cname><h2>"+classname+"</h2></div>");
       String sql = "select * from kinderzone.kidsinfo where class_name ='" + classname + "'";

       rs = stmt.executeQuery(sql);


	int i = 0;
       while(rs.next()) {

            out.println("<tr>");
            out.println("<td>"+rs.getString("kids_name")+"</td>");
	out.println("<input type=hidden name= kidsid value ="+rs.getString("kids_id")+" />");
            out.println("<td><input type =radio name=attends"+i+" value = attends /></td>");
	out.println("<td><input type =radio name=attends"+i+" value = absent /></td>");
	out.println("<td><input type =radio name=attends"+i+" value = earlyleave /></td>");
            out.println("</tr>");
	i++;

       }
	out.println("<input type=hidden name= count value = '"+i+"'/>");

        rs.close();
	stmt.close();
	conn.close();

  %>
<tr>
<td><br/></td>
</tr>
</table>
<div style="margin-left: 300px;"><input type = submit value = 저장 class="btn btn-primary" /></div>
</div>
</form>


      <section class="probootstrap-cta">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h2 class="probootstrap-animate" data-animate-effect="fadeInRight">Join us!</h2>
              <a href="joinMain.html" role="button" class="btn btn-primary btn-lg btn-ghost probootstrap-animate" data-animate-effect="fadeInLeft">Join</a>
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
                <p>'재미있게 놀며 자라는 아이들의 행복놀이터'<br/>어린이는 우리의 미래이자 희망입니다. 아름답고 행복한 교육의 장을 꿈꾸면서 햇살유치원은 밝게 빛나는 미래의 주인공들을 길러내도록 전 교직원이 정성을 다하겠습니다. <br/>감사합니다. </p>
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

</BODY>

</HTML>
