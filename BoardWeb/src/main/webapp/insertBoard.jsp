<%@page import="java.util.List" %>
<%@page import="com.springbook.biz.board.impl.BoardDAO" %>
<%@page import="com.springbook.biz.board.BoardVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
        .sub_tit a{color: #fff; background-color: #e0f7fa; padding: 5px 20px; display: inline-block; text-decoration: none; border-radius: 20px;}
        .sub_tit a:hover{text-decoration: underline; background-color: #e0f7fa;}
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
    <title>새글등록</title>
</head>

<body>
   <div class="wrap">
       <h1 class="tit">글 등록</h1>
       <h3 class="sub_tit"><a href="logout_proc.jsp">Log-out</a></h3>
       <form action="insertBoard.do" method="post">
           <table class="board_write_table">
               <tr>
                   <td>제목</td>
                   <td align="left">
                       <input type="text" name="title" />
                   </td>
               </tr>
               <tr>
                   <td>작성자</td>
                   <td align="left">
                       <input type="text" name="writer" size="10" />
                   </td>
               </tr>
               <tr>
                   <td>내용</td>
                   <td align="left">
                       <textarea name="content" cols="40" rows="10" class="txt_area"></textarea>
                   </td>
               </tr>
               <tr>
                   <td colspan="2" align="center">
                       <input type="submit" value="새글 등록" class="board_edit"/>
                   </td>
               </tr>
           </table>
       </form>
       <p class="board_btns">         
       	<a href="getBoardList.jsp">글 목록 가기</a>
       </p>
   </div>
</body>

</html>