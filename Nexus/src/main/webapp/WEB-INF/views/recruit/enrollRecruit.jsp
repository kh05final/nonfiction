<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/image/logo3.png" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/template.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/personalPr.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,1,200" />

<!-- ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<!-- jQuery 라이브러리 -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>



<script src="${pageContext.request.contextPath}/resources/js/enrollRecruit.js"></script>


 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <link rel="stylesheet" href="/resources/demos/style.css">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
 <!-- summernote -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/summernote-ko-KR.js"></script>

<style>
#body{
	height: 2000px;
	width: 90%;
	margin:auto;
	/* border:1px solid black; */
	margin-top:20px;
	margin-bottom:50px;
}
#body1{
	height:45%;
	width:90%;
	margin:auto;
	border:1px solid black;
}
#body2{
	height:55%;
	width:90%;
	margin:auto;
	border:1px solid black;
}
#body1Ment{
	margin-top:25px;
	color:black;
}

#toolbar-container{
	width:90%;
}
#editor-container{
	width:90%;
	height:70%;
}

button {
  background-color: #eee;
  border: 1px solid #ddd;  
  font-size: 16px;
  height: 30px;
  margin: 0 10px 20px 0;
}
#h4Letter{
	float:left;
}
.col-md-4{
	width:100%;
}
.col-md-6{
	width:100%;
}
.form-control{
	height: 60px;
}
label{
	font-size: 16px;
}
#stackInputCard::placeholder {
  color: #a4aab1;
}
#buttonDiv>button{
	margin:auto;
	width: 170px;
	height: 60px;
}
.note-editor>button{
	border-color: gray !important;
	width: 200px;
}
.dropdown-item{
	text-align: center;
	color: #697a8d;
}
.dropdown-toggle::after{
	border-color:#d9dee3 !important;
}
select {
    /* appearance:none;
    background:url('../img/icon_select_arrow.png') no-repeat right 1px center; */
}
 multi-input input::-webkit-calendar-picker-indicator {
      display: inline;
    }
    /* NB use of pointer-events to only allow events from the × icon */
    multi-input div.item::after {
      color: black;
      content: '×';
      cursor: pointer;
      font-size: 18px;
      pointer-events: auto;
      position: absolute;
      right: 5px;
      top: -1px;
      float: right;
    }
    .note-modal-content{
    	height: 400px;
    }
.card-header{
	padding: 1.5rem 0rem 1rem 0rem; 
}
#why{
	margin-bottom: 3px !important;
}
#selectBoxes, #contentBox{
	width: 88%;
	height: 26rem;
}
#div1{
	width:50%;
	height:100%;
	float: left;
}
#div2{
	width:50%;
	height:100%;
	float: right;
}
#div1-1, #div2-1, #div1-2, #div1-3,#div1-4, #div2-2, #div2-3, #div2-4, #titleDiv, .container{
	padding-top: 1rem;
	padding-left: 1rem;
}

