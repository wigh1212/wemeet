<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.zerock.domain.MemberVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% MemberVO member=(MemberVO)request.getAttribute("member");%>


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
#imgdiv{
	position:fixed;
	weight:200px;
	height:200px;
}


 #jb-sidebar {
        width: 260px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
       
        style:none;
  }
 #libar {
 	
 	list-style:none; 
 	margin-top:40px;
 	margin-bottom:40px;
 
 }
 #libar:hover{
 background:blue;
 }
 #ulbar{
 	style:none;
 }
</style>
<body>
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
    <a href="/"> <img src="/resources/img/logo.png" width="400px" height="80px" class="navbar-brand"/> </a>
     
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
  <header class="masthead" style="background-image: url('/resources/img/home-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
            <h1>Wemeet</h1>
            <span class="subheading">만나서 거래하자!</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  	<!-- 사이드바 -->
       <div id="jb-sidebar" >
        <h2 id="">Home</h2>
        <ul id="ulbar">
          <li id="libar"><a href="/?keyword=sel">팝니다 !</a></li>
          <li id="libar"><a href="/?keyword=buy">삽니다 !</a></li>
          <li id="libar"><a href="/?keyword=chat">토론장</a></li>
        </ul>
      </div>
	<!-- 사이드바 끝 -->

  
  <c:if test="${selllist !=null }" >
  <c:forEach items="${selllist}" var="selllist">
  <div class="container">
   
    <div class="row">
     <div>
   		<img src="/resources/img/logo.png" id="imgdiv"  width=200px, height=300px>
     </div>
      <div class="col-lg-8 col-md-10 mx-auto">
        <div class="post-preview">
          <a href="post.html">
            <h2 class="post-title" id="content">
             	핸드폰 싸게 팝니다
            </h2>
            <h3 class="post-subtitle" id="content">
              	기종:겔럭시S8
            </h3>
          </a>
          <p class="post-meta" id="content">작성일자:
            <a href="#">2020-06-15</a>
            </p>
        </div>
        </div>
        </div>
        </div>

        	<hr>
 		 </c:forEach>
 		<div class="clearfix">
          <a class="btn btn-primary float-right" href="/chat/chattingroom">판매장으로 &rarr;</a>
        </div>
 		 
        </c:if>
        
        
        
        <c:if test="${chattinglist !=null }">
        	<c:forEach items="${chattinglist}" var="chattinglist">	
     
        	  <div class="container">
   			 <div class="row">
   	 		 <div class="col-lg-8 col-md-10 mx-auto">
   	    	 <div class="post-preview">
         		 <a href="post.html">
   	      	  	 <h2 class="post-title" id="content">
   	          		${chattinglist.ctitle}
   	        	 </h2>
   	        	 <h3 class="post-subtitle" id="content">
   	          	 	카테고리:${chattinglist.ccategory }
    	     	   </h3>
    	     	 </a>
       	   	<p class="post-meta" id="content">작성일자:
       	 	    <a href="#">${chattinglist.cregdate }</a>
       	 	    </p>
       		 	</div>
       		 </div>
       		 </div>
       		 </div>
       		 
       		 <hr>        
       		 </c:forEach>
        <div class="clearfix">
          <a class="btn btn-primary float-right" href="/chat/chattingroom">토론장으로 &rarr;</a>
        </div>
      
        </c:if>
        
        
        
        <c:if test="${buylist !=null }" >
  <c:forEach items="${buylist}" var="buylist">
  <div class="container">
   
    <div class="row">
     <div>
   		<img src="/resources/img/logo.png" id="imgdiv"  width=200px, height=300px>
     </div>
      <div class="col-lg-8 col-md-10 mx-auto">
        <div class="post-preview">
          <a href="post.html">
            <h2 class="post-title" id="content">
             	핸드폰 싸게 팝니다
            </h2>
            <h3 class="post-subtitle" id="content">
              	기종:겔럭시S8
            </h3>
          </a>
          <p class="post-meta" id="content">작성일자:
            <a href="#">2020-06-15</a>
            </p>
        </div>
        </div>
        </div>
        </div>

        	<hr>
 		 </c:forEach>
 		<div class="clearfix">
          <a class="btn btn-primary float-right" href="/chat/chattingroom">판매장으로 &rarr;</a>
        </div>
 		 
        </c:if>
        
        
        
        <!-- Pager -->
      

  <hr>

  <!-- Footer -->
  <footer>
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

  <!-- Custom scripts for this template -->
  <script src="/resources/js/clean-blog.min.js"></script>

</body>

</html>
