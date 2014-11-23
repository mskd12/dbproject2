<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order Confirmation page</title>
</head>
<body>
<%String UserData = request.getAttribute("UserData").toString();
String ArrayUser[] = UserData.split("@");%>

<div style="width:100%;height = 50px;background:#F9EECF;border:1px dotted black;">
<center>
<a href="/FOS/Wallet.jsp?UserData=<%out.println(UserData); %>"><div style="width:20%;height = 50px;background:#F9EECF;border:1px dotted black;float:left;">wallet</div></a>
<a href="editdetails"><div style="width:20%;height = 50px;background:#F9EECF;border:1px dotted black;float:left;">edit details</div></a>
<a href="svag"><div style="width:20%;height = 50px;background:#F9EECF;border:1px dotted black;float:left;">history</div></a>
<a href="Home.jsp"><div style="width:20%;height = 50px;background:#F9EECF;border:1px dotted black;float:left;">Logout</div></a>
</center>
</div>

<h1>welcome <%out.println(ArrayUser[1]); %></h1>
<h2>your wallet contains <%out.println(ArrayUser[2]); %></h2>

<%
String ItemData = request.getAttribute("ItemData").toString();
String ItemDataArray[] = ItemData.split("//");
String SellerData = request.getAttribute("SellerData").toString();
String SellerDataArray[] = SellerData.split("@");
%>

<h3> Items of <%out.println(SellerDataArray[1]); %></h3>
<div style="width:100%;background:#F9EECF;border:1px dotted black;text-align:center;">

<TABLE BORDER="1" CELLPADDING="3" CELLSPACING="1">
	<TR>
        <TH>Name</TH>
        <TH>Cost</TH>
        <TH>Expected time</TH>
        <TH>veg or non veg</TH>
        <TH>cuisine</TH>
        <TH>Quantity</TH>
    </TR>

<%
for(String s : ItemDataArray)
{
	if(s.equals("")) continue;
	String ItemArray[] = s.split("@");
	
%>
    <TR>
        <TD><%=ItemArray[4] %></TD>
        <TD><%=ItemArray[2] %></TD>
        <TD><%=ItemArray[3] %></TD>
        <TD><%=ItemArray[5] %></TD>
        <TD><%=ItemArray[6] %></TD>
        <TD><%=ItemArray[7] %></TD>
	</TR>

<%}%>
</TABLE>
</div>
<FORM action="FOS">
<input type = "hidden" name = "UserData" value = <% out.println(UserData); %>>
<input type = "hidden" name = "SellerData" value = <% out.println(SellerData); %>>
<input type = "hidden" name = "ItemData" value = <% out.println(ItemData); %>>
<input type = "hidden" name = "from" value = "13">
<input type="submit" name="submitvalue" value="Submit">
</FORM>

<a href="/FOS/FOS?from=3&UserData=<%= UserData %>&SellerData=<%=SellerData %>">
 Change the order
 </a>
</body>
</html>