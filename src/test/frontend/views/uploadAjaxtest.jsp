<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>

    
</script>
</head>
<body>
	<form enctype="multipart/form-data" method="post" name="frm">
        <input type="file" name="files" multiple>
		<button id="uploadBtn" type="button">파일 업로드</button>
    </form>
    <div class="upload-wrapper">
		<div class="uploadResult">
			<ul></ul>
		</div>
		<div class="thumbResult">
			<ul>
			</ul>
		</div>
	</div>
</body>
</html>