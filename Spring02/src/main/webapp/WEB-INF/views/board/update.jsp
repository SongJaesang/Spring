<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>ex02</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    </head>
    <body>
        <div class="container-fluid">
            <header class="text-center">
                <h1>게시글 수정 페이지</h1>
            </header>
            
            <nav> <!-- TODO: 페이지 이동 메뉴 -->
                <ul>
                    <li><a href="../">메인</a></li>
                    <li><a href="./main">게시판 메인</a></li>
                    <li><a id="menu-delete" href="./delete?bno=${board.bno}">삭제</a></li>
                </ul>
            </nav>
            
            <div>
                <form action="./update" method="post">
                    <div style="display: none;">
                        <input type="number" name="bno" value="${board.bno}" readonly />
                    </div>
                    <div>
                        <label for="title">글 제목</label>
                        <input type="text" id="title" name="title" value="${board.title}" required autofocus />
                    </div>
                    <div>
                        <label for="content">글 내용</label>
                        <textarea rows="5" id="content" name="content" required>${board.content}
                        </textarea>
                    </div>
                    <div>
                        <label for="userid">작성자 아이디</label>
                        <input type="text" id="userid" name="userid" value="${board.userid}" required readonly />
                    </div>
                    <div>
                        <input type="submit" value="수정 완료" />
                    </div>
                </form>
            </div>
        
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
        <script>
        $(document).ready(function () {
        	
        	$('#menu-delete').click(function (event) {
        		event.preventDefault(); // 링크를 클릭했을 때의 기본 동작인 요청 보내기를 하지 않음.
        		var result = confirm('정말 삭제할까요?');
        		if (result) { // 사용자가 YES를 선택했을 때
        			location = $(this).attr('href'); // 원래 이동하려고 했던 요청 주소로 요청 보내기.
        		}
        	});
        	
        });
        </script>
    
    </body>
</html>