package com.xyu.module.sys.user.bean;

import com.xyu.foundation.baseclass.BaseBean;

/**
 * @author Xiang.Yu
 * Created by Administrator on 2015/10/5 0005.
 * @version 0.1.0
 */
public class Permission extends BaseBean {
    /** 权限名称 */
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
