<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String sid = request.getParameter("sid") ;%>
<h2>Insert values to be added</h2>

<form action="FOS" method="post">
ItemID <input type="text" name="ItemId" size="20px" > <br>
Cost <input type="text" name="Cost" size="20px" > <br>
Hours <input type="text" name="Hours" size="20px" > <br>
Minutes <input type="text" name="Minutes" size="20px" > <br>
Seconds <input type="text" name="Seconds" size="20px" > <br>
<input type="hidden" name="from" value = "12">
<input type="hidden" name="sid" value=<%out.println(sid); %>>
<input type="submit" name="Add" value="Add">
</form>

</body>
</html>