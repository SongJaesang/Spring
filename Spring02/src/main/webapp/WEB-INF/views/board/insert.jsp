<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
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
                <h1>새 글 작성 페이지</h1>
            </header>
            
            <nav> <!-- TODO: 페이지 이동 메뉴 -->
            </nav>
            
            <div> <!-- 입력 양식 -->
                <form action="./insert" method="post"> <!-- /board/insert POST submit -->
                    <div>
                        <input type="text" name="title" placeholder="제목 입력" required autofocus />
                    </div>
                    <div>
                        <textarea rows="5" name="content" placeholder="내용 입력" required></textarea>
                    </div>
                    <div>
                        <input type="text" name="userid" value="${signInUserId}" required readonly />
                    </div>
                    <div>
                        <input type="submit" value="작성 완료">
                    </div>
                </form>
            </div>
            
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    </body>
</html>