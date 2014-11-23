<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%String UserData = request.getParameter("UserData").toString();
String ArrayUser[] = UserData.split("@");%>


<h1>welcome <%out.println(ArrayUser[1]); %></h1>
<h2>your wallet contains <%out.println(ArrayUser[2]); %></h2>




<FORM action="FOS" method = "post">
<input type = "hidden" name = "UserData" value =<%out.println(UserData); %> >
<input type = "hidden" name = "from" value = "6">
enter amount:<input type = "text" name = "Amount"></br>
enter password:<input type = "password" name = "Passkey"></br>
<input type="submit" name="submitvalue" value="Auth">
</FORM>


</body>
</html>