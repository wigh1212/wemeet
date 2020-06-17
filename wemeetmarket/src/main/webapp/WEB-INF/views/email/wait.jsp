<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>이메일발송완료</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

</head>
<style>
  .jumbotron {
    width: 800px;
    text-align: center;
    -webkit-box-shadow: 0px 3px 18px -8px rgba(0, 0, 0, 0.48);
    -moz-box-shadow: 0px 3px 18px -8px rgba(0, 0, 0, 0.48);
    box-shadow: 0px 3px 18px -8px rgba(0, 0, 0, 0.48);
    background-color: white;
    margin-top: 100px;
    border: red 1px solid;
    border-radius: 10px;
    padding: 20px 0;
  }

  body {
    background-color: #f8f9fa;
  }

  .display-4 {
    margin-bottom: 40px;
  }
</style>

<body>
  <div class="d-flex justify-content-center">
    <div class="jumbotron">
      <h1 class="display-4">인증메일 발송완료</h1>
      <p class="lead">마지막 단계로 이메일 인증을 보냈습니다.</p>
      <p class="lead">메일을 확인해 주세요!</p>
      <hr class="my-4">
      <a class="btn btn-primary btn-lg" href="/" role="button">메인으로</a>
    </div>
  </div>
</body>

</html>