<%@page contentType="text/html; charset=euc-kr"%>
 <%String id = (String)session.getAttribute("id");%>
<html >
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>kinderzone-��ġ�����</title>
    <meta name="description" content="Free Bootstrap Theme by ProBootstrap.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,700|Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="css/styles-merged.css">
    <link rel="stylesheet" href="css/style.min.css">
    <link rel="stylesheet" href="css/custom.css">

<style>
	#content{

	margin: 0 auto;
	margin-top: 100px;
	margin-bottom: 100px;

	}

	.form-control{
		witdh: 30px;
		display: inline;
	}

   td{
	padding: 20px;
	font-size: 15px;

   }
</style>
<script>
function checknotice(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'noticeinfo.jsp';");
}
%>
    }

function checkattends(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'attends.jsp';");
}
%>
    }

function checkkindinfo(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'kinderinfo.jsp';");
}
%>
    }

function checkteacherinfo(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'teacherinfo.jsp';");
}
%>
    }

function checktime(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'TimeTableInfo.jsp';");
}
%>
    }

function checkbus(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'BusInfo.jsp';");
}
%>
    }

function checktalk(){
<%if(id==null){
   out.println("alert('�α����� �ϼ���');");
   out.println("location.href = 'login.jsp';");
}else{
   out.println("location.href = 'contact_main.jsp';");
}
%>
    }

function checkfood(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'FoodInfo.jsp';");
}
%>
    }

function checkdelete(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'deletepage.jsp';");
}
%>
    }
function checklogout(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'logout.jsp';");
}
%>
    }

function checkmy(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'main_pro.jsp';");
}
%>
    }

function checkmyedit(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
	out.println("location.href = 'login.jsp';");
}else{
	out.println("location.href = 'teacher_update.jsp';");
}
%>
    }
function checkkidsedit(){
<%if(id==null){
	out.println("alert('�α����� �ϼ���');");
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
              <span><i class="icon-location2"></i>�޻���ġ��</span>
              <span><i class="icon-phone2"></i>02-123-4567</span>
              <span><i class="icon-mail"></i>sunshine@gmail.com</span>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 probootstrap-top-social">
              <ul>
                <%
                if(id==null){
                  out.println("<li><a href='login.jsp'>�α���</a></li>");
                }else{
                  out.println("<li><a href='logout.jsp'>�α׾ƿ�</a></li>");
                }%>
                <li><a href="joinMain.jsp">ȸ������ </a></li>
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
            <a href="index.html" title="ProBootstrap:Enlight"><img src = './img/test.png' /></a>
          </div>

          <div id="navbar-collapse" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="index.html">Ȩ</a></li>
	  <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">about</a>
                <ul class="dropdown-menu">
                  <li><a href= "#" onclick ="checkkindinfo()">��ġ������</a></li>
                  <li><a href= "#" onclick ="checkteacherinfo()">����������</a></li>
                </ul>
              </li>
              <li><a href= "#" onclick ="checkattends()">�⼮</a></li>
	 <li><a href= "#" onclick ="checknotice()">�˸���</a></li>
              <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">Ű��</a>
                <ul class="dropdown-menu">
                  <li><a href= "#" onclick ="checktime()">�ð�ǥ</a></li>
                  <li><a href= "#" onclick ="checkbus()">����������</a></li>
                  <li><a href= "#" onclick ="food()">�Ĵ�ǥ</a></li>
                </ul>
              </li>
              <li><a href= "#" onclick ="checktalk()">���</a></li>
              <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">����������</a>
                <ul class="dropdown-menu">
                  <li><a href= "#" onclick ="checkmy()">������</a></li>
                  <li><a href= "#" onclick ="checkmyedit()">����������</a></li>
                  <li><a href= "#" onclick ="checkkidsedit()">������������</a></li>
                  <li><a href= "#" onclick ="checklogout()">�α׾ƿ�</a></li>
                  <li><a href= "#" onclick ="checkdelete()">Ż��</a></li>
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


<form action=/kinderzone/kinderJoin99.jsp method=post>
<DIV id="content" style="width:600px;">
<h2>��ġ�� ���</h2>
<table>
<tr>
<td>��ġ����</td>
<td><input type='text' name="kindname"  class="form-control" style ="width:250px"/></td>
<tr>
<td>�ݸ�</td>
<td><input type='text' name='classname1'  class="form-control" style ="width:250px"/></td>
</tr>
<tr>
<td></td>
<td><input type='text' name='classname2'  class="form-control" style ="width:250px"/></td>
</tr>
<tr>
<td></td>
<td><input type='text' name='classname3'  class="form-control" style ="width:250px"/></td>
</tr>
<tr>
<td></td>
<td><input type='text' name='classname4'  class="form-control" style ="width:250px"/></td>
</tr>
<tr>
<td></td>
<td><input type='text' name='classname5'  class="form-control" style ="width:250px"/></td>
</tr>
<tr>
<td>��ȭ��ȣ</td>
<td><input type='text' name='tel'  class="form-control" style ="width:250px"/></td>
</tr>
<tr>
<td>��ġ�� ���� </td>
<td><input type="file" name="photo" /></td>
</tr>
<tr>
<td>��ġ�� �Ұ���</td>
<td><textarea name=kindinfo  class="form-control"style ="width:500px; height: 300px"></textarea></td>
</tr>
<tr>
<td> <input type="submit" value=" ����" class="btn btn-primary" style="width: 100px"/></td>
</tr>
</table>
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
                <h3>about '�޻���ġ��'</h3>
                <p>'����ְ� ��� �ڶ�� ���̵��� �ູ������'<br/>��̴� �츮�� �̷����� ����Դϴ�. �Ƹ���� �ູ�� ������ ���� �޲ٸ鼭 �޻���ġ���� ��� ������ �̷��� ���ΰ����� �淯������ �� �������� ������ ���ϰڽ��ϴ�. �����մϴ�. </p>
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
                  <li><i class="icon-location2"></i> <span>�޻���ġ��</span></li>
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
