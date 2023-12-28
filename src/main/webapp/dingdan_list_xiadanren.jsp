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
                                  <td> ${map.yongcanren} </td>
                            <td> ${map.lianxidianhua} </td>
                            <td> ${map.yongcanshijian} </td>
                            <td> ${map.zhuangtai} </td>
                            <td> ${map.beizhu} </td>
                            <td> ${map.dianjia} </td>
                            <td> ${map.xiadanren} </td>
                            <td>
                                    ${map.iszf}
                                <c:choose>
                                    <c:when test="${'否' == map.iszf }">

                                        <a href="zhifu/index.jsp?id=${map.id}&biao=dingdan">
                                            去支付
                                        </a>
                                    </c:when></c:choose>
                            </td>
                            <td align="center">${map.addtime}</td>
                            <td align="center">

                                <c:choose>
                                    <c:when test="${map.zhuangtai == '已交付'}">

                                        <a href="dingdan_detail.do?id=${map.id}">
                                            评价
                                        </a>
                                    </c:when>
                                </c:choose>





                                <a href="dingdan_updt.do?id=${map.id}">修改</a>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            ${page.info}
            <p>
                订单金额总和: ${total.sum_dingdanjine} 　　
            </p>


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
