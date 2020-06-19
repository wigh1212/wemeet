<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
  
  <style>
  	 #writer, #regdate{
  	 width:180px;
  	 }
     #f1{
     border:1px solid #222847;
     width:300px;
     margin-left:50px;
     height:600px;
     margin-top:50px;
     }
     
     #f2{
     border:1px solid #222847;
     width:1070px;
     margin-left:400px;
     height:160px;
     }
     #c{
     width:500px;
     }
     .btn{
     margin-left:1270px;
    
     
     }
     td{
     height:150px;
     }
     #p{
     width:200px;
     }
     #n{
     width:100px;
     }
     #ff{
     margin-top:50px;
     }
     #s{
     margin-top:10px;
     }
     #t{
     margin-left:1170px;
     margin-top:100px;
     }
  
  </style>
</head>

<body>

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
  <header class="masthead" style="background-image: url('/resources/img/post-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-heading" style="text-align: center;">
            <h1>Sell</h1>
        
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Post Content -->
  <article>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          

       
        </div>
      </div>
    </div>
  </article>

  <hr>
<a href="/seller/uploadsell">글작성</a>
  <!-- Footer -->
  <footer>
    
     <div>
        
           <div class="table table-striped table-bordered table-hover" id="f1" style="float:left";>
            <div id="ff">
               <div id="s">
                  <div style="text-align: center;">디지털/가전</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">가구/인테리어</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">유아용품</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">생활/가공식품</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">스포츠/레저</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">여성잡화</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">여성의류</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">남성잡화/패션</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">게임/취미</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">뷰티/미용</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">반려동물용품</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">도서/티켓/음반</div>
               </div>
               
               <div id="s">
                  <div style="text-align: center;">삽니다</div>
               </div>
            </div>
      </div>
     </div>
        
     
     <div>
           
           <table class="table table-striped table-bordered table-hover"  id="f2">
               <thead>
                  <tr>
                     <th id=n>번호</th>
                     <th id=p>썸네일</th>
                     <th id=c style="text-align: center;">제목</th>
                     <th id=writer>작성자</th>
                     <th id=regdate>작성일</th>                  
                  </tr>
               </thead>
               
               <c:forEach var ="sellboardlist" items="${sellboardlist }">
               		<tr>
               			<th><c:out value="${sellboardlist.sno }"/></th>
               			<th><img src="/resources/img/${sellboardlist.sthumb }" width=150px; height=100px;></th>
               			<th><a class='move' href='<c:out value="${sellboardlist.sno }"/>'><c:out value="${sellboardlist.sname }"/></a></th>
               			<th><c:out value="${sellboardlist.mid }"/></th>
               			<th><fmt:formatDate pattern="yyyy-MM-dd"
                                		 value="${sellboardlist.sregdate }"/></th>
               		</tr>
               </c:forEach>
            </table>
            
            <div class='pull-right'>
			<ul class="pagination">
				<c:if test="${pageMaker.prev }">
				<li class="paginate_button previous"><a
					href="${pageMaker.startPage -1}">Previous</a></li>
				</c:if>

				<c:forEach var="num" begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }">
					<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":"" }">
					<a href="${num}">${num}</a>
					</li>
				</c:forEach>

				<c:if test="${pageMaker.next }">
					<li class="paginate_button next"><a
					href="${pageMaker.endPage +1 }">Next</a></li>
				</c:if>
			</ul>
		</div>
        </div>
        <form id='actionForm' action="/seller/sellboardlist" method='get'>
			<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
			<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
			<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type }"/>'>
			<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword }"/>'>
		</form>
		<a id="boardlistWriteBttn" class="btn btn-primary"
			href="/seller/uploadsell" role="button">글작성</a>
  		<div class='row'>
			<div class="col-lg-12">
				
				<form id='searchForm' action="/seller/sellboardlist" method='get'>
                  <select name='type'>
                    <option value=""
                      <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
                      <option value="T"
                      <c:out value="${pageMaker.cri.type eq'T'?'selected':'' }"/>>제목</option>
                      <option value="C"
                      <c:out value="${pageMaker.cri.type eq'C'?'selected':'' }"/>>내용</option>
                      <option value="W"
                      <c:out value="${pageMaker.cri.type eq'W'?'selected':'' }"/>>작성자</option>
                      <option value="TC"
                      <c:out value="${pageMaker.cri.type eq'TC'?'selected':'' }"/>>제목 or 내용</option>
                      <option value="TW"
                      <c:out value="${pageMaker.cri.type eq'TW'?'selected':'' }"/>>제목 or 작성자</option>
                      <option value="TWC"
                      <c:out value="${pageMaker.cri.type eq'TWC'?'selected':'' }"/>>제목 or 작성자 or 내용 </option>
                    </select>
                       <input type='text' name='keyword'
                         value='<c:out value="${pageMaker.cri.keyword }"/>' />
                       <input type='hidden' name='pageNum'
                         value='<c:out value="${pageMaker.cri.pageNum }"/>' />
                       <input type="hidden" name='amount' 
                          value='<c:out value="${pageMaker.cri.amount }"/>' />
                       <button class='btn btn-default'>검색</button>
                  </form>
			</div>
		</div>
		

		<!-- <script src="/board/boardlist.js"></script> -->
	<script type="text/javascript">
 	$(document).ready(function(){

   		var actionForm = $("#actionForm");
   		
   		$(".paginate_button a").on("click", function(e){
   			
   			e.preventDefault();
   			
   			console.log('click');
   			
   			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
   			actionForm.submit();
   		});
   		
   		var searchForm = $("#searchForm");
   		
   		$("#searchForm button").on("click", function(e){
   			if(!searchForm.find("option:selected").val()){
       			alert("검색종류를 선택하세요.");
       			return false;
       		}
   			
   			if(!searchForm.find("input[name='keyword']").val()){
   				alert("키워드를 입력하세요");
   				return false;
   			}
   			searchForm.find("input[name='pageNum']").val("1");
   			e.preventDefault();
   			
   			searchForm.submit();
   		});
   		
   		$(".move").on("click", function(e){
   			
   			e.preventDefault();
   			actionForm.append("<input type='hidden' name='sno' value='"+
   		$(this).attr("href")+"'>");
   			actionForm.attr("action","/seller/get");
   			actionForm.submit();
   		});
 	});
 	
  </script>
  </footer>


  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/resources/js/clean-blog.min.js"></script>

</body>

</html>