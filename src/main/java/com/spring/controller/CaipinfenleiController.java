package com.spring.controller;

import com.spring.dao.CaipinfenleiMapper;
import com.spring.entity.Caipinfenlei;
import com.spring.service.CaipinfenleiService;
import dao.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Info;
import util.Request;

import java.util.HashMap;
import java.util.List;



/**
 * 菜品分类 */
@Controller
public class
CaipinfenleiController extends BaseController
{
    @Autowired
    private CaipinfenleiMapper dao;
    @Autowired
    private CaipinfenleiService service;

    /**
     *  后台列表页
     *
     */


    public String getWhere()
    {
        String where = " ";
        // 以下也是一样的操作，判断是否符合条件，符合则写入sql 语句
            if(!Request.get("fenleimingcheng").equals("")) {
            where += " AND fenleimingcheng LIKE '%"+Request.get("fenleimingcheng")+"%' ";
        }
            return where;
    }





        @RequestMapping("/caipinfenlei_add")
    public String add()
    {
        return "caipinfenlei_add";
    }



    @RequestMapping("/caipinfenlei_updt")
    public String updt()
    {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Caipinfenlei mmm = service.find(id);
        request.setAttribute("mmm" , mmm);
        request.setAttribute("updtself" , 0);
        return "caipinfenlei_updt";
    }
    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/caipinfenleiinsert")
    public String insert()
    {
        String tmp="";
        Caipinfenlei post = new Caipinfenlei();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setFenleimingcheng(Request.get("fenleimingcheng"));


        
        post.setAddtime(Info.getDateStr()); // 设置添加时间
                service.insert(post); // 插入数据
        int charuid = post.getId().intValue();
        
        return showSuccess("保存成功" , Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
    * 更新内容
    * @return
    */
    @RequestMapping("/caipinfenleiupdate")
    public String update()
    {
        // 创建实体类
        Caipinfenlei post = new Caipinfenlei();
        // 将前台表单数据填充到实体类
        if(!Request.get("fenleimingcheng").equals(""))
        post.setFenleimingcheng(Request.get("fenleimingcheng"));
        
        post.setId(Request.getInt("id"));
                service.update(post); // 更新数据
        int charuid = post.getId().intValue();
                        return showSuccess("保存成功" , Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }
        /**
    *  删除
    */
    @RequestMapping("/caipinfenlei_delete")
    public String delete()
    {
        if(!checkLogin()){
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap delMap = Query.make("caipinfenlei").find(id);

                service.delete(id);// 根据id 删除某行数据
                return showSuccess("删除成功",request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
