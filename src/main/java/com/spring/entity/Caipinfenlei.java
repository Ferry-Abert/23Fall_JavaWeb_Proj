package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Table(name = "caipinfenlei")
public class Caipinfenlei implements Serializable {


    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
