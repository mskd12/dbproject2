<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
   "http://www.w3.org/TR/html4/strict.dtd">
<style>
#ohmygod {
    background-color: blue;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius:6px;
    color: #fff;
    font-family: 'Oswald';
    font-size: 20px;
    text-decoration: none;
    cursor: pointer;
    border:none;
}

#ohmygod:hover {
    border: none;
    background:blue;
    box-shadow: 0px 0px 1px #777;
}
</style>
<HTML>
   <HEAD>
      <TITLE>Food Panda</TITLE>
      
   </HEAD>
   <body>
   <div style="width:60%; margin:0 auto;text-align:center;">
   <h1>NOW ORDER FOOD AT YOUR DOORSTEPS!!!!</h1>
   </div>
<div style="float:left;padding: 10%;">


<table>
<th>LOGIN</th>
<form action="FOS" method="post">
<tr><td><input type="radio" name="SellerOrUser" value="Seller" checked>Seller</td>
<td><input type="radio" name="SellerOrUser" value="User">User<br/></td></tr>

 <tr><td>Username </td><td><input type="text" name="Username"size="20px" ></td></tr>
<tr><td>Password</td><td><input type="password" name="Password" size="20px"></td></tr>

<input type="hidden" name="from" value = "2">
<tr><td align = "center"><input type="submit" name="submitvalue" value="login" id="ohmygod"></td></tr>
</form>
</table>
</div>
<div style="float:right;padding: 10%;">
<table>
<th>SIGN UP</th>
<form action="FOS" method="post">
<tr><td><input type="radio" name="SellerOrUser" value="Seller" checked>Seller</td>
<td><input type="radio" name="SellerOrUser" value="User">User</td>
<tr><td>
Username</td><td>
<input type="text" name="Username"size="60px">
</td>
</tr>
<tr><td>
Address
</td><td>
<input type="text" name="Address" size="60px">
</td></tr>
<tr><td>
Name
</td><td>
<input type="text" name="Name" size="60px">
</td></tr>
<tr><td>
Password
</td><td>
<input type="password" name="Password" size="60px">
</td></tr>
<input type="hidden" name="from" value = "2">
<tr><td align="right"><input type="submit" name="submitvalue" value="signup" id="ohmygod"></td></tr>
</form>
</table>
</div>
   </BODY>
</HTML>