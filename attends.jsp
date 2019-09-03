<%String id = (String)session.getAttribute("id");%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.Calendar,  java.util.*"%>

<%@ page contentType="text/html; charset=euc-kr"%>
<%@page import="java.sql.Connection, java.util.GregorianCalendar "%>
<%@page import= "java.sql.* "%>
<%@page import="java.sql.Connection"%>

<html>
 <head>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>kinderzone-출석체크</title>
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

   <style>
     .center{
         margin: 10px 0 0 30px;
     }
.myButton {
 background-color:#dfdfdf;
 -moz-border-radius:28px;
 -webkit-border-radius:28px;
 border-radius:28px;

 display:inline-block;
 cursor:pointer;
 color:#ffffff;

 font-size:10px;
 text-align: center;
 line-height: 30px;
 text-decoration:none;
 width:100px; height: 30px;
 margin:0 5px;

}
.myButton:hover {
 background-color:#6c7c7c;
}
.myButton:active {
 position:relative;
 top:1px;
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
 out.println("location.href = 'contact_main.jsp';");
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
               <li><a href="joinMain.jsp">회원가입 </a></li>
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



     <section class="probootstrap-section probootstrap-section-sm">
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



}else{



}

//년도/월 셋팅

cal.set(year, month, 1);



int startDay = cal.getMinimum(java.util.Calendar.DATE);

int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);

int start = cal.get(java.util.Calendar.DAY_OF_WEEK);

int newLine = 0;



//오늘 날짜 저장.

Calendar todayCal = Calendar.getInstance();

SimpleDateFormat sdf = new SimpleDateFormat("yyyMMdd");

int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));





%>

