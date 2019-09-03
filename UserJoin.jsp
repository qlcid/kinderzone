<%@ page contentType="text/html;charset=euc-kr" import="java.sql.* " %>
<%String id = (String) session.getAttribute("id");%>
<%@ page import="java.io.* " %>

<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.Calendar"%>


<%@page import= "java.sql.* "%>
<%@page import="java.sql.Connection"%>
<% request.setCharacterEncoding("euc-kr"); %>

<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>kinderzone</title>
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
      <script src="checklogin.js"></script>
<script src = "http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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
<script type="text/javascript">



function checkid() {

	if(f.my_id.value == "") {

		alert("id를 입력하시오.");

		f.my_id.focus();

	} else {

		url = "idValidate.jsp?id=" + f.my_id.value;

		// 두 번째 파라미터는 메소드 전송방식이 아니고 타이틀

		window.open(

				url,

				"id check", "toolbar=no, width=350, height=150, top=150, left=150");

	}

}

   function findaddress(){

        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }





    function sendIt() {

        var email = document.f.my_email.value;

        var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;


        //아이디 입력여부 검사

        if (f.my_id.value == "") {

            alert("아이디를 입력하지 않았습니다.")

            f.my_id.focus()

            return false;

        }

        //아이디 유효성 검사 (영문소문자, 숫자만 허용)

        for (i = 0; i < document.f.my_id.value.length; i++) {

            ch = document.f.my_id.value.charAt(i)

            if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {

                alert("아이디는 대소문자, 숫자만 입력가능합니다.")

                document.f.my_id.focus()

                document.f.my_id.select()

                return false;

            }

        }

        //아이디에 공백 사용하지 않기

        if (document.f.my_id.value.indexOf(" ") >= 0) {

            alert("아이디에 공백을 사용할 수 없습니다.")

            document.f.my_id.focus()

            document.f.my_id.select()

            return false;

        }

        //아이디 길이 체크 (4~12자)

        if (document.f.my_id.value.length<4 || document.f.my_id.value.length>12) {

            alert("아이디를 4~12자까지 입력해주세요.")

            document.f.my_id.focus()

            document.f.my_id.select()

            return false;

        }

        //비밀번호 입력여부 체크

        if (document.f.my_pwd.value == "") {

            alert("비밀번호를 입력하지 않았습니다.")

            document.f.my_pwd.focus()

            return false;

        }

        if (f.my_pwd.value == f.my_id.value) {

            alert("아이디와 비밀번호가 같습니다.")

            document.f.my_pwd.focus()

            return false;

        }

        //비밀번호 길이 체크(4~8자 까지 허용)

        if (document.f.my_pwd.value.length<4 || document.f.my_pwd.value.length>12) {

            alert("비밀번호를 4~12자까지 입력해주세요.")

            document.f.my_pwd.focus()

            document.f.my_pwd.select()

            return false;

        }



        //비밀번호와 비밀번호 확인 일치여부 체크

        if (document.f.my_pwd.value != document.f.my_pwd1.value) {

            alert("비밀번호가 일치하지 않습니다")

            document.f.my_pwd1.value = ""

            document.f.my_pwd1.focus()

            return false;

        }



        if (document.f.my_email.value == "") {

            alert("이메일을 입력하지 않았습니다.")

            document.f.my_email.focus()

            return false;

        }



        if (document.f.my_name.value == "") {

            alert("이름을 입력하지 않았습니다.")

            document.f.my_name.focus()

            return false;

        }

        if(document.f.my_name.value.length<2){

            alert("이름을 2자 이상 입력해주십시오.")

            document.f.my_name.focus()

            return false;

        }


        document.f.submit();

    };


</script>
<style>
   td{
	padding: 15px;
	font-size: 15px;


   }

   .color {
	background: #eeeeee;
   }

   .form {
	margin: 3px;
	size: 10px;
   }

	#content{

	margin: 0 auto;
	margin-top: 100px;
	margin-bottom: 100px;

	}

	.form-control{
		witdh: 30px;
		display: inline;
	}
</style>
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
            <a href="index.html" title="ProBootstrap:Enlight"> <img src = './img/test.png' /></a>
          </div>

          <div id="navbar-collapse" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="index.html">홈</a></li>
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
              <h1>Login</h1>
            </div>
          </div>
        </div>
      </section>




<form class=form name="f" method=post onsubmit="return sendIt();" action=JoinFinal.jsp id = center />
<DIV id="content" style="width:700px;">
  <h2>회원등록</h2>
<table>
<tr>
<td class=color align=center>사용자확인</td>
<td>교사<input type='radio' name='who' value='teacher'/>학부모<input type ='radio' name='who' value='parents'/></td>
</tr>
<tr>
  <td class=color align=center>유치원명</td>
  <td>

<%
     Connection conn = null;
     Statement stmt = null;
     String kindername = null;

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kinderzone", "root", "dhfl2575");
	stmt =conn.createStatement();


     String sql = "select kind_name from kinderzone.kinderinfo";

     ResultSet rs = stmt.executeQuery(sql);

     int i=1;


%>
<select name="kindname" id="kindname" onchange="second(this.value)" class="form-control" style ="width:140px">
<option value="" selected disabled>==선택하세요==</option>

