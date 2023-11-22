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
        .form-group{
            width: 300px;
        }
    </style>
</head>
<body>
    <div class="container mt-5 d-flex justify-content-center align-items-center">
        <form action="submit_form.php" method="POST" class="attach">
            <div class="form-group">
                <label for="uuid">상품명</label>
                <input type="text" class="form-control" id="uuid" name="uuid" required>
            </div>
            <div class="form-group">
                <label for="origin">가격</label>
                <input type="text" class="form-control" id="origin" name="origin" required>
            </div>
            <div class="form-group">
                <label for="path">카테고리</label>
                <input type="text" class="form-control" id="path" name="path" required>
            </div>
            <div class="form-group">
                <label for="path">상세 설명</label>
                <input type="text" class="form-control" id="path" name="path" required>
            </div>
            <div class="form-group">
                <label for="image">이미지 파일:</label>
                <input type="file" class="form-control-file" id="image" name="image" accept="image/*" required>
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
    </div>
    
</body>
</html>