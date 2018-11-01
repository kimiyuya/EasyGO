package com.yxiao23.EasyGO.biz;

import com.yxiao23.EasyGO.entity.AgencyInfo;
import com.yxiao23.EasyGO.entity.Users;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-29 04:41
 */
public interface UsersBiz {
    void add(Users users);
    void edit(Users users);
    void remove(String id);
    Users get(String id);
    List<Users> getAll();
}
