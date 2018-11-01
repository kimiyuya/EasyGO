package com.yxiao23.EasyGO.controller;

import com.yxiao23.EasyGO.biz.AgencyInfoBiz;
import com.yxiao23.EasyGO.biz.CarInfoBiz;
import com.yxiao23.EasyGO.biz.OrdersBiz;
import com.yxiao23.EasyGO.biz.UsersBiz;
import com.yxiao23.EasyGO.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.soap.SOAPBinding;
import javax.servlet.ServletContext;
import java.util.Map;

/**
 * @author yulinxiao
 * @date 2018-10-31 20:45
 */
@Controller("webController")
@RequestMapping("/web")
public class WebController {

    @Autowired
    private AgencyInfoBiz agencyInfoBiz;
    @Autowired
    private CarInfoBiz carInfoBiz;
    @Autowired
    private UsersBiz usersBiz;
    @Autowired
    private ServletContext servletContext;

    @RequestMapping("/register")
    public String register(Map<String,Object> map){
        //map.put("users",new Users());
        return "register";
    }

    @RequestMapping("/addUser")
    public String addUser(Users users){
        usersBiz.add(users);
        return "register";
    }




    @RequestMapping("/login")
    public String login(Users users){

        return "login";
    }

}
