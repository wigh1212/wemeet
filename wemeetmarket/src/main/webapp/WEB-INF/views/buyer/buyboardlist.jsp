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

<body>

 
  <!-- Navigation -->
  <%@include file="/resources/main/header1.jsp"%>
 
  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/post-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-heading">
            <h1>Man must explore, and this is exploration at its greatest</h1>
            <h2 class="subheading">Problems look mighty small from 150 miles up</h2>
            <span class="meta">Posted by
              <a href="#">Start Bootstrap</a>
              on August 24, 2019</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Post Content -->
  <article>
    <div class="container">
   
   <div class="container">
    <form id="boardForm" name="boardForm" method="post">
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                 
                    <th width=10%;>작성자</th>
                    <th width=70%;>제목</th>
                    <th width=20%;>날짜</th>
            
                </tr>
            </thead>
            <tbody>
                <tr>
                        <td>ㅎㅇ</td>
                        <td>ㅎㅇ</td>
                        <td>ㅎㅇ</td>
                        
                    </tr>
            </tbody>
        </table>
        
        <div>            
            <a href='#' onClick='fn_write()' class="btn btn-success">글쓰기</a>            
        </div>
    </form>
</div>
   
   
   
   
   
   
    </div>
  </article>

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

	
  <script>
//글쓰기
function fn_write(){
    
    var form = document.getElementById("boardForm");
    
    form.action = "<c:url value='/board/writeForm.do'/>";
    form.submit();
    
}
 
//글조회
function fn_view(code){
    
    var form = document.getElementById("boardForm");
    var url = "<c:url value='/board/viewContent.do'/>";
    url = url + "?code=" + code;
    
    form.action = url;    
    form.submit(); 
}
</script>
  	

</body>

</html>
