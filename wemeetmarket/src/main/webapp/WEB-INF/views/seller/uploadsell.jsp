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
<<<<<<< HEAD
   
<style>
   
   #t{
=======
     <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

>>>>>>> refs/remotes/origin/master

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
<<<<<<< HEAD
      <a class="navbar-brand" href="index.html">Start Bootstrap</a>
=======
     <a href="/"> <img src="/resources/img/logo.png" width="400px" height="100px" class="navbar-brand"/> </a>
>>>>>>> refs/remotes/origin/master
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
<<<<<<< HEAD
=======
  <div class="container">
  	<form action="upload">
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
 	 </form>
  </div>
>>>>>>> refs/remotes/origin/master

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
     geocoder.addressSearch('서울 용산구 신흥로7길 38 (용산동2가)', function(result, status) {
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
  
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
                  <script>

                  //우편번호 찾기 버튼 클릭시 발생 이벤트

                  function execPostCode() {
                     new daum.Postcode({
                        oncomplete: function(data) {
                           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                           var extraRoadAddr = ''; // 도로명 조합형 주소 변수
                           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                              extraRoadAddr += data.bname;
                           }
                           // 건물명이 있고, 공동주택일 경우 추가한다.
                           if(data.buildingName !== '' && data.apartment === 'Y'){
                              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                           }
                           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                           if(extraRoadAddr !== ''){
                              extraRoadAddr = ' (' + extraRoadAddr + ')';
                           }

                           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                           if(fullRoadAddr !== ''){
                              fullRoadAddr += extraRoadAddr;
                           }
                           // 우편번호와 주소 정보를 해당 필드에 넣는다.
                           console.log(data.zonecode);
                           console.log(fullRoadAddr);
                           /* var a = console.log(data.zonecode);
                           var b = console.log(fullRoadAddr);
                           if(a == null || b = null){
                              alert("주소를 확인하세요.");
                              return false;
                           } */
                           $("[name=oaddress]").val(data.zonecode);
                           $("[name=address]").val(fullRoadAddr);
                       
                           document.getElementById('saddress').value = fullRoadAddr;
                        }
                     }).open();
                  }

                  </script> 
  
  
</body>

</html>