<%

     while(rs.next()){
	kindername=rs.getString("kind_name");
          out.println("<option value="+rs.getString(1)+">"+rs.getString(1)+"</option>");
          i++;
     }
     out.println("</select>");

      rs.close();

%>


    </td>
    </tr>
<tr>
    <td class=color align=center>클래스명</td>
    <td>

<select name="class" id="class" class="form-control" style ="width:140px">
<option value="" selected disabled>==선택하세요==</option>


<%

     String sql1 = "select class_name from kinderzone.classinfo ";

     ResultSet rs1 = stmt.executeQuery(sql1);

     int j=1;

     while(rs1.next()) {

          out.println("<option value="+rs1.getString(1)+">"+rs1.getString(1)+"</option>");
          j++;
     }
     out.println("</select>");


     rs1.close();
     stmt.close();
     conn.close();
%>

      </td>
      </tr>
      <tr>
<td class=color align=center>이름</td>
<td><input type='text' name='my_name' id='my_name' class="form-control" style ="width:200px" />&nbsp&nbsp<font color=#26145a >2자 이상</font></td>
</tr>
      <tr>
<td class=color align=center>아이디</td>
<td><input type='text' name='my_id' id='my_id'class="form-control" style ="width:200px"/>&nbsp&nbsp<font color=#26145a >영소문자, 숫자 4~12자 이상 </font> &nbsp&nbsp<input type="button" onclick="checkid()" value="중복체크" class="btn btn-primary" /> </td>
</tr>
<tr>
<td class=color align=center>비밀번호</td>
<td><input type="password" name="my_pwd" id='my_pwd'class="form-control"style ="width:200px"/> &nbsp&nbsp<font color=#26145a >영문/숫자포함 6자 이상</font></td>
</tr>
<tr>
<td class=color align=center>비밀번호확인</td>
<td><input type="password" name="my_pwd1" id='my_pwd1'class="form-control" style ="width:200px"/></td>
</tr>
<tr align="left">

    <td class=color align=center>생일</td>

    <td><input type="text" name="my_year" size="4" maxlength="4" class="form-control" style ="width:60px">년
	<select name="my_month" id="my_month" class="form-control" style ="width:60px">

            <option value="1">1</option>

            <option value="2">2</option>

            <option value="3">3</option>

            <option value="4">4</option>

            <option value="5">5</option>

            <option value="6">6</option>

            <option value="7">7</option>

            <option value="8">8</option>

            <option value="9">9</option>

            <option value="10">10</option>

            <option value="11">11</option>

            <option value="12">12</option>

    </select>월<select name="my_date" id="my_date" class="form-control" style ="width:60px">

            <option value="1">1</option>

            <option value="2">2</option>

            <option value="3">3</option>

            <option value="4">4</option>

            <option value="5">5</option>

            <option value="6">6</option>

            <option value="7">7</option>

            <option value="8">8</option>

            <option value="9">9</option>

            <option value="10">10</option>

            <option value="11">11</option>

            <option value="12">12</option>

            <option value="13">13</option>

            <option value="14">14</option>

            <option value="15">15</option>

            <option value="16">16</option>

            <option value="17">17</option>

            <option value="18">18</option>

            <option value="19">19</option>

            <option value="20">20</option>

            <option value="21">21</option>

            <option value="22">22</option>

            <option value="23">23</option>

            <option value="24">24</option>

            <option value="25">25</option>

            <option value="26">26</option>

            <option value="27">27</option>

            <option value="28">28</option>

            <option value="29">29</option>

            <option value="30">30</option>

            <option value="31">31</option>

    </select>일</td>

</tr>
<tr>
<td class=color align=center>전화번호</td>
  <td><input type="text"name="cel1"class="form-control" style ="width:60px"> -
      <input type="text" name="cel2_1" title="전화번호" class="form-control"style ="width:60px "> -
      <input type="text" name="cel2_2" class="form-control"style ="width:60px ">
   </td>
</tr>
  <tr>
    <td class=color align=center>주소</td>
    <td><input type="text" id="sample6_postcode" placeholder="우편번호" class="form-control" style ="width:80px">&nbsp&nbsp<input type="button" onclick="findaddress()" value="주소찾기" class="btn btn-primary"  /> <br/><input type="text" name="addr" id="sample6_address" placeholder="주소" class="form-control" style ="width:300px"><br/><input type="text" id="sample6_detailAddress" placeholder="상세주소" class="form-control" style ="width:200px">
<input type="text" id="sample6_extraAddress" placeholder="참고항목" class="form-control" style ="width:100px">

    </td>
      </tr>
  <tr>
      <td class=color align=center>이메일</td>
        <td>
          <input type='text' name="my_email" class="form-control" style ="width:120px" / >@
          <input type='text' name="my_email_dns" class="form-control" style ="width:140px"/>
            <select name="emailaddr" class="form-control" style ="width:150px">
               <option value="">직접입력</option>
               <option value="daum.net">daum.net</option>
               <option value="empal.com">empal.com</option>
               <option value="gmail.com">gmail.com</option>
               <option value="hanmail.net">hanmail.net</option>
               <option value="msn.com">msn.com</option>
               <option value="naver.com">naver.com</option>
               <option value="nate.com">nate.com</option>
            </select>
        </td>
     </tr></table>
<br/>

 <input type="submit" value="등록"

            onclick="sendit()" class="btn btn-primary" /> <input type="reset" value="취소" class="btn btn-primary" />
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
