package com.yxiao23.EasyGO.dao;

import com.yxiao23.EasyGO.entity.Users;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-30 23:18
 */
@Repository("usersDao")
public interface UsersDao {

    void insert(Users users);
    void update(Users users);
    void delete(String id);
    Users select(String id);
    List<Users> selectAll();
}
