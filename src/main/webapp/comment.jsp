<%@ page language="java" import="dao.CommDAO" pageEncoding="utf-8" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>在线评论</title>
    <script type="">

        var index = parent.layer.getFrameIndex(window.name);

    </script>
    <style type="text/css">
        <!--

    </style>
</head>

<body>

<script language="javascript">
    function check() {
        if (document.form1.pinglunneirong.value == "") {
            alert("请输入评论内容");
            document.form1.pinglunneirong.focus();
            return false;
        }
        return true;
    }

</script>
<form action="commentSave.do" method="post" name="form1">
    <table width="100%" class="table table-insert">
        <tr style="display:none">
            <td>编号：</td>
            <td><input name='wenzhangID' type='text' id='wenzhangID' value='${id}' readonly="readonly"/>
                &nbsp;*
            </td>
        </tr>
        <tr>
            <td>评分：</td>
            <td><select name="pingfen" id="pingfen">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
            </td>
        </tr>
        <tr>
            <td>评论内容：</td>
            <td><textarea name='pinglunneirong' cols='50' rows='5' id='pinglunneirong'></textarea>
                &nbsp;*
            </td>
        </tr>
        <tr>
            <td>评论人：</td>
            <td><input name='pinglunren' type='text' id='pinglunren'
                       value="<%=request.getSession().getAttribute("username")%>"/>
                &nbsp;*
            </td>
        </tr>
        <tr>
            <td>评论时间：</td>
            <td><input name='pinglunshijian' type='text' id='pinglunshijian'
                       value="<%=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date())%>"/>
                &nbsp;*
            </td>

    </table>
</form>
</body>
</html>
