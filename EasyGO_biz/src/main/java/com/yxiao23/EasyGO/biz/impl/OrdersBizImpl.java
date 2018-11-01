package com.yxiao23.EasyGO.biz.impl;

import com.yxiao23.EasyGO.biz.UsersBiz;
import com.yxiao23.EasyGO.dao.AgencyInfoDao;
import com.yxiao23.EasyGO.dao.CarInfoDao;
import com.yxiao23.EasyGO.dao.OrdersDao;
import com.yxiao23.EasyGO.dao.UsersDao;
import com.yxiao23.EasyGO.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-30 23:34
 */
@Service("ordersBiz")
public class OrdersBizImpl implements UsersBiz {
    @Autowired
    private UsersDao usersDao;
    @Autowired
    private AgencyInfoDao agencyInfoDao;
    @Autowired
    private CarInfoDao carInfoDao;
    @Autowired
    private OrdersDao ordersDao;

    public void add(Users users) {

        usersDao.insert(users);
    }

    public void edit(Users users) {
        usersDao.update(users);
    }

    public void remove(String id) {
        usersDao.delete(id);
    }

    public Users get(String id) {
        return usersDao.select(id);
    }

    public List<Users> getAll() {
        return usersDao.selectAll();
    }
}
