<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.2/css/bootstrap.min.css"
        integrity="sha512-rt/SrQ4UNIaGfDyEXZtNcyWvQeOq0QLygHluFQcSjaGB04IxWhal71tKuzP6K8eYXYB6vJV4pHkXcmFGGQ1/0w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Document</title>
</head>
<body>
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
<main>
    <div class="col-md-8 offset-md-2 col-xl-6 offset-xl-3">
        <div class="container">
            <div>
                <h2>고객 문의</h2>
            </div>
            <form id="customerQuestionForm" method="post"
                enctype="multipart/form-data">
                <!-- 제목 -->
                <div class="form-group row">
                    <div class="col-3 ">
                        <span class="text-danger">*</span>
                        <label for="title" class="col-form-label">제목</label>
                    </div>
                    <div class="col-9 ">
                        <input name="title" id="title" type="text" class="form-control"
                            placeholder="제목을 입력해 주세요.">
                    </div>
                </div>
                <!-- 작성자 -->
               
                <div class="form-group row">
                    <div class="col-3 ">
                        <span class="text-danger">*</span>
                        <label for="writer" class="col-form-label">작성자</label>
                    </div>
                    <div class="col-9 ">
                        <div class="invalid-feedback" id="nameFeedback">숫자, 특수문자를 제외한 이름을 입력해주세요.</div>
                        <input id="writer" name="writer" type="text" class="form-control">
                    </div>
                </div>
                <!-- 거주지 -->
                <div class="form-group row">
                    <div class="col-3 ">
                        <span class="text-danger">*</span>
                        거주지
                    </div>
                    <div class="col-9 ">
                        <div class="form-check form-check-inline">
                            <input id="abodeDomestic" name="abode" type="radio" class="form-check-input"
                                checked>
                            <label for="abodeDomestic" class="form-check-label">국내</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input id="abodeInternational" name="abode" type="radio" class="form-check-input">
                            <label for="abodeInternational" class="form-check-label">국외</label>
                        </div>
                    </div>
                </div>
                <!-- 휴대폰 번호 -->
                <div class="form-group row">
                    <div class="col-3 ">
                        <span class="text-danger">*</span>
                        <label for class="form-label">휴대폰</label>
                    </div>
                    <div class="col-9  input-group">
                        <select name="phone1" id="phone1" class="form-control">
                            <option selected value="">-</option>
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="016">016</option>
                            <option value="017">017</option>
                            <option value="018">018</option>
                            <option value="019">019</option>
                        </select>
                        ─
                        <input name="phone2" id="phone2" maxlength="4" type="text" class="form-control">
                        ─
                        <input name="phone3" id="phone3" maxlength="4" type="text" class="form-control">
                    </div>
                </div>
                <!-- 이메일 -->
                <div class="form-group row">
                    <div class="col-3 ">
                        <span class="text-danger">*</span>
                        <label for="email" class="form-label">이메일</label>
                    </div>
                    <div class="col-9  input-group">
                        <!-- <div id="emailFeedback"></div> -->
                        <input id="email" type="email" name="email" class="form-control" required>
                        <button class="btn btn-dark" type="button" id="sendEmailBtn">인증</button>
                        <button class="btn btn-dark" type="button" id="resendEmailBtn">재전송</button>
                    </div>
                </div>
                <!-- 이메일 인증번호 입력 -->
                <div class="form-group row">
                    <div class="col-3">
                        <span class="text-danger">*</span>
                        <label for="verifyEmailBtn" class="form-label">인증번호</label>
                    </div>
                    <div class="col-9 input-group">
                        <input type="text" name="verifyEmailBtn" id="verifyEmailBtn" class="form-control">
                        <button class="btn btn-dark" type="button">인증확인</button>
                    </div>
                </div>
                <!-- 문의유형 -->
                <div class="form-group row">
                    <div class="col-3 ">
                        <span class="text-danger">*</span>
                        <label for="questionSelect" class="form-label">문의유형</label>
                    </div>
                    <div class="col-9 ">
                        <select name="questionSelect" id="questionSelect" class="form-control">
                            <option value="선택하세요">직접 입력</option>
                            <option value="1">문의</option>
                            <option value="2">불만</option>
                            <option value="3">제안(건의) - 아이디어</option>
                            <option value="4">기타</option>
                        </select>
                    </div>
                </div>
                <!-- 내용 -->
                <div class="form-group row">
                    <div class="col-3 ">
                        <span class="text-danger">*</span>
                        <label for="content" class="form-label">내용</label>
                    </div>
                    <div class="col-9 ">
                        <input id="content" name="content" type="text" class="form-control">
                    </div>
                </div>
                <!-- 파일첨부 -->
                <div class="form-group row">
                    <div class="col-3 ">
                        <label for="files" class="form-label">파일첨부</label>
                    </div>
                    <div class="col-9 ">
                        <div class="input-group">
                            <input type="file" class="form-control" id="files" name="files" multiple>
                            <button class="btn btn-dark" type="button" id="files">파일찾기</button>
                        </div>
                        <span>- 최대 5개까지 첨부 가능합니다. (10MB)</span>
                    </div>
                </div>
                <!-- 약관동의 -->
                <div class="form-group row">
                    <div class="col-3 ">
                        <span class="text-danger">*</span>
                        약관동의
                    </div>
                    <div class="col-9 ">
                        <div class="form-check form-check-label">
                            <input name="privacyAgreement" id="privacyAgreement" type="checkbox"
                                class="form-check-input">
                            <label for="privacyAgreement" class="form-check-label">고객문의 회신을 위한 개인정보 수집에 동의
                                합니다.</label>
                        </div>
                    </div>
                </div>
                <!-- submit 버튼 -->
                   <div class="d-grid gap-2">
                       <button type="submit" id="submitBtn" class="btn btn-dark btn-lg btn-block">문의하기</button>
                   </div>
               </form>
           </div>
       </div>
   </main>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
       integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
       crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.2/js/bootstrap.bundle.min.js"
       integrity="sha512-igl8WEUuas9k5dtnhKqyyld6TzzRjvMqLC79jkgT3z02FvJyHAuUtyemm/P/jYSne1xwFI06ezQxEwweaiV7VA=="
       crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
	document.getElementById('customerQuestionForm').addEventListener('submit', function(event) {
	    // 폼 제출을 막습니다.
	    event.preventDefault();
	
	    // 여기서 알림창 또는 모달 창을 띄우세요.
	    alert('폼이 성공적으로 제출되었습니다.');
	
	    // 다른 화면으로 이동하려면 아래와 같이 페이지 경로를 설정하세요.
	    window.location.href = '/';  // 적절한 경로로 변경하세요.
	});
</script>
</body>
<script>

</script>

</html>