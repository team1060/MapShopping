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
        .line {
            height: 0px;
            background-color: black;
        }

        hr {
            margin-top: 0;
        }

        .text-name {
            font-size: 20px;
            text-align: center;
        }

        .box2 {
            width: 100%;
            height: 100px;
            background-color: antiquewhite;
        }
        .text-check {
            font-size: 1.5em;
            text-align: center;
        }
        .check-box {
            width: 20px;
            height: 20px;
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
    

    <div class="container">
        <div class="d-flex justify-content-center">

            <div class="col-sm-10">
                <!-- 회원가입 폼 -->
                <div class="text-center">
                    <h2 class="mb-5">회원가입</h2>
                </div>
                <h4 class="mt-3">필수정보</h4>
                <hr class="line mb-5">

                <!-- 회원가입 폼 -->

                <form method="post">
                    <!-- 이름 -->
                    <div class="form-group row mb-4">
                        <label for="name" class="col-sm-2 control-label text-center text-name">이름</label>
                        <div class="col-sm-10">
                            <input type="text" name="name"
                                class="form-control border-bottom-0 border-right-0 border-left-0 border-top-0" id="name"
                                placeholder="" required>
                            <hr class="line">
                        </div>
                    </div>
                    <!-- 전화번호 -->
                    <div class="form-group row mb-4">
                        <label for="tel" class="col-sm-2 control-label text-center text-name">전화번호</label>
                        <div class="col-sm-10">
                            <input type="tel" name="tel"
                                class="form-control border-bottom-0 border-right-0 border-left-0 border-top-0"
                                placeholder="- 빼고 입력해주세요" id="tel" required>
                            <hr class="line">
                        </div>
                    </div>
                    <!-- 주소 -->
                    <div class="form-group row mb-4">
                        <label for="addr" class="col-sm-2 control-label text-center text-name">주소</label>
                        <div class="col-sm-8">
                            <input type="addr" name="addr"
                                class="col-sm-8 form-control border-bottom-0 border-right-0 border-left-0 border-top-0"
                                placeholder="" id="addr" required>

                            <hr class="line">
                        </div>
                        <button type="button" class="col-sm-2 btn btn-warning float-right">주소</button>
                    </div>

                    <!-- 아이디 -->
                    <div class="form-group row mb-4">
                        <label for="id" class="col-sm-2 control-label text-center text-name">아이디</label>
                        <div class="col-sm-10">
                            <input type="id" name="id"
                                class="form-control border-bottom-0 border-right-0 border-left-0 border-top-0"
                                placeholder="6 ~ 12 글자의 영문 + 숫자 조합으로 입력 가능" id="id" required>
                            <hr class="line">
                        </div>
                    </div>
                    <!-- 비밀번호 -->
                    <div class="form-group row mb-4">
                        <label for="pw" class="col-sm-2 control-label text-center text-name">비밀번호</label>
                        <div class="col-sm-10">
                            <input type="password" name="pw"
                                class="form-control border-bottom-0 border-right-0 border-left-0 border-top-0"
                                placeholder="영문, 숫자, 특수문자 3가지 종류 이상 조합 10 ~ 15자로 사용 가능" id="pw" required>
                            <hr class="line">
                        </div>
                    </div>

                    <!-- 비밀번호 확인-->
                    <div class="form-group row mb-4">
                        <label for="pw" class="col-sm-2 control-label text-center text-name">비밀번호 확인</label>
                        <div class="col-sm-10">
                            <input type="password" name="pwch"
                                class="form-control border-bottom-0 border-right-0 border-left-0 border-top-0"
                                placeholder="영문, 숫자, 특수문자 3가지 종류 이상 조합 10 ~ 15자로 사용 가능" id="pw" required>
                            <hr class="line">
                        </div>
                    </div>

                    <!-- 이메일 -->
                    <div class="form-group row mb-5">
                        <label for="email" class="col-sm-2 control-label text-center text-name">이메일</label>
                        <div class="col-sm-8">
                            <input type="email" name="email"
                                class="col-sm-8 form-control border-bottom-0 border-right-0 border-left-0 border-top-0"
                                placeholder="" id="email" required>

                            <hr class="line">
                        </div>
                        <button type="button" class="col-sm-2 btn btn-warning float-right">인증</button>
                    </div>

                    <button type="submit" class="btn btn-lg btn-primary btn-block mb-5">가입완료</button>
                </form>

                <!-- 필수정보 -->
                <!-- <h4 class="mt-3">약관동의</h4>
                <hr class="line mb-5">
                <div class="rounded box2">
                    <div class="text-center mt-3">
                    <input type="checkbox" id="defaultCheck" name="example2" class="check-box">
                    <label for="defaultCheck" class="text-check">전체선택</label>
                </div>
                </div> -->
            </div>
        </div>
    </div>
    <div class="jumbotron mt-5">
        <h1>푸터입니다</h1>
        <p>Bootstrap is the most popular HTML, CSS...</p>
      </div>

</body>

</html>