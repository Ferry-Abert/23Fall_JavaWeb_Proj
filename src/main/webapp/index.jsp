<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="js/swiper/swiper.css">
<script src="js/swiper/swiper.js"></script>
<link href="js/owl/owl.carousel.min.css" rel="stylesheet">
<script src="js/owl/owl.carousel.min.js"></script>


<style>
    body {
        background-image: url('img.png'); /* 替换为您的背景图片路径 */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
</style>



<div class="" style=" margin: auto;">

    ${bhtList = Query.make("lunbotu").order("id desc").limit(5).select();""}



        <!-- 如果需要分页器 -->
        <div class="swiper-pagination"></div>
        <!-- 如果需要导航按钮 -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>


    <script>
        var mySwiper = new Swiper('#banner17', {
            loop: true, // 循环模式选项
            autoplay: {
                delay: 3000,
                disableOnInteraction: false
            },
            // 如果需要分页器
            pagination: {
                el: '.swiper-pagination',
            },
            // 如果需要前进后退按钮
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            // 如果需要滚动条
            /*scrollbar: {
                el: '.swiper-scrollbar',
            },*/
        })
    </script>


</div>






<div class="" style="">




    <div class="container">
        <!-- 使用 bootstrap css 框架，container 定宽，并居中 -->
        <div class="row">
            <!-- 店家信息的循环 -->
            ${dianjiaList = Query.make("dianjia").order("id desc").select();""}
            <c:forEach items="${dianjiaList}" var="dianjia">
                <div class="col-md-12">
                    <div class="title-modelbox-widget">
                        <h3 class="section-title">${dianjia.dianjiamingcheng}</h3> <!-- 使用正确的店家名称字段 -->
                        <div class="sidebar-widget-body">
                            <!-- 对于每个店家，查询其菜品信息 -->
                                ${caipinxinxilist = Query.make("caipinxinxi").where("faburen", dianjia.zhanghao).order("xiaoliang desc").select();""}
                            <div class="row">
                                <!-- 菜品信息的循环 -->
                                <c:forEach items="${caipinxinxilist}" var="caipin">
                                    <div class="col-sm-4 col-md-3">
                                        <div class="product_thumb">
                                            <a href="caipinxinxidetail.do?id=${caipin.id}">
                                                <img src="${caipin.caipintupian}" alt="${caipin.caipinmingcheng}" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="text">
                                            <h4><a href="caipinxinxidetail.do?id=${caipin.id}">${caipin.caipinmingcheng}</a></h4>
                                            <div class="price_box">
                                                <span class="current_price">￥${caipin.zhekoujia}</span>
                                                <span class="old_price">￥${caipin.jiage}</span>
                                            </div>
                                            <a href="caipinxinxidetail.do?id=${caipin.id}" class="btn-see">查看详情</a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>


</div>
<div class="" style="">


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="row">

            <div class="col-sm-12 col-md-12">


                <div class="title-modelbox-widget wow rubberBand" data-wow-duration="1s" data-wow-delay="0s"
                     data-wow-iteration="1" >
                    <h3 class="section-title">
                        <div class="more">
                            <a href="caipinxinxilist.do">更多>></a>
                        </div>
                        推荐菜品
                    </h3>
                    <div class="sidebar-widget-body">


                        <div class="shop-product-xz">
                            ${caipinxinxilist29 = Query.make("caipinxinxi").limit(4).order("rand()").select();""}
                            <div class="clearfix">
                                <c:forEach items="${caipinxinxilist29}" var="r"><c:set var="r" value="${r}"
                                                                                       scope="request"/>
                                    <div class="products-col" style="width: 25%">
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a class="primary_img img-box pb100"
                                                       href="caipinxinxidetail.do?id=${r.id}">
                                                        <div class="img"
                                                             style="background-image: url('${r.caipintupian}')">
                                                            <img src="${r.caipintupian}" alt=""/>
                                                        </div>
                                                    </a>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="caipinxinxidetail.do?id=${r.id}">
                                                                ${r.caipinmingcheng}
                                                        </a>
                                                    </h4>
                                                    <div class="price_box">
                                                        <span class="current_price">￥${r.zhekoujia}</span>
                                                        <span class="old_price">￥${r.jiage}</span>
                                                    </div>
                                                    <div class="add_to_cart">
                                                        <a href="caipinxinxidetail.do?id=${r.id}" title="查看详情">查看详情</a>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>


                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>


            </div>


        </div>

        <!-- container定宽，并剧中结束 --></div>


</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>