#selectBoxes input, #selectBoxes select{
	width: 95%;
	height: 3rem;
}
#titleInput{
	width: 97.5%;
	height: 3rem;
}
/* 달력 css  */
.ui-widget-header { border: 0px solid #dddddd; background: #fff; } 
 .ui-datepicker-calendar>thead>tr>th { font-size: 14px !important; } 
 .ui-datepicker .ui-datepicker-header { position: relative; padding: 10px 0; } 
 .ui-state-default,
 .ui-widget-content .ui-state-default,
 .ui-widget-header .ui-state-default,
 .ui-button,
 html .ui-button.ui-state-disabled:hover,
 html .ui-button.ui-state-disabled:active { border: 0px solid #c5c5c5; background-color: transparent; font-weight: normal; color: #454545; text-align: center; } 
 .ui-datepicker .ui-datepicker-title { margin: 0 0em; line-height: 16px; text-align: center; font-size: 14px; padding: 0px; font-weight: bold; } 
 .ui-datepicker { display: none; background-color: #fff; border-radius: 4px; margin-top: 10px; margin-left: 0px; margin-right: 0px; padding: 20px; padding-bottom: 10px; width: 300px; box-shadow: 10px 10px 40px rgba(0, 0, 0, 0.1); } 
 .ui-widget.ui-widget-content { border: 1px solid #eee; } 
 #datepicker:focus>.ui-datepicker { display: block; } 
 .ui-datepicker-prev,
 .ui-datepicker-next { cursor: pointer; } 
 .ui-datepicker-next { float: right; } 
 .ui-state-disabled { cursor: auto; color: hsla(0, 0%, 80%, 1); } 
 .ui-datepicker-title { text-align: center; padding: 10px; font-weight: 100; font-size: 20px; } 
 .ui-datepicker-calendar { width: 100%; } 
 .ui-datepicker-calendar>thead>tr>th { padding: 5px; font-size: 20px; font-weight: 400; } 
 .ui-datepicker-calendar>tbody>tr>td>a { color: #000; font-size: 12px !important; font-weight: bold !important; text-decoration: none;}
 .ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover { cursor: auto; background-color: #fff; } 
 .ui-datepicker-calendar>tbody>tr>td { border-radius: 100%; width: 44px; height: 30px; cursor: pointer; padding: 5px; font-weight: 100; text-align: center; font-size: 12px; } 
 .ui-datepicker-calendar>tbody>tr>td:hover { background-color: transparent; opacity: 0.6; } 
 .ui-state-hover,
 .ui-widget-content .ui-state-hover,
 .ui-widget-header .ui-state-hover,
 .ui-state-focus,
 .ui-widget-content .ui-state-focus,
 .ui-widget-header .ui-state-focus,
 .ui-button:hover,
 .ui-button:focus { border: 0px solid #cccccc; background-color: transparent; font-weight: normal; color: #2b2b2b; } 
 .ui-widget-header .ui-icon { background-image: url('./././resources/image/btns.png'); } 
 .ui-icon-circle-triangle-e { background-position: -20px 0px; background-size: 36px; } 
 .ui-icon-circle-triangle-w { background-position: -0px -0px; background-size: 36px; } 
 .ui-datepicker-calendar>tbody>tr>td:first-child a { color: red !important; } 
 .ui-datepicker-calendar>tbody>tr>td:last-child a { color: #0099ff !important; } 
 .ui-datepicker-calendar>thead>tr>th:first-child { color: red !important; } 
 .ui-datepicker-calendar>thead>tr>th:last-child { color: #0099ff !important; } 
 .ui-state-highlight,
 .ui-widget-content .ui-state-highlight,
 .ui-widget-header .ui-state-highlight { border: 0px; background: #f1f1f1; border-radius: 50%; padding-top: 10px; padding-bottom: 10px; } 
 .inp { padding: 10px 10px; background-color: #f1f1f1; border-radius: 4px; border: 0px; } 
 .inp:focus { outline: none; background-color: #eee; } 
 input::placeholder, select::placeholder{
 	text-align: center;
 	color: gray;
 }
 #titleInput::placeholder{
 	text-align: left !important;
 }
 #div2-4{
 	overflow: auto !important;
 }
 multi-input {
  display: inline-block;
  overflow: auto;
  width: 50rem;
   border: 1px solid black;
}
#div2-4 input{
	width: 1rem;
	height: 1rem;
}
#fieldBox input{
	margin-right: 0.2rem;
}
.note-editable{
	height: 38rem;
}
</style>
</head>
<script>
$.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
});
  $( function() {
    $( ".datepicker" ).datepicker();
  } );
  </script>
<body>

<div class="container-xxl flex-grow-1"> 
<script>
		
	
		// active 클래스 를 repository로 옮기기
		$(".active").removeClass("active");
		$("#rcccccc").addClass("active");
		// $("#total1").addClass("active");
	
	
	
	 </script>
<form action="insertRecruit" method="post" style="height: 100%;">
<div id="body" style="margin: 0px; margin-top: 30px; width: 100%">
		<div class="col-md-6" style="width:150rem; height:100%;  max-width: 100%; margin: auto;">
                  <div class="card mb-4" style="width: 100%; margin: auto; height: 130rem; overflow: auto;">
                  <div id="headerrr" style="width: 90%; padding-top: 4rem; margin: auto; margin-top:0px; margin-bottom:0px; display: inline-block;">
                    <h4 class="card-header" style="border-bottom: 3px solid #f2f2f2; " >
                    <!--  <span  style="font-size: 2.3rem; color: skyblue; margin-top: 2rem; display: inline-block;" class="material-symbols-outlined">counter_1</span> &nbsp; -->
                   <span id="why" ><b >프로젝트 기본 정보를 입력해주세요.</b></span> </h4>
                  </div>
                  
                  <div id="selectBoxes" style="margin: auto; margin-top: 0px; margin-bottom: 0px;">
                  	<div id="div1">
                  	<div id="div1-1">
                  		<label><b>프로젝트 시작일</b></label><br>
                  		<input type="text" id="pjtPrStart" name="pjtPrStart" class="datepicker" placeholder="프로젝트 시작일을 입력하세요" required="required">
                  	</div >
                  	
                  	<div id="div1-2">
                  		<label><b>프로젝트 진행 기간</b></label><br>
                  		<select name="pjtPrPeriod"  style="text-align: center; color: gray" required="required">
						<option value="" selected="selected" style="display: none;">기간미정 ~ 6개월이상</option>
						<option value="기간 미정">기간 미정</option>
						<option value="개월">1개월</option>
						<option value="2개월">2개월</option>
						<option value="3개월">3개월</option>
						<option value="4개월">4개월</option>
						<option value="5개월">5개월</option>
						<option value="6개월">6개월</option>
						<option value="6개월 이상">6개월 이상</option>
					</select><br>
                  	</div>
                  	<div id="div1-3">
                  		<label><b>모집 인원</b></label><br>
                  		<select name="pjtPrRecruits" style="text-align: center; color: gray" required="required">
						<option value="" selected="selected" style="display: none;">인원미정 ~ 10명이상</option>
						<option value="미정">미정</option>
						<option value="1명">1명</option>
						<option value="2명">2명</option>
						<option value="3명">3명</option>
						<option value="4명">4명</option>
						<option value="5명">5명</option>
						<option value="6명">6명</option>
						<option value="7명">7명</option>
						<option value="8명">8명</option>
						<option value="9명">9명</option>
						<option value="10명">10명</option>
						<option value="10명 이상">10명 이상</option>
					</select><br>
                  	</div>
                  	<div id="div1-4">
                  		<label><b>연락 방법</b></label><br>
                  		<input type="text" name="pjtPrContact" placeholder="연락받을 이메일주소나 전화번호등을 남겨주세요" required="required">
                  	</div>
                  
                  	</div>
                  	
                  	
                  <div id="div2">
                  	<div id="div2-1">
                  		<label><b>인원모집 마감일</b></label><br>
                  		<input type="text" name="pjtPrDeadline" class="datepicker" placeholder="인원모집 마감일을 입력하세요" required="required">
                  	</div>
                  		<div id="div2-2">
                  		<label><b>프로젝트 진행 방식</b></label><br>
                  		<select name="pjtPrFace" style="text-align: center; color:gray" required="required">
						<option value="" selected="selected" style="display: none;">비대면 or 대면 or 비대면&대면 혼합</option>
						<option value="미정">미정</option>
						<option value="FULL 비대면">FULL 비대면</option>
						<option value="FULL 대면">FULL 대면</option>
						<option value="대면 있으나 불참해도 상관없음">대면 있으나 불참해도 상관없음</option>
						<option value="대면 참석 필수">대면 존재, 참석 필수</option>
						</select><br>
                  	</div>
                  		<div id="div2-3">
                  		<label><b>프로젝트 정원</b></label><br>
                  		<select name="pjtPrCapacity" style="text-align: center; color: gray" required="required">
						<option value="" selected="selected" style="display: none;">프로젝트의 정원을 입력하세요</option>
						<option value="미정">미정</option>
						<option value="2명">2명</option>
						<option value="3명">3명</option>
						<option value="4명">4명</option>
						<option value="5명">5명</option>
						<option value="6명">6명</option>
						<option value="7명">7명</option>
						<option value="8명">8명</option>
						<option value="9명">9명</option>
						<option value="10명">10명</option>
						<option value="10 ~ 15명">10 ~ 15명</option>
						<option value="16 ~ 20명">16 ~ 20명</option>
						<option value="21 ~ 25명">21 ~ 25명</option>
						<option value="26 ~ 30명">26 ~ 30명</option>
						<option value="30명이상">30명이상</option>
					</select><br>
                  	</div>
                  	
                  	
                  	<div id="div2-4" style="overflow: auto;">
                  	<label ><b>모집 포지션</b></label>  
                  	<div id="fieldBox" style="width: 100%; height: 3.5rem;">
                  		<label style="font-size: 1.2rem; margin-top: 0.8rem;"><input type="checkbox" style="margin-left: 1rem; " name="pjtPrField" value="프론트엔드">프론트엔드</label>&nbsp;&nbsp;&nbsp;
      					 <label style="font-size: 1.2rem;"><input type="checkbox" name="pjtPrField" value="백엔드">백엔드</label>&nbsp;&nbsp;&nbsp;
      					 <label style="font-size: 1.2rem;"><input type="checkbox" name="pjtPrField" value="풀스택">풀스택</label>&nbsp;&nbsp;&nbsp;
      					 <label style="font-size: 1.2rem;"><input type="checkbox" name="pjtPrField" value="모바일">모바일</label>&nbsp;&nbsp;&nbsp;
      					 <label style="font-size: 1.2rem;"><input type="checkbox" name="pjtPrField" value="기타">기타</label>
                  	</div>
                  		 
                 	</div> 
                  	</div>
                  
                  </div> <!-- selectBoxes  -->
                  
                  <div id="stackDiv" style="overflow: auto; padding-left: 6rem;">
                  	<label ><b>기술 스택</b></label>  
 					
                   <div class="input-group" style="border: none; box-shadow: none;" onchange="dataListChange()">
                   <multi-input id="multi-input" >
			      <input id="stackInputCard" list="speakers" style="width: 100%;" placeholder="프로젝트에서 사용할 기술 스택을 선택해주세요. 검색도 가능합니다."/>
			      <datalist id="speakers">
			        <option value="AWS" class="item"></option>
			        <option value="Django" class="item"></option>
			        <option value="Docker" class="item"></option>
			        <option value="Express" class="item"></option>
			        <option value="Figma" class="item"></option>
			        <option value="Firebase" class="item"></option>
			        <option value="Flutter" class="item"></option>
			        <option value="Git" class="item"></option>
			        <option value="Go" class="item"></option>
			        <option value="GraphQL" class="item"></option>
			        <option value="Java" class="item"></option>
			        <option value="JavaScript" class="item"></option>
			        <option value="Kotlin" class="item"></option>
			        <option value="Kubernetes" class="item"></option>
			        <option value="MongoDB" class="item"></option>
			        <option value="MySQL" class="item"></option>
			        <option value="Nestjs" class="item"></option>
			        <option value="Nextjs" class="item"></option>
			        <option value="NodeJs" class="item"></option>
			        <option value="php"class="item"></option>
			        <option value="Python" class="item"></option>
			        <option value="TypeScript" class="item"></option>
			        <option value="React" class="item"></option>
			        <option value="ReactNative" class="item"></option>
			        <option value="Spring" class="item"></option>
			        <option value="Svelte" class="item"></option>
			        <option value="Swift" class="item"></option>
			        <option value="Unity" class="item"></option>
			        <option value="Vue" class="item"></option>
			        <option value="Zeplin" class="item"></option>
			        <option value="Zest" class="item"></option>
			      </datalist>
			    </multi-input>
                       </div>
                       <input  id="selecteds" name="pjtPrStack" type="hidden"> <br>
                       <script src="${pageContext.request.contextPath}/resources/js/multi-input.js"></script>
        				
         <script type="text/javascript">
         const multiInput= document.getElementById('multi-input'); 
         var selecteds = document.getElementById('selecteds'); 

        function dataListChange(){
          	console.log(multiInput.getValues());
           document.getElementById('selecteds').value =multiInput.getValues();
        }
        </script>  
                  </div>
                  
                  <div id="contentBox" style="margin: auto; margin-top: 0px;">
                  	<div id="header2" style="width: 100%; padding-top: 4rem; margin: auto; margin-top:0px; margin-bottom:0px; display: inline-block;">
                    <h4 class="card-header" style="border-bottom: 3px solid #f2f2f2; " >
                    <!--  <span  style="font-size: 2.3rem; color: skyblue; margin-top: 2rem; display: inline-block;" class="material-symbols-outlined">counter_1</span> &nbsp; -->
                   <span id="why2" ><b >프로젝트 소개를 입력해주세요.</b></span> </h4>
                  </div>
                  
                 
                  <div id="titleDiv" >
                   <label ><b>제목</b></label>  <br>
                  		<input id="titleInput" name="pjtPrTitle" type="text" placeholder=" 글 제목을 입력해주세요">
                  	</div><br>
                  
                  
                   <div class="container" style="padding-left: 1rem; float: left;">
			  			<textarea class="summernote" id="summernote" name="pjtPrContent"></textarea>    
					</div><br><Br>
		
		 			<input type="hidden" name="userNo" value="${loginUser.userNo}">
					
					<script>
					$(document).ready(function() {
					$('.summernote').summernote({
						  height: 600,
						  lang: "ko-KR"
						});
					</script>
                  
                  </div><br><br><br><br><br>
                  
          
    
     <div id="buttonDiv" style="width:50%; height:200px; margin: auto; text-align: center;">
      	<button type="submit" id="enrollPsnPr" class="btn btn-outline-primary"  style="font-size: 20px" onclick="returnFunction()"><b>등록하기</b></button> &nbsp;   <!-- 버튼 클래스  class="btn btn-outline-primary"   -->
		<button type="reset" class="btn btn-outline-secondary" style="font-size: 20px"><b>취소</b></button>
      </div>
    </div>
    
    
     
    
     
    </div>
    </div>
	</form>
	</div>
	
</body>
</html>