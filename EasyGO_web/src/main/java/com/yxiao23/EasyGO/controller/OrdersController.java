package com.yxiao23.EasyGO.controller;

import com.yxiao23.EasyGO.biz.AgencyInfoBiz;
import com.yxiao23.EasyGO.biz.CarInfoBiz;
import com.yxiao23.EasyGO.biz.OrdersBiz;
import com.yxiao23.EasyGO.entity.*;
import com.yxiao23.EasyGO.global.Contant;
import com.yxiao23.EasyGO.utilities.MySqlDataStoreUtilities;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author yulinxiao
 * @date 2018-11-24 21:22
 */
@Controller("ordersController")
@RequestMapping("/orders")
public class OrdersController {

    @Autowired
    private OrdersBiz ordersBiz;
    @Autowired
    private CarInfoBiz carInfoBiz;


    @RequestMapping("/list")
    public String list(Map<String, Object> map) {
        map.put("list", ordersBiz.getAll());
        return "orders_list";
    }

    //多这一步是为了使用springmvc的form标签，所以必须传一个对象过来
    @RequestMapping("/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("orders", new CarInfo());
        //map.put("orderslist",ordersBiz.getAll());
        return "orders_add";
    }

    //管理员的接口
    @RequestMapping("/add")
    public String add(@RequestParam("renterName") String name,
                      @RequestParam("renterPhone") String phone,
                      @RequestParam("userId") String userId,
                      @RequestParam("agencyId") String agencyId,
                      @RequestParam("carId") String carId,
                      @RequestParam("pickupTime") String pickupTime,
                      @RequestParam("returnTime") String returnTime) {
        Orders orders = new Orders();
        //将实时时间点设置为订单编号
        SimpleDateFormat df = new SimpleDateFormat("HHmmss");//设置日期格式
        String orderId = df.format(new Date());

        double carPrice = carInfoBiz.get(carId).getCarPrice();
        double totalPrice = 0;
        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
        Date pTime = null;
        Date rTime = null;
        try {
            pTime = sdf.parse(pickupTime);
            rTime = sdf.parse(returnTime);
            Calendar c1 = Calendar.getInstance();   //当前日期
            Calendar c2 = Calendar.getInstance();
            c1.setTime(pTime);
            c2.setTime(rTime);
            int ptime = c1.get(Calendar.DATE);
            int rtime = c2.get(Calendar.DATE);
            int totalDay = rtime - ptime;
            totalPrice = carPrice * totalDay;
        } catch (ParseException e) {
            e.printStackTrace();
        }


        Timestamp createTime = new Timestamp(Calendar.getInstance().getTimeInMillis());
        String status = "0";


        orders.setAgencyId(agencyId);
        orders.setCarId(carId);
        orders.setCheckNum(orderId);
        orders.setCreateTime(createTime);
        orders.setOrderId(orderId);
        orders.setOrderStatus(status);
        orders.setPickupTime(pTime);
        orders.setReturnTime(rTime);
        orders.setRenterName(name);
        orders.setRenterPhone(phone);
        orders.setTotalPrice(totalPrice);
        orders.setUserId(userId);


        ordersBiz.add(orders);
        return "redirect:list";
    }

    @RequestMapping("/userAdd")

