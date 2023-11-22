<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        .text_id {
            width: 100%;
            padding: 0 15px;
            height: 50px;
            border-radius: 5px;
            border: 1px solid #ececec;
            background-color: #f6f6f6;
            outline: none;
            font-size: 14px;
        }
        .input_pw {
            margin-top: 1em;
        }
        .loginbtn {
            width: 100%;
        }
    </style>
</head>
<h1>test, 나중에 삭제</h1>
<a href="/member/join">회원가입</a>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    로그인
</button>
<a href="logout">로그아웃</a>
${member}
	
	<form method="post">
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title text-center">쇼핑하자!</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div class="mb-2">
                <div class="input_id">
                    <input type="text" placeholder="아이디" name="id" required="id" label="아이디" class="text_id">
                </div>
                <div class="input_pw">
                    <input type="password" placeholder="비밀번호" name="password" required="password" label="비밀번호"
                        class="text_id">
                </div>
            </div>

                <div class="option d-flex">
                    <span class="ck-wrap">
                        <input type="checkbox" class="id_check" name="id_check" id="id_check">
                        <label for="id_check">아이디 저장</label></span>

                        <span class="findBy ml-auto">
                            <a href="#">아이디 찾기</a>
                            <a href="#">비밀번호 찾기</a>
                        </span>
                </div>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="submit" class="btn btn-info loginbtn">로그인</button>
            </div>
            <div class="join row justify-content-center">
                <p>계정이 없으신가요? </p>
                <span class="findBy">
                    <a href="/member/signup">회원가입</a>
                </span>

            </div>
        </div>
    </div>
</div>
</form>

<body>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
        integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.2/js/bootstrap.bundle.min.js"
        integrity="sha512-igl8WEUuas9k5dtnhKqyyld6TzzRjvMqLC79jkgT3z02FvJyHAuUtyemm/P/jYSne1xwFI06ezQxEwweaiV7VA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>

</html>