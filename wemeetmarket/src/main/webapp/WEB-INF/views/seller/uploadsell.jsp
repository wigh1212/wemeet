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

  <title>판매 게시판</title>

  <!-- Bootstrap core CSS -->
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="/resources/css/clean-blog.min.css" rel="stylesheet">
   
<style>
   
   #t{

   margin-left:340px;
   }
   #tx{
   
   width:680px;
   height:40px;
   
      margin-left:20px;   
   }
   #c{
   margin-top:20px;
   margin-left:350px;
   margin-bottom:200px;
   
   }
   #cx{
      
      width:680px;
      height:480px;
      margin-top:16px;
      margin-left:40px;
   }
   #m{   
      margin-top:30px;
      margin-left:340px;
      margin-bottom:30px;
      height:20px;
   }
   #mx{
       border:1px solid rgb(0, 0, 0);
      margin-left:470px;
   
      margin-top:30px;
      width:300px;
      height:250px;
   }
   
   #fu{
      margin-top:20px;
      margin-left:210px;
      
      
   }
   #m2{
      margin-right:2px;
      margin-left:340px;
      margin-bottom:40px;
      margin-top:70px;
      
   
   }
   #mx2{
          border:1px solid rgb(0, 0, 0);
      margin-left:470px;
      margin-bottom:10px;
      margin-top:20px;
      width:300px;
      height:250px;
      
   }
   
   #fu2{
      margin-left:650px;
      margin-bottom:10px;
      margin-top:10px;
   }
   #p{
      margin-top:20px;
      margin-left:350px;
      
   }
   #px{
      
      width:220px;
      height:40px;
      margin-left:30px;
   }
   #v{
      
      margin-left:380px;
   }
   
   #vx{
      width:220px;
   
      margin-left:40px;
      margin-top:5px;
      
   }
   #e{
   margin-left:350px;
   margin-top:10px;
   margin-bottom:50px;
   }
   
   #ex{
   margin-top:5px;
   margin-left:35px;
   width:400px;
   height:150px;
   }
   #a{
   width:180px;
   margin-left:620px;
   }
   #s{
   margin-left:10px;

   }
   
   #r{
   margin-left:30px;
   width:100px;
   
   }
   #top{
   margin-left:900px;
   }
   

</style>
</head>

<body>
      <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="index.html">Start Bootstrap</a>
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
  <header class="masthead" style="background-image: url('/resources/img/about-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>Sell</h1>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->

  <hr>

  <!-- Footer -->
  <footer>
  
      <table class="table table-striped table-bordered table-hover"  id="f2">
           <div id="t">판매글 제목
              <input type="text" id="tx"/> 
              <select name="scategory" id="scategory">
         		 <option value="">카테고리</option>
        		  <option value="가전제품">가전제품</option>
        		  <option value="전자">전자</option>
     		     <option value="식료품">식료품</option>
    		      <option value="반려동물">반려동물</option>
       			   <option value="중고차">중고차</option>
 		         <option value="유아/장난감">유아/장난감</option>
       			   <option value="레저/여행">레저/여행</option>
     		     <option value="기타">기타</option>
  			 </select>
           </div>
         
         <div id="c" style="float:left;">
            상품설명
         </div>
         <textarea cols="50" rows="8" id="cx"></textarea>
         
         <div id="m" style="float:left;"> 
            상품이미지
         
         </div>
         
         <div id="mx">
            
         </div>
         <button id="fu">
            파일업로드
         </button>
         
         <div id="m2" style="float:left;"> 
            상품이미지
         
         </div>
         
         <div id="mx2">
   
         </div>
         
         <button id="fu2">
            파일업로드
         </button>      
         
         <div id="p">
            전화번호
            <input type="text" id="px"/>
         </div>
         
         <div id="v">
            가격
            <input type="text" id="vx"/>
         </div>
         
         <div id="e" style="float:left;">
            거래위치
            
         </div>
         <textarea cols="50" rows="8" id="ex"></textarea>
         

         <div>
            <input type="text" style="float:left;" id="a"/>
         </div>
         <button id="s">
            찾기
         </button> 
         
         <button id="r">
            등록하기
         </button>         
         
   
  
    <div class="container">
        <a href="#" id="top">TOP</a>
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
</table>
  </footer>











<!-- <form action="upload" method="post" id="uploadForm" enctype="multipart/form-data"> -->
 











  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/resources/js/clean-blog.min.js"></script>

</body>

</html>