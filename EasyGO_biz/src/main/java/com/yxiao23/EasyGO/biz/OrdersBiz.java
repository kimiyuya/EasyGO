package com.yxiao23.EasyGO.biz;

import com.yxiao23.EasyGO.entity.Orders;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-29 04:41
 */

public interface OrdersBiz {
    void add(Orders orders);
    void edit(Orders orders);
    void remove(String id);
    Orders get(String id);
    List<Orders> getAll();

    List<Orders> getOrderByUserId(String userId);
}
