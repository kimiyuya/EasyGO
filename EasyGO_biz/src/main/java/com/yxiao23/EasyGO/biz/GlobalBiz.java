package com.yxiao23.EasyGO.biz;

import com.yxiao23.EasyGO.entity.Users;

/**
 * @author yulinxiao
 * @date 2018-11-01 01:03
 */
public interface GlobalBiz {
    Users login (String id, String password);
    void changePassword(Users users);
}
