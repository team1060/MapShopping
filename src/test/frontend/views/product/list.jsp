<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.2/css/bootstrap.min.css"
        integrity="sha512-rt/SrQ4UNIaGfDyEXZtNcyWvQeOq0QLygHluFQcSjaGB04IxWhal71tKuzP6K8eYXYB6vJV4pHkXcmFGGQ1/0w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Document</title>
    <style>
        @charset "utf-8";

        html,body {
            height:100%;
        }

        table {
            border-collapse:collapse;border-spacing:0
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        ul,li{
            list-style: none;
        }

        .productmainlist{
            width: 300px;
        }

        a{
            list-style: none;
            color: black;
        }
        a:hover{
            color: black;
        }
        
    </style>
</head>
<body>
    
    
     <!-- 네비게이션 바 -->
     <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">옷 쇼핑몰</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">홈 <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">제품</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">장바구니</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- 메인 컨텐츠 -->
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-12 mb-3 d-flex justify-content-center justify-content-lg-end">
                <div class="input-group search-bar" style="width: 300px;">
                    <input type="text" class="form-control" placeholder="제품을 검색하세요" aria-label="제품 검색" aria-describedby="button-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="button" id="button-addon2">검색</button>
                    </div>
                </div>
            </div>
            <div class="productlist col-md-12">
                
                <ul class="row row-cols-md-3 d-flex justify-content-center justify-content-around align-items-center text-center" style="list-style: none;">
                    
                    <li class="mb-3"><a href="#"><img src="../../image/1/1.jpg" class="img-fluid mb-3" alt="사진 1"><p class="pname">test</p></a></li>
                    <li class="mb-3"><a href="#"><img src="../../image/2/1.jpg" class="img-fluid mb-3" alt="사진 1"><p class="pname">test</p></a></li>
                    <li class="mb-3"><a href="#"><img src="../../image/3/1.jpg" class="img-fluid mb-3" alt="사진 1"><p class="pname">test</p></a></li>
                    <li class="mb-3"><a href="#"><img src="../../image/4/1.jpg" class="img-fluid mb-3" alt="사진 1"><p class="pname">test</p></a></li>
                    <li class="mb-3"><a href="#"><img src="../../image/5/1.jpg" class="img-fluid mb-3" alt="사진 1"><p class="pname">test</p></a></li>
                    <li class="mb-3"><a href="#"><img src="../../image/6/1.jpg" class="img-fluid mb-3" alt="사진 1"><p class="pname">test</p></a></li>
                    <li class="mb-3"><a href="#"><img src="../../image/7/1.jpg" class="img-fluid mb-3" alt="사진 1"><p class="pname">test</p></a></li>
                    <li class="mb-3"><a href="#"><img src="../../image/8/1.jpg" class="img-fluid mb-3" alt="사진 1"><p class="pname">test</p></a></li>
                    <li class="mb-3"><a href="#"><img src="../../image/9/1.jpg" class="img-fluid mb-3" alt="사진 1"><p class="pname">test</p></a></li>
                    
                    
                </ul>
            </div>
        </div>
    </div>
    
</body>
</html>