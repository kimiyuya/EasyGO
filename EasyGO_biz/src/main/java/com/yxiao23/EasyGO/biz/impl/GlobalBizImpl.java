package com.yxiao23.EasyGO.biz.impl;

import com.yxiao23.EasyGO.biz.GlobalBiz;
import com.yxiao23.EasyGO.dao.UsersDao;
import com.yxiao23.EasyGO.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author yulinxiao
 * @date 2018-11-01 01:05
 */
@Service("globalBiz")
public class GlobalBizImpl implements GlobalBiz {
    @Autowired
    private UsersDao usersDao;
    public Users login(String id, String password) {
        Users users = usersDao.select(id);
        if(null != users && users.getPassword().equals(password)){
            return users;
        }
        return null;
    }

    public void changePassword(Users users) {
        usersDao.update(users);
    }
}
