<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
     <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>


</head>
<script>
	$(document).ready(function(){
		var address=$("#saddress").val();
		  $("#imgInput1").on('change', function(){
       	  	 readURL1(this);
    	  });
		  
		  $("#imgInput2").on('change', function(){
	       	  	 readURL2(this);
	      });
			  
		  if(address!=null){
		  kakaomap();
		  }
  	});
  	
 	function readURL1(input) {
   	   if (input.files && input.files[0]) {
   	      var reader = new FileReader();
   	      reader.onload = function (e) {
   	         $('#image_section1').attr('src', e.target.result);
   		      }
    	     reader.readAsDataURL(input.files[0]);
      	}
   	   else{
   		   alert("이미지 파일을 올려주세요");
   		   $("#imgInput1").val()=null;
   	   }
   	   
 	}
 

 	function readURL2(input) {
   	   if (input.files && input.files[0]) {
   	      var reader = new FileReader();
   	      reader.onload = function (e) {
   	         $('#image_section2').attr('src', e.target.result);
   		      }
    	     reader.readAsDataURL(input.files[0]);
      	}
   		else{
		   alert("이미지 파일을 올려주세요");
		   $("#imgInput2").val()=null;
	   }
 	}
	
	


</script>


<style>
#sname{
  width:85%;
}
#scontent{
 width:100%;
  resize: none; 
 
}
 #imagebox{
	
	width: 800px;
	height:600px;
	 border:1px solid black;
}
#image_section1,#image_section2{
	
	position:relative;
	width: 800px;
	height:600px;
	
	
}
#tname{
 width:100%;
}


#sphone,#smoney,#saddress{
width:100%;
}
</style>

<body>
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
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
  <header class="masthead" style="background-image: url('/resources/img/about-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>About Me</h1>
            <span class="subheading">This is what I do.</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <div class="container">
  	<input name="mid" type="hidden" value=${member.mid }/>
    <div id="tname">판매글 제목  </div> <input id="sname" name="sname"> 
 	
	<select name="ccategory" id="ccategory">
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
 	
 	<p></p>
 	<div id="tname"> 상품 설명 </div>
 	 <textarea id="scontent" name="scontent" rows="8"></textarea>
 	
 	 <p></p>  
 	 <div id="tname"> 썸네일 <br>
 	  <input type='file' name="sthumb1" id="imgInput1"/> </div>
 	 <div id="imagebox">
  	 <img id="image_section1" src="#" alt="your image"/>
	 </div> 	
 	 <p></p>  
 	 <div id="tname"> 상품 이미지  <br>
 	  <input type='file' name="simage1" id="imgInput2"/> </div>
 	 <div id="imagebox">
  	 <img id="image_section2" src="#" alt="your image"/>
	 </div> 	
	 <p></p>
	 <div id="tname"> 연락가능한 전화번호  </div>
 	 <input id="sphone" name="sphone" />
 	 <p></p>
 	 <div id="tname"> 판매 가격 </div>
 	 <input id="smoney" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="smoney" />
 	 <p></p>
 	 <div id="tname"> 거래 위치 <button type="button" onclick="execPostCode()">찾기</button> </div>
 	  <input id="saddress" name="saddress" readonly />
 	 	 	   <!-- kakao map -->
               <em class="link"> <a href="javascript:void(0);" class="mapApi" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum')">
                  
<!--                   onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=900, height=600')"> -->
               </a></em>
               <div id="map" style="width: 100%; height: 500px;"></div>
 	 
  </div>
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











<!-- <form action="upload" method="post" id="uploadForm" enctype="multipart/form-data"> -->
 











  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/resources/js/clean-blog.min.js"></script>
  
  
  
  <!-- kakaomap  -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6b2fc6d94ec9c5613e598349717d630e&libraries=services"></script>
  <script>
    //주소
     var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
         mapOption = {
          center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표33.450701            126.570667
          level: 3 // 지도의 확대 레벨
         };  
	
     // 지도를 생성합니다    
     var map = new kakao.maps.Map(mapContainer, mapOption); 
     // 주소-좌표 변환 객체를 생성합니다
     var geocoder = new kakao.maps.services.Geocoder();
     // 주소로 좌표를 검색합니다
     geocoder.addressSearch(${sellboard.saddress}, function(result, status) {
         // 정상적으로 검색이 완료됐으면 
          if (status === kakao.maps.services.Status.OK) {
             var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
       // 결과값으로 받은 위치를 마커로 표시합니다
       var marker = new kakao.maps.Marker({
           map: map,
           position: coords
       });

       // 인포윈도우로 장소에 대한 설명을 표시.
       var infowindow = new kakao.maps.InfoWindow({
          //업체명 받아오기'
           content: '<div style="width:150px;text-align:center;padding:6px 0; font-style:normal;">거래 위치</div>'
       });
       infowindow.open(map, marker);
       // 지도의 중심을 결과값으로 받은 위치로 이동.
       map.setCenter(coords);
   		} 
	});
  
     
</script>

  

</body>

</html>
