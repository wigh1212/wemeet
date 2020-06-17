<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">




<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Clean Blog - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="/resources/css/clean-blog.min.css" rel="stylesheet">

</head>
<style>
#Loadpage{
width:100%;
height:auto;
}
#message{

    width: 50%;
    height: auto;
}
ul{
	 list-style-type:none;
}

.mx-auto{
	margin-top:200px;
}

#chatarea{
    width: 100%;
    y: inline-block;
    border: 1px solid black;
    height: 500px;
    overflow:auto;
    scroll:auto;
    	
    
}

#content1{
align:center;
	margin-left:10%;
	border:1px solid black;
	height:1600px;
	width:80%;
	overflow:auto;
}


#subcontent1{
	align:center;
	height:200px;

	width:50%;

	 float:left;
}

#imgdiv{
align:center;
	width:400px;
	height:200px;
	float:left;
}

</style>


<body>


  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a href="/"> <img src="/resources/img/logo.png" width="400px" height="100px" class="navbar-brand"/> </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
         <li class="nav-item">
            <a class="nav-link" href="/">홈으로</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/seller/sellboardlist">판매</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/buyer/buyboardlist">삽니다</a>
          </li>
          <li class="nav-item">
             <a class="nav-link" href="/chat/chattingroom">상품토론</a>
          </li>
          <c:if test="${empty member||member.magree=='N'}">
		  <li class="nav-item">
            <a class="nav-link" href="/member/register">login</a>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="/member/register">회원가입</a>
          </li>
          </c:if>
           <c:if test="${member.mid != null && member.magree=='Y'}">
           <li class="nav-item">
            <a class="nav-link" href="/member/register">내정보</a>
          	</li>
		 	 <li class="nav-item">
            	<a class="nav-link" href="/member/logout">로그아웃</a>
          	</li>
          </c:if>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('img/contact-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>Contact Me</h1>
            <span class="subheading">Have questions? I have answers.</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
 
 	<div id="content1">
 		
   <c:if test="${chattinglist !=null }">
        	<c:forEach items="${chattinglist}" var="chattinglist">	
     
 		<div id="subcontent1">
 		<a href="/chat/chattingroom?cno=${chattinglist.cno}">
 			<img src="#" id="imgdiv">
 			<h2>${chattinglist.ctitle}</h2>
 			<p>카테고리:${chattinglist.ccategory}</p>
 			<p>방 생성날짜:${chattinglist.cregdate}</p>
 			</a>
 		</div>
       </c:forEach>
	</c:if> 	
 	</div>
 
 
 
 
    
 
 
 
 
 
 
 
 
 

  <!-- Footer -->
  <footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <ul class="list-inline text-center">
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
          </ul>
          <p class="copyright text-muted">Copyright &copy; Your Website 2019</p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="/resources/js/jqBootstrapValidation.js"></script>
  <script src="/resources/js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/resources/js/clean-blog.min.js"></script>

</body>

</html>