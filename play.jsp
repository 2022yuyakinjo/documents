<%@page import="util.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  
<%
	String start = request.getParameter("submit");
    // 残数の更新処理(残数の取得、更新、保存など)    
    int totalNum = 25;
    int newtotal = 0;
    String Num = request.getParameter("num");
    int Num1 = 0;
    
    if(Utility.isNullOrEmpty(Num)) {
    	Num1 = 0;
    } else {
        Num1 = Integer.parseInt(Num);
		newtotal = totalNum - Num1;
    }
    session.setAttribute("totalNum", newtotal);
    
	
    
    
    // プレイヤーの切替処理(プレイヤーの取得、切替、保存など)
	
  
    

   
    
    // 残数が0以下の場合、結果ページへ遷移
    // (responseオブジェクトのsendRedirectメソッドを使用する)

    	
  //残数が0以下なら、「〇〇.jsp」へ遷移


    
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎課題</title>
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
  <h1>石取りゲーム</h1>

  <div class="info">
    <h2>
      残り：<%= totalNum %>個
    </h2>
    <p class="stone">
      <%
          // todo:このprint分は仮の処理。実装が完了したら削除する。
          // 表示する文字列("●●～")をメソッドを使い取得し、取得した文字列を表示する
          
          out.println(Utility.getStoneDisplayHtml(totalNum, "●"));
          
      %>
    </p>
  </div>
  <div class="info">
    <h2>
      プレイヤーxxの番
    </h2>

    <form action="play.jsp">
      <p>
        石を
        <input type="number" name="num" min="1" max="3">
        個取る<br> ※1度に3個取れます。
      </p>
      <button class="btn" type="submit">決定</button>
    </form>
  </div>
</body>
</html>