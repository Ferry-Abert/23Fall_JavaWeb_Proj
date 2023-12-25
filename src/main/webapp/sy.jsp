<%@ page language="java" pageEncoding="utf-8" %>

<html>
<head>

    <title>食堂管理系统</title>
    <LINK href="images/style.css" type=text/css rel=stylesheet>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style type="text/css">
        body, td, th {
            font-size: 12px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #D9E9FF;
        }

        th, td {
            padding: 10px;
            text-align: left;
            background-color: #CADCEA;
        }

        .t4 {
            font-size: 14px;
            font-weight: bold;
        }

        .t41 {
            font-style: italic;
        }

        p {
            margin: 0;
        }
    </style>
</head>
<BODY leftMargin=5 topMargin=5 rightMargin=5>
<table width="100%" height="210" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#D9E9FF"
       style="border-collapse:collapse">
    <TBODY>
    <TR
            align=middle bgColor=#ffffff>
        <td colspan="4" bgColor=#CADCEA><strong>系统基本信息</strong></td>
    </TR>
    <TR align=middle
        bgColor=#ffffff>
        <TD width="14%" align="left" valign="bottom">当前用户：</TD>
        <TD width="37%" align="left" valign="bottom"><font class="t4"><%=request.getSession().getAttribute("username")%>
        </font></TD>
        <TD width="9%" align="left" valign="bottom">您的权限：</TD>
        <TD width="40%" align="left" valign="bottom"><font class="t4"><%=request.getSession().getAttribute("cx")%>
        </font></TD>
    </TR>
    <TR align=middle
        bgColor=#ffffff>
        <TD height="38" align="left" valign="bottom">当前日期：</TD>
        <TD align="left" valign="bottom"><%
            java.util.Date date = new java.util.Date();
            java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

            String result = format.format(date);
            out.print(result);
        %></TD>
        <TD align="left" valign="bottom">您的IP：</TD>
        <TD align="left" valign="bottom"><%=request.getRemoteAddr() %>
        </TD>
    </TR>
    <TR align=middle
        bgColor=#ffffff>
        <TD align="left" valign="bottom">浏览器版本：</TD>
        <TD align="left" valign="bottom"><font class="t41"><%=request.getHeader("User-Agent")%>
        </font></TD>
        <TD align="left" valign="bottom">操作系统：</TD>
        <TD align="left" valign="bottom"><font class="t41"><%=System.getProperty("os.name")%>
        </font></TD>
    </TR>
    <TR align=middle
        bgColor=#ffffff>
        <TD height="43" align="left" valign="bottom">服务器端口：</TD>
        <TD align="left" valign="bottom"><font class="t41"><%=request.getServerPort()%>
        </font></TD>
        <TD align="left" valign="bottom">开发日期：</TD>
        <TD align="left" valign="bottom"><%
            out.print(result);%></TD>

    </TR>
    <TR align=middle
        bgColor=#ffffff>
        <TD valign="bottom" align="left">系统作者：</TD>
        <TD valign="bottom" align="left"><font class="t4">王一然 冯家鑫 唐殊为 吴易之 李一博</font></TD>
        <TD align="left" valign="bottom">最近运行时间：</TD>
        <TD align="left" valign="bottom"><%
            out.print(result);%></TD>
    </TR>
    </TBODY>
</TABLE>
<p>&nbsp;</p>
<table width="100%" height="100" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#D9E9FF"
       style="border-collapse:collapse">
    <TBODY>


    </TBODY>
</TABLE>
<p>&nbsp;</p>
<P align=right>&nbsp;</P>
</BODY>
</html>



