package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Table(name = "dianjia")
public class Dianjia implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "zhanghao")
    private String zhanghao;
    @Column(name = "mima")
    private String mima;
    @Column(name = "dianjiamingcheng")
    private String dianjiamingcheng;
    @Column(name = "shoujihaoma")
    private String shoujihaoma;
    @Column(name = "dizhi")
    private String dizhi;


    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
