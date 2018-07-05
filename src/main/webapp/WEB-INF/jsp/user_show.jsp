<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-04-30
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试页面</title>
</head>
<body>
<h2 style="width:350px;text-align:center;">获取后台数据如下</h2>
<table align="left" border="1" width="90%">
    <tr align="left" style="font-weight: bold;">
      <td>id</td>
      <td>name</td>
      <td>img</td>
      <td>introduction</td>
      <td>ratingScore</td>
      <td>vip</td>
      <td>realName</td>
      <td>phone</td>
      <td>email</td>
      <td>password</td>
      <td>type</td>
      <td>violationNumber</td>
  </tr>
    <tr align="left">
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.img}</td>
        <td>${user.introduction}</td>
        <td>${user.ratingScore}</td>
        <td>${user.vip}</td>
        <td>${user.realName}</td>
        <td>${user.phone}</td>
        <td>${user.email}</td>
        <td>${user.password}</td>
        <td>${user.type}</td>
        <td>${user.violationNumber}</td>

    </tr>

</table>
</body>
</html>

