<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">


    <div class="panel panel-default">
        <div class="panel-heading">
        <span class="module-name">
            订单        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" action="?"><!-- form 标签开始 -->

                    <div class="form-group">


                        <i class="glyphicon glyphicon-search"></i>

                    </div>
                    <div class="form-group">
                        订单编号

                        <input type="text" class="form-control" style="" name="dingdanbianhao"
                               value="${param.dingdanbianhao}"/>
                    </div>
                    <div class="form-group">
                        订单信息


                    </div>
                    <select class="form-control" name="order" id="orderby">

                        <option value="id">按发布时间</option>
                        <option value="dingdanjine">
                            按订单金额
                        </option>

                    </select>
                    <select class="form-control" name="sort" id="sort">

                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>

                    </select>
                    <script>$("#orderby").val("${orderby}");
                    $("#sort").val("${sort}");</script>
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
                        <th> 订单编号</th>
                        <th> 订单信息</th>
                        <th> 订单金额</th>
                        <th> 用餐人</th>
                        <th> 联系电话</th>
                        <th> 用餐时间</th>
                        <th> 状态</th>
                        <th> 备注</th>
                        <th> 店家</th>
                        <th> 下单人</th>
                        <th width="80" data-field="iszf">是否支付</th>
                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0"/><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}"/><c:set
                            var="map" value="${map}" scope="request"/>
                        <tr id="${map.id}" pid="">
                            <td width="30" align="center">
                                <label>
                                        ${i}
                                </label>
                            </td>
                            <td> ${map.dingdanbianhao} </td>
                            <td> ${map.dingdanxinxi} </td>
                            <td> ${map.dingdanjine} </td>
                            <td> ${map.yongcanren} </td>
                            <td> ${map.lianxidianhua} </td>
                            <td> ${map.yongcanshijian} </td>
                            <td> ${map.zhuangtai} </td>
                            <td> ${map.beizhu} </td>
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
