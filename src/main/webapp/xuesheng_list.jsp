<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">




<div class="panel panel-default">
    <div class="panel-heading">
        <span class="module-name">
            学生        </span>
        <span>列表</span>
    </div>
    <div class="panel-body">
        <div class="pa10 bg-warning">
            <form class="form-inline" action="?"><!-- form 标签开始 -->
    
                <div class="form-group">
    
    
                    <i class="glyphicon glyphicon-search"></i>
                
</div>
                                                            <div class="form-group">
    学号
    
                            <input type="text" class="form-control" style="" name="xuehao" value="${param.xuehao}"/>                        
</div>
                                                                                    <div class="form-group">
    姓名
    
                            <input type="text" class="form-control" style="" name="xingming" value="${param.xingming}"/>                        
</div>
                                                                <div class="form-group">
    性别
    
                            <select class="form-control class_xingbie1" data-value="${param.xingbie}" id="xingbie" name="xingbie">
<option value="">请选择</option><option value="男">男</option>
<option value="女">女</option>

</select>
<script>
$(".class_xingbie1").val($(".class_xingbie1").attr("data-value"))</script>
                        
</div>
                                                                                    <div class="form-group">
    手机
    
                            <input type="text" class="form-control" style="" name="shouji" value="${param.shouji}"/>                        
</div>
                                                                <div class="form-group">
    身份证
    
                            <input type="text" class="form-control" style="" name="shenfenzheng" value="${param.shenfenzheng}"/>                        
</div>
                                                        <select class="form-control" name="order" id="orderby">

                    <option value="id">按发布时间</option>
                                    
</select>
                <select class="form-control" name="sort" id="sort">

                    <option value="desc">倒序</option>
                    <option value="asc">升序</option>
                
</select>
                <script>$("#orderby").val("${orderby}");$("#sort").val("${sort}");</script>
                <button type="submit" class="btn btn-default">
    搜索
</button>

                
            
<!--form标签结束--></form>


            <div class="container">

                    <div class="">
                <table width="100%" border="1" class="table-container">
                    <thead>
                    <tr align="center">
                        <th width="60" data-field="item">序号</th>
                        <th> 学号 </th>
<th> 密码 </th>
<th> 姓名 </th>
<th> 性别 </th>
<th> 年龄 </th>
<th> 手机 </th>
<th> 身份证 </th>
<th> 头像 </th>
                                                                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0" /><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}" /><c:set var="map" value="${map}" scope="request" />
                    <tr id="${map.id}" pid="">
                        <td width="30" align="center">
                            <label>
                                                                ${i}
                            </label>
                        </td>
                        <td> ${map.xuehao} </td>
<td> ${map.mima} </td>
<td> ${map.xingming} </td>
<td> ${map.xingbie} </td>
<td> ${map.nianling} </td>
<td> ${map.shouji} </td>
<td> ${map.shenfenzheng} </td>
<td> <c:choose>
<c:when test="${'' == map.touxiang }">
-</c:when><c:otherwise><img width="100" src="${map.touxiang}"/></c:otherwise></c:choose> </td>
                                                                        <td align="center">${map.addtime}</td>
                        <td align="center">
                            
                                                                                    <a href="xuesheng_updt.do?id=${map.id}">修改</a>
                            <a href="xuesheng_delete.do?id=${map.id}" onclick="return confirm('真的要删除？')">删除</a>
                            <!--qiatnalijne-->
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            
        ${page.info}
        


    </div>



</div>


</div>
<style>
    /* Add your custom styles here */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f4;
    }

    .container {
        max-width: 2000px;
        margin: 0 auto;
        padding: 20px;
    }

    form {
        /* Add styles for your form */
    }

    .table-container {
        margin-top: 20px;
        overflow-x: auto;
        border-radius: 10px; /* Adjust the value as needed */
        background-color: #fff; /* Ensure background color for rounded corners */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 10px; /* Add padding for aesthetics */
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }

    a {
        color: #007bff;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    table tr:hover {
        background-color: #f0f8ff; /* Change the background color on hover */
        cursor: pointer; /* Change the cursor to a pointer on hover */
    }

</style>
<%@ include file="foot.jsp" %>
