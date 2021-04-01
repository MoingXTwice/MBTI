<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정</title>

<script type="text/javascript">
$(function(){
	//아래서 onclick 처리한 걸 위로 올려서 처리
	//이벤트 처리
	//취소버튼을 클릭했을 때 이전 페이지(list)로 돌아간다
	$("#cancelBtn").click(function(){
		//alert("취소"); --> 처리가 잘 되면 주석처리 하자
		//이전 페이지 이동
		history.back();
	});
	
	
	
	
	
});
</script>
</head>
<body>
<div class="container">
<form action="update.do" method="post" id="updateForm">
	<!-- 번호 -->
<!-- 	<div class="form-group"> -->
<!-- 		<label for="no"></label> -->
<%-- 		<input name="no" class="form-control" id="no" readonly="readonly" type="hidden" value="${vo.no}"/> --%>
<!-- 	</div> -->
	
	<!-- 제목 -->
	<div class="form-group">
		<label for="id">아이디</label>
		<input name="id" class="form-control"  id="id" value="${vo.id}"/>
	</div>
	<div class="form-group">
		<label for="pw">비밀번호</label>
		<input name="pw" class="form-control"  type="password" id="pw" placeholder="비밀번호 입력 - 4자 이상" maxlength="20" value="${vo.pw}"/>
	</div>
	<div class="form-group">
		<label for="pw">비밀번호 확인</label>
		<input name="pw2" class="form-control"  type="password" id="pw2" placeholder="비밀번호 입력 - 4자 이상" maxlength="20" value="${vo.pw}"/>
	</div>

	<div class="form-group">
		<label for="name">이름</label>
		<input name="name" class="form-control" id="name" value="${vo.name}"/>
	</div>
	<div class="form-group">
		<label for="gender">성별</label>
		<input name="gender" class="form-control" id="gender" value="${vo.gender}"/>
	</div>
	<div class="form-group">
		<label for="birth">생년월일</label>
		<input name="birth" class="form-control" id="birth" value="${vo.birth}"/>
	</div>
	<div class="form-group">
		<label for="tel">연락처</label>
		<input name="tel" class="form-control" id="tel" value="${vo.tel}"/>
	</div>
	<div class="form-group">
		<label for="email">이메일</label>
		<input name="email" class="form-control" id="email" value="${vo.email}"/>
	</div>
	
	<!-- 버튼 -->
	<!-- 게시글 등록 -->
	<button class="button">변경</button>
	
	<!-- 새로 입력 -->
	<!-- type : 해당 버튼의 타입을 지정(원래 상태로 돌려준다). 새로 입력이니까 원래 입력한 데이터를 지운다 -->
	<button type="reset" class="button">다시 입력</button>
	
	<!-- 취소 : 이전 페이지로 이동 -->
	<!-- onclick="history.back()"은 위에 function(자바 스크립트)에서 작성 -->
	<button type="button" id="cancelBtn" class="button">취소</button>
</form>
</div>

</body>
</html>