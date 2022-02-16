<%@ page contentType="text/html;charset=UTF-8" import="java.text.SimpleDateFormat" import="java.util.*" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<%@ taglib prefix="fn" uri="http://java.sum.com/jsp/jstl/fnctions" %> --%>

<%
Date now = new Date();
SimpleDateFormat f = new SimpleDateFormat("yyyy/MM/dd");
Map<String, String> map = new HashMap<String, String>();
map.put("2022/1/1","元日");
map.put("2022/1/10","成人式");
map.put("2022/2/11","建国記念日");
map.put("2022/2/23","天皇誕生日");
map.put("2022/3/21","春分の日");
map.put("2022/4/29","昭和の日");
map.put("2022/5/3","憲法記念日");
map.put("2022/5/4","みどりの日");
map.put("2022/5/5","こどもの日");
map.put("2022/7/18","海の日");
map.put("2022/8/7","親友とのび太の誕生日");
map.put("2022/8/11","山の日");
map.put("2022/9/9","救急の日");
map.put("2022/9/13","誕生日");
map.put("2022/9/19","敬老の日");
map.put("2022/9/23","秋分の日");
map.put("2022/10/10","スポーツの日");
map.put("2022/11/13","文化の日");
map.put("2022/11/23","勤労感謝の日");
map.put("2022/12/31","大晦日");
request.setAttribute("data",map);
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form method="post" action="calendar.jsp">
<p>年と月と日</p>
<textarea name="calendar" rows="3" cols="40" placeholder="<%= f.format(now) %>">
</textarea>
<input type="submit" value="送信">
</form>
<p>
${param.calendar} <br>
<%= map.get(request.getParameter("calendar")) %>

 </p>
</body>
</html>