    public String userAdd(
            @CookieValue("pickDate") String pickupTime,
            @CookieValue("returnDate") String returnTime,
            @CookieValue("carId") String carId,
            @CookieValue("agencyId") String agencyId,
            @RequestParam("firstName") String fname,
            @RequestParam("lastName") String lname,
            @RequestParam("phoneNumber") String phone,
            HttpSession httpSession,
            Model model) {

        String userId = (String) httpSession.getAttribute("userId");
        if ("".equals(userId) && null == userId) {
            userId = "null";
        }

        Orders orders = new Orders();
        //将实时时间点设置为订单编号
        SimpleDateFormat df = new SimpleDateFormat("HHmmss");//设置日期格式
        String orderId = df.format(new Date());

        double carPrice = carInfoBiz.get(carId).getCarPrice();
        double totalPrice = 0;
        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
        Date pTime = null;
        Date rTime = null;
        try {
            pTime = sdf.parse(pickupTime);
            rTime = sdf.parse(returnTime);
            Calendar c1 = Calendar.getInstance();   //当前日期
            Calendar c2 = Calendar.getInstance();
            c1.setTime(pTime);
            c2.setTime(rTime);
            int ptime = c1.get(Calendar.DATE);
            int rtime = c2.get(Calendar.DATE);
            int totalDay = rtime - ptime;
            totalPrice = carPrice * totalDay;
        } catch (ParseException e) {
            e.printStackTrace();
        }


        Timestamp createTime = new Timestamp(Calendar.getInstance().getTimeInMillis());
        String status = "0";


        orders.setAgencyId(agencyId);
        orders.setCarId(carId);
        orders.setCheckNum(orderId);
        orders.setCreateTime(createTime);
        orders.setOrderId(orderId);
        orders.setOrderStatus(status);
        orders.setPickupTime(pTime);
        orders.setReturnTime(rTime);
        orders.setRenterName(fname + " " + lname);
        orders.setRenterPhone(phone);
        orders.setTotalPrice(totalPrice);
        orders.setUserId(userId);


        ordersBiz.add(orders);

        model.addAttribute("confirmNumber", orders.getCheckNum());
        return "confirmation";
    }

    //    以下两种写法都可以
//    @RequestMapping(value = "/to_update", params = "id")
//    public String toUpdate(String id,Map<String,Object> map){
//        map.put("users",usersBiz.get(id));
//        return "users_update";
//    }
    @RequestMapping(value = "/to_update")
    public String toUpdate(Map<String, Object> map, @RequestParam(value = "id") String id) {
        map.put("orders", ordersBiz.get(id));
        return "orders_update";
    }

    @RequestMapping("/update")
    public String update(@RequestParam("orderId") String orderId,
                         @RequestParam("pickupTime") String pickupTime,
                         @RequestParam("returnTime") String returnTime,
                         @RequestParam("orderStatus") String status) {

        Orders orders = ordersBiz.get(orderId);

        double carPrice = carInfoBiz.get(orders.getCarId()).getCarPrice();
        double totalPrice = 0;
        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
        Date pTime = null;
        Date rTime = null;
        try {
            pTime = sdf.parse(pickupTime);
            rTime = sdf.parse(returnTime);
            Calendar c1 = Calendar.getInstance();   //当前日期
            Calendar c2 = Calendar.getInstance();
            c1.setTime(pTime);
            c2.setTime(rTime);
            int ptime = c1.get(Calendar.DATE);
            int rtime = c2.get(Calendar.DATE);
            int totalDay = rtime - ptime;
            totalPrice = carPrice * totalDay;
        } catch (ParseException e) {
            e.printStackTrace();
        }

        orders.setPickupTime(pTime);
        orders.setReturnTime(rTime);
        orders.setTotalPrice(totalPrice);
        orders.setOrderStatus(status);

        ordersBiz.edit(orders);
        return "redirect:list";
    }

    @RequestMapping(value = "/remove", params = "id")
    public String remove(String id) {
        ordersBiz.remove(id);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_sale_report")
    public String toSaleReport(Model model) {
        List<Transaction> transaction = MySqlDataStoreUtilities.selectDailyTransaction();
        List<RentalAmount> rentalAmounts = MySqlDataStoreUtilities.selectSaleAmount();

        JSONArray rentalAmountsJson = JSONArray.fromObject(rentalAmounts);
        System.out.println(rentalAmountsJson);
        model.addAttribute("rentalAmounts", rentalAmounts);
        model.addAttribute("rentalAmountsJson", rentalAmountsJson);
        model.addAttribute("transaction", transaction);

        return "sale_report";
    }
}
