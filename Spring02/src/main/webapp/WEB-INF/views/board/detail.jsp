<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>ex02</title> 
        
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <style>
        .reply_item {
            margin: 16px;
            border: 1px solid gray;
        }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <header class="text-center">
                <h1>게시글 상세 보기 페이지</h1>
            </header>
            
            <nav> <%-- 내비게이션(페이지 이동) 메뉴 --%>
                <ul>
                    <li><a href="../">메인</a></li>
                    <li><a href="./main">게시판 메인</a></li>
                    <c:if test="${signInUserId == board.userid}">
                    <%-- 로그인 사용자 아이디와 글 작성자 아이디가 일치할 때만 수정 메뉴를 보여줌. --%>
                        <li><a href="./update?bno=${board.bno}">수정</a></li>
                    </c:if>
                </ul>
            </nav>
            
            <div> <%-- 글 상세보기 --%>
                <form>
                    <div>
                        <input type="hidden" id="bno" value="${board.bno}" />
                    </div>
                    <div>
                        <label for="title">글 제목</label>
                        <input type="text" id="title" name="title" value="${board.title}" required autofocus readonly />
                    </div>
                    <div>
                        <label for="content">글 내용</label>
                        <textarea rows="5" id="content" name="content" required readonly>${board.content}
                        </textarea>
                    </div>
                    <div>
                        <label for="userid">작성자 아이디</label>
                        <input type="text" id="userid" name="userid" value="${board.userid}" required readonly />
                    </div>
                    <div>
                        <label for="reg_date">최종 수정 시간</label>
                        <fmt:formatDate value="${board.reg_date}" pattern="yyyy/MM/dd HH:mm:ss" 
                            var="last_update_time"/>
                        <input type="text" id="reg_date" name="reg_date" value="${last_update_time}" readonly />
                    </div>                                   
                    
                </form>
            </div>      
     	</div>

    
    </body>
</html>