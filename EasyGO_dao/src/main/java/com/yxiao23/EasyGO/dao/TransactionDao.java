package com.yxiao23.EasyGO.dao;

import com.yxiao23.EasyGO.entity.ResultBean;
import com.yxiao23.EasyGO.entity.Transaction;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-29 04:04
 */
@Repository("transactionDao")
public interface TransactionDao {

    List<Transaction> getTransaction();
}
