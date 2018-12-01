package com.yxiao23.EasyGO.dao;

import com.yxiao23.EasyGO.entity.Orders;
import com.yxiao23.EasyGO.entity.Users;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-30 23:18
 */
@Repository("ordersDao")
public interface OrdersDao {

    void insert(Orders orders);
    void update(Orders orders);
    void delete(String id);
    Orders select(String id);
    List<Orders> selectAll();

    List<Orders> getOrderByUserId(String userId);
}
