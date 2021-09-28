<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="model.Word" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: t
  Date: 9/28/2021
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String, Word> dic = new HashMap<>();
%>

<%
    dic.put("hello", new Word("hello", "Xin chao"));
    dic.put("book", new Word("book", "quyen sach"));
    dic.put("phone", new Word("phone", "dien thoai"));
    String input = request.getParameter("input");
    Word result = dic.get(input);
    if (result == null) {
        out.println("not fount");
    } else {
        out.println(input + " " + result.getDescription());
    }
%>


</body>
</html>