<html lang="ko">

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

            }


 #content{

 margin: 0 auto;
 }

 #fsz{font-size:15px; text-align: center;}


            td {font-family: "맑은고딕"; font-size: 9pt; color:#595959;}

            th {font-family: "맑은고딕"; font-size: 9pt; color:#000000;}

            select {font-family: "맑은고딕"; font-size: 9pt; color:#595959;}





            .divDotText {

            overflow:hidden;

            text-overflow:ellipsis;

            }



           A:link { font-size:9pt; font-family:"맑은고딕";color:#000000; text-decoration:none; }

           A:visited { font-size:9pt; font-family:"맑은고딕";color:#000000; text-decoration:none; }

           A:active { font-size:9pt; font-family:"맑은고딕";color:red; text-decoration:none; }

           A:hover { font-size:9pt; font-family:"맑은고딕";color:red;text-decoration:none;}





      </style>

</HEAD>

<BODY>

<form name="calendarFrm" id="calendarFrm" action="" method="post">

<DIV id="content" style="width:780px;">



<table width="100%" border="0" cellspacing="1" cellpadding="1">

<tr>

      <td align ="right">

            <input type="button" onclick="javascript:location.href=./attends.jsp" value="오늘"/>

      </td>



</tr>

</table>

<!--날짜 네비게이션  -->

<table width="100%" border="0" cellspacing="1" cellpadding="1" id="KOO" bgcolor="#49D292" style="border:1px solid #70daa4">



<tr>

<td height="60">



      <table width="100%" border="0" cellspacing="0" cellpadding="0">

      <tr>

            <td height="10">

            </td>

      </tr>






      <tr>

            <td id=fsz>

                   <a href="./attends.jsp?year=<%=year-1%>&amp;month=<%=month%>">

                          <b>&lt;&lt;</b><!-- 이전해 -->

                   </a>

                   <%if(month > 0 ){ %>

                   <a href="./attends.jsp?year=<%=year%>&amp;month=<%=month-1%>">

                          <b>&lt;</b><!-- 이전달 -->

                   </a>

                   <%} else {%>

                          <b>&lt;</b>

                   <%} %>

                   &nbsp;&nbsp;

                   <%=year%>년



                   <%=month+1%>월

                   &nbsp;&nbsp;

                   <%if(month <11 ){%>

   <a href="./attends.jsp?year=<%=year%>&amp;month=<%=month+1%>">

                          <!-- 다음달 --><b>&gt;</b>



                   </a>

                   <%}else{%>

                          <b>&gt;</b>

                   <%} %>

  <a href="./attends.jsp?year=<%=year+1%>&amp;month=<%=month%>">

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



      if(newLine == 0){          color = "RED";

      }else if(newLine == 6){    color = "#529dbc";

      }else{                     color = "BLACK"; };



      String sUseDate = Integer.toString(year);

      sUseDate += Integer.toString(month+1).length() == 1 ? "0" + Integer.toString(month+1) : Integer.toString(month+1);

      sUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index) : Integer.toString(index);



      int iUseDate = Integer.parseInt(sUseDate);

      String cUseDate = Integer.toString(year)+"-";

      cUseDate += Integer.toString(month+1).length() == 1 ? "0" + Integer.toString(month+1) : Integer.toString(month+1)+"-";

      cUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index) : Integer.toString(index);






      String backColor = "#EFEFEF";

      if(iUseDate == intToday ) {

            backColor = "#c9c9c9";

      }

      out.println("<TD valign='top' align='left' height='92px' bgcolor='"+backColor+"' nowrap>");

      %>

      <font color='<%=color%>'>

            <%=index %>

      </font>



      <%



 request.setCharacterEncoding("UTF-8");


 Connection conn = null;
 PreparedStatement stmt = null;
 Statement pstmt = null;
 ResultSet rs = null;
ResultSet rs2 = null;
 String pId = null;
 String tId = null;
 String kidsid =null;
 String abdate= null;
 String atdate= null;
 String ledate= null;
 String cdate= null;
 String sql =null;
 String ndate = null;

 try{
   Class.forName("com.mysql.jdbc.Driver");
   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");

 sql = "select parents_id from parentsinfo where parents_id=?;";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1,id);
 rs = stmt.executeQuery();

 if(rs.next()){
   pId = rs.getString("parents_id");
 }


 if(pId==null){
      out.println("<BR>");
 out.println("<form action = attendsTwo.jsp method=post><br/>");

 GregorianCalendar now = new GregorianCalendar();


 SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");


 ndate = simpleDate.format(todayCal.getTime());


 if(ndate.equals(cUseDate)){

 %><a href="attendsTwo.jsp" class="btn btn-primary">출석체크</a><%

 }else{

 %><a href="attendsFour.jsp" class="mybutton">출석확인</a><%

 }
 out.println("</form>");

      out.println("<BR>");
}else if(pId!=null){

 out.println("<BR>");
       sql = "select kids_id from kidsinfo where parents_id='"+id+"';";

 rs = stmt.executeQuery(sql);

 if(rs.next()){
  kidsid = rs.getString("kids_id");
 }

 String sql1 = "select * from attendinfo where kids_id='"+kidsid+"';";

 rs2 = stmt.executeQuery(sql1);

 while(rs2.next()){


 abdate= rs2.getString("absence_time");
 atdate= rs2.getString("attend_time");
 ledate=rs2.getString("earlyLeave_time");
 cdate = rs2.getString("check_date");



 if(cdate.equals(cUseDate)){
   if(abdate!=null){
     out.println("<div class = center><img src = 'error.png' /><br/>"+abdate+"</div>");
   }else if(atdate!=null){
     out.println("<div class = center><img src = 'success.png' /><br/>"+atdate+"</div>");
   }else{
     out.println("<div class = center><img src = 'log-in.png' /><br/>"+ledate+"</div>");
   }
 }
}

}else
 {out.println("정보 없음");}
rs.close();


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

      //기능 제거

      out.println("</TD>");

      newLine++;



      if(newLine == 7)

      {

        out.println("</TR>");

        if(index <= endDay)

        {

          out.println("<TR>");

        }

        newLine=0;

      }

}

//마지막 공란 LOOP

while(newLine > 0 && newLine < 7)

{

 out.println("<TD>&nbsp;</TD>");

 newLine++;

}

%>

</TR>



</TBODY>

</TABLE>

</DIV>

</form>
     </section>

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
