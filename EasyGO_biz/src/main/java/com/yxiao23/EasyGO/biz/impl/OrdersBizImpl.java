package com.yxiao23.EasyGO.biz.impl;

import com.yxiao23.EasyGO.biz.OrdersBiz;
import com.yxiao23.EasyGO.biz.UsersBiz;
import com.yxiao23.EasyGO.dao.AgencyInfoDao;
import com.yxiao23.EasyGO.dao.CarInfoDao;
import com.yxiao23.EasyGO.dao.OrdersDao;
import com.yxiao23.EasyGO.dao.UsersDao;
import com.yxiao23.EasyGO.entity.Orders;
import com.yxiao23.EasyGO.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-30 23:34
 */
@Service("ordersBiz")
public class OrdersBizImpl implements OrdersBiz {
    @Autowired
    private UsersDao usersDao;
    @Autowired
    private AgencyInfoDao agencyInfoDao;
    @Autowired
    private CarInfoDao carInfoDao;
    @Autowired
    private OrdersDao ordersDao;

    public void add(Orders orders) {

        ordersDao.insert(orders);
    }

    public void edit(Orders orders) {
        ordersDao.update(orders);
    }

    public void remove(String id) {
        ordersDao.delete(id);
    }

    public Orders get(String id) {
        return ordersDao.select(id);
    }

    public List<Orders> getAll() {
        return ordersDao.selectAll();
    }

    public List<Orders> getOrderByUserId(String userId) {
        return ordersDao.getOrderByUserId(userId);
    }


}
