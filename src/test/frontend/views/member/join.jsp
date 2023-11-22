<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.2/css/bootstrap.min.css"
        integrity="sha512-rt/SrQ4UNIaGfDyEXZtNcyWvQeOq0QLygHluFQcSjaGB04IxWhal71tKuzP6K8eYXYB6vJV4pHkXcmFGGQ1/0w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Document</title>
    <style>
        .box {
            width: 100%;
            height: 300px;
            background-color: #d6d6d6;

        }

        .text-underline {
            text-decoration: underline;
        }

        .couponWrap {

            background: url(./img/icons-coupon.png);
            background-repeat: no-repeat;
            background-position: center;
            text-align: center;
            padding: 65px;
        }

        .text-center {
            padding-top: 30px;
        }
        .button {
        	width: 60%
        }

    </style>
</head>

<body>
    <div class="container">
        <header>
            <div class="">
                <div class="pt-3 pb-3">
                    <ul class="list-unstyled d-flex mb-0 justify-content-end">
                        <li><a class="none-decoration font-xs text-muted" href="#">로그인</a></li>
                        <li class="ps-2"><a class="none-decoration font-xs text-muted" href="#">마이페이지</a></li>
                        <li class="ps-2"><a class="none-decoration font-xs text-muted" href="#">고객센터</a></li>
                    </ul>
                </div>
                <!-- 로고 / 검색창 -->
                <div class=" pb-1 d-flex justify-content-between">
                    <a class="navbar-brand pr-1" href="#"><img src="else/sampleLogo.png"></a>
                    <form>
                        <input class="form-control form-control-sm form-control border-gray rounded " type="text"
                            placeholder="Search">
                    </form>
                </div>
                <!-- 네비게이션 바 -->
                <nav class="navbar navbar-expand-sm bg-white navbar-white">
                    <div class="container-fluid p-0">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="#"><strong>홈</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#"><strong>브랜드</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#"><strong>랭킹</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#"><strong>추천</strong></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
    </div>

    <!-- 홈으로 가기 -->

    <div class="container">

        <div class="float-right">
            <i class="fas fa-home"></i> 홈 > 회원가입
        </div>
        <br>
        <div class="text-center">
            <h2 class="mb-4">회원가입</h2>
            <h3>쇼핑몰에 오신 것을 환영합니다!</h3>
        </div>

    </div>

    <!-- 회원가입 버튼 -->
    <div class="container">
        <div class="row mt-5 mb-5">
            <div class="col-sm-6 text-center border border-top-0 border-bottom-0 border-left-0">
                <h4 class="mb-3">일반 회원가입</h4>
                <h6 class="mb-3">할인 및 쿠폰 등 다양한 혜택을 받을 수 있습니다.</h6>
                <a href="/member/signup" type="button" class="btn btn-dark btn-lg mt-2">회원가입하기</a>
            </div>
            <div class="col-sm-6 text-center">
                <h4 class="mb-3">SNS 회원가입</h4>
                <h6 class="mb-3">자주 사용하는 SNS로 간편하게 가입할 수 있습니다.</h6>
                <div class="d-flex justify-content-center mt-4">
                    <a href="#"><img class="mr-3" src="./img/sns-naver.png" alt="네이버로 로그인하기"></a>
                    <a href="#"><img class="mr-3" src="./img/sns-katalk.png" alt="카카오톡으로 로그인하기"></a>
                    <a href="#"><img class="mr-3" src="./img/sns-facebook.png" alt="페이스북으로 로그인하기"></a>
                    <a href="#"><img class="mr-3" src="./img/sns-apple.png" alt="애플로 로그인하기"></a>
                </div>
            </div>
        </div>
    </div>
    

    <div class="container">
        <div class="rounded box">

            <h5 class="text-center">쇼핑몰 회원혜택</h5>

            <div class="row couponh justify-content-around">
                
                <div class="couponWrap col-sm-3">

                    <div class="text-left">
                        <h3>test</h3>
                        <p>7000원 할인 쿠폰</p>
                    </div>
                </div>

                <div class="couponWrap col-sm-3">
                    <div class="text-left">
                        <h3>test</h3>
                        <p>7000원 할인 쿠폰</p>
                    </div>
                </div>

                <div class="couponWrap col-sm-3">
                    <div class="text-left">
                        <h3>test</h3>
                        <p>7000원 할인 쿠폰</p>
                    </div>
                </div>
            </div>
            

            <!-- <a href="#">
                <h6 class="text-center mt-4 text-dark text-underline">자세히보기</h6>
            </a> -->

        </div>
    </div>

    <div class="jumbotron mt-5">
        <h1>푸터입니다</h1>
        <p>Bootstrap is the most popular HTML, CSS...</p>
      </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
        integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.2/js/bootstrap.bundle.min.js"
        integrity="sha512-igl8WEUuas9k5dtnhKqyyld6TzzRjvMqLC79jkgT3z02FvJyHAuUtyemm/P/jYSne1xwFI06ezQxEwweaiV7VA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>

</html>