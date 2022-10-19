<%@page import="java.util.List" %>
<%@page import="com.springbook.biz.board.impl.BoardDAO" %>
<%@page import="com.springbook.biz.board.BoardVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
/*    
	// 1. 검색할 게시글 번호 추출
   String seq = request.getParameter("seq");

   // 2. DB 연동 처리
   BoardVO vo = new BoardVO();
   vo.setSeq(Integer.parseInt(seq));
   
   BoardDAO boardDAO = new BoardDAO();
   BoardVO board = boardDAO.getBoard(vo);
   
   // 3. 응답 화면 구성
*/
BoardVO board = (BoardVO) session.getAttribute("board");

%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <style>
        html, body, div, span, h1, h2, h3, p, a,  input, select, option, table, tr, th, td,search,input,textarea {
      margin: 0;padding: 0;border: 0;box-sizing: border-box; color: #333; texdt-decoration: none;}
         .wrap{max-width: 1000px; margin: 0 auto; padding: 50px;}
        .tit{text-align: center; font-size: 30px; font-weight: bold; background-color: #eefaff; padding: 50px 0; } 
        .sub_tit{text-align: center; margin-bottom: 30px; margin-top: 20px;}
        .sub_tit a{color: #fff; background-color: #5e92c6; padding: 5px 20px; display: inline-block; text-decoration: none; border-radius: 20px;}
        .sub_tit a:hover{text-decoration: underline; background-color: #5282b2;}
/*        테이블 */
        .board_write_table{width: 100%; padding: 10px; border-collapse: collapse; border-top: 2px solid #555; border-bottom: 2px solid #555;}
        .board_write_table td{padding: 10px 0; line-height: 40px; height: 40px;}
        .board_write_table tr{border-bottom: 1px solid #ccc;}
        .board_write_table tr>td:nth-child(1){width: 150px;}
        .board_write_table tr>td input{ border: 1px solid #ccc; width: 100%; height: 40px; line-height: 40px;}
        .board_write_table .txt_area{width: 100%; height: 300px; border: 1px solid #ccc; resize: none;}
        
        .board_edit{display: block;width: 100%; height: 50px; background-color: #4a4242; color: #fff; cursor: pointer;}
        .board_edit:hover{background-color: #362c2c;}
        
        .board_btns {text-align: center; margin: 30px 0;}
        .board_btns a{text-align: center; text-decoration: none; border-bottom: 3px solid #333; display: inline-block; margin: 0 5px; padding: 5px 10px;}
        .board_btns a:hover{border-bottom: 3px solid #5e92c6;}
    </style>
    <title>글 상세</title>
</head>

<body>
   <div class="wrap">
    <h1 class="tit">글 상세</h1>
    <h3 class="sub_tit"><a href="logout_proc.jsp">Log-out</a></h3>
    <form action="updateBoard.do" method="post">
    <input name="seq" type="hidden" value="<%= board.getSeq() %>" />
        <table class="board_write_table">
            <tr>
                <td>제목</td>
                <td align="left"><input name="title" type="text" value="<%= board.getTitle() %>" /></td>
            </tr>
            <tr>
                <td>작성자</td>
                <td align="left"><%= board.getWriter() %></td>
            </tr>
            <tr>
                <td>내용</td>
                <td align="left"><textarea name="content" cols="40" rows="10" class="txt_area"><%= board.getContent() %></textarea></td>
            </tr>
            <tr>
                <td>등록일</td>
                <td align="left"><%= board.getRegDate() %></td>
            </tr>
            <tr>
                <td>조회수</td>
                <td align="left"><%= board.getCnt() %></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" class="board_edit" value="글 수정" />
                </td>
            </tr>
        </table>
    </form>
    <p class="board_btns">         
           <a href="insertBoard.jsp">글등록</a>
           <a href="deleteBoard.do?seq=<%= board.getSeq() %>">글삭제</a>
           <a href="getBoardList.do">글목록</a>
       </p>
   </div>
</body>

</html>