<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>食堂管理系统</title>
    <!-- Custom styles -->
    <link rel="stylesheet" href="your-custom-styles.css">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="htstyle/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../../../../restV2/src/main/webapp/htstyle/fa/css/all.css">
    <link rel="stylesheet" href="htstyle/css/orionicons.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="htstyle/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="htstyle/css/custom.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body class="bg-light">
<div class="page-holder d-flex align-items-center">
    <div class="container">
        <div class="row align-items-center py-5">
            <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                <div class="pr-lg-5"><img src="htstyle/img/illustration.png" alt="" class="img-fluid"></div>
            </div>
            <div class="col-lg-5 px-lg-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="text-center text-primary">食堂管理系统</h2>
                        <p class="text-muted text-center">欢迎使用食堂管理系统后台管理系统</p>
                        <form id="loginForm" action="authAdminLogin.do?ac=adminlogin&a=a" class="mt-4" method="post">
                            <div class="form-group mb-4">
                                <input type="text" name="username" placeholder="账号"
                                       class="form-control border-0 shadow form-control-lg">
                            </div>
                            <div class="form-group mb-4">
                                <input type="password" name="pwd" placeholder="密码"
                                       class="form-control border-0 shadow form-control-lg text-blue">
                            </div>
                            <div class="form-group mb-4">
                                <select name="cx" class="form-control border-0 shadow form-control-lg text-blue">
                                    <option value="管理员">管理员</option>
                                    <option value="店家">店家</option>
                                </select>
                            </div>
                            <div class="form-group mb-4">
                                <input type="text" name="pagerandom" placeholder="验证码" class="form-control border-0 shadow form-control-lg text-violet" style="width: 180px;display: inline-block"/>
                                <img alt="刷新验证码" title="点击刷新验证码" onClick="this.src='captcha.do?time='+new Date().getTime();" src="captcha.do" style="cursor:pointer; padding-top:10px;width: 60px;height: 50px;float: right">
                            </div>
                            <button type="submit" class="btn btn-primary shadow btn-block">登录</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <p class="mt-5 mb-0 text-gray-400 text-center">Copyright &copy; 食堂管理系统</p>
    </div>
</div>
<!-- JavaScript files-->
<script src="htstyle/vendor/jquery/jquery.min.js"></script>
<script src="htstyle/vendor/popper.js/umd/popper.min.js"></script>
<script src="htstyle/bootstrap/js/bootstrap.min.js"></script>
<script src="htstyle/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="htstyle/js/js.cookie.min.js"></script>
<script src="htstyle/js/front.js"></script>
</body>
</html>
