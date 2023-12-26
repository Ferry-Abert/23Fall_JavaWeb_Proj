package com.spring.service;

import com.base.IServiceBase;
import com.spring.entity.Admins;

public interface AdminsService extends IServiceBase<Admins> {

    public boolean updatePassword(int id, String newPassword);
}
