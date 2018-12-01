package com.yxiao23.EasyGO.controller;

import com.yxiao23.EasyGO.biz.*;
import com.yxiao23.EasyGO.entity.*;
import com.yxiao23.EasyGO.utilities.MongoDBDataStoreUtilities;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author yulinxiao
 * @date 2018-11-01 01:10
 */
@Controller("globalController")
public class GlobalController {
    @Autowired
    private GlobalBiz globalBiz;
    @Autowired
    private UsersBiz usersBiz;
    @Autowired
    private AgencyInfoBiz agencyInfoBiz;
    @Autowired
    private CarInfoBiz carInfoBiz;
    @Autowired
    private OrdersBiz ordersBiz;

    @RequestMapping("/to_login")
    public String toLogin() {
        return "login";
    }

    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam String id, @RequestParam String password,
                        @RequestParam(value = "type") String type) {

        Users users = globalBiz.login(id, password);
        if (users == null) {
            return "redirect:to_login";
        }
        if (type.equals("1,")) {
            if (!users.getUserType().equals("manager")) {
                return "redirect:to_login";
            } else if (users.getUserType().equals("manager")) {
                return "redirect:/users/list";
            }
        }
        session.setAttribute("users", users);
        session.setAttribute("userId", users.getUserId());

        return "redirect:to_home";

    }

    @RequestMapping("/to_register")
    public String toRegister() {
        return "register";
    }

    @RequestMapping("/register")
    public String register(HttpSession session,
                           @RequestParam String id,
                           @RequestParam String name,
                           @RequestParam String phone,
                           @RequestParam String password,
                           @RequestParam String repassword
    ) {
        Users users = new Users();
        if (password.equals(repassword)) {
            users.setUserId(id);
            users.setUserName(name);
            users.setUserPhone(phone);
            users.setPassword(password);
            users.setUserType("user");
            session.setAttribute("users", users);
            usersBiz.add(users);
            return "redirect:to_home";
        }
        return "redirect:to_register";

    }

    @RequestMapping("/self")
    public String self() {
        return "self";
    }

    @RequestMapping("/quit")
    public String quit(HttpSession session) {
        session.setAttribute("users", null);
        return "redirect:to_login";
    }

    @RequestMapping("/to_change_password")
    public String toChangePassword() {
        return "change_password";
    }

    @RequestMapping("/change_password")
    public String changePassword(HttpSession session, @RequestParam String old,
                                 @RequestParam String new1, @RequestParam String new2) {
        Users users = (Users) session.getAttribute("users");
        if (users.getPassword().equals(old)) {
            if (new1.equals(new2)) {
                users.setPassword(new1);
                globalBiz.changePassword(users);
                return "redirect:self";
            }
        }
        return "redirect:to_change_password";
    }

    @RequestMapping("/to_home")
    public String toHome() {
        return "home";
    }

    @RequestMapping(value = "/home", params = "zip")
    public String home(String zip) {
        //根据location调数据库经纬度数据

        System.out.println("11111");
        return "redirect:car_location";

    }

    @RequestMapping("/to_car_location")
    public String toCarLocation(@RequestParam(value = "pickLocation") String location, Model model) {

        List<ResultBean> results = agencyInfoBiz.getLocationByZip(location);

        JSONArray jsonArray = JSONArray.fromObject(results);
        model.addAttribute("jsonArray", jsonArray);
        System.out.println(jsonArray);


        return "car_location";
    }

    @RequestMapping("/car_location")
    public String carLocation() {
        return "to_choose_car";
    }

    @RequestMapping("/to_choose_car")
    public String toChooseCar(@RequestParam(value = "id") String agencyId, Model model) {
        List<CarInfo> list = carInfoBiz.getByAgencyId(agencyId);
        //JSONArray jsonArray = JSONArray.fromObject(list);
        model.addAttribute("list", list);
        System.out.println(list);


        return "choose_car";
    }

    @RequestMapping("/choose_car")
    public String chooseCar() {
        return "to_review";
    }

    @RequestMapping("/to_review")
    public String toReivew(Model model, @CookieValue("carId") String carId) {
        CarInfo carInfo = carInfoBiz.get(carId);
        model.addAttribute(carInfo);
        return "review";
    }

    @RequestMapping("/review")
    public String review() {
        return "redirect:home";
    }


    @RequestMapping("/to_write_Review")
    public String toWriteReview(@RequestParam(value = "carId") String carId, Model model) {
        //将车ID，type，price，name传过来，封装到
        CarInfo carInfo = carInfoBiz.get(carId);
        model.addAttribute(carInfo);

        return "writeReview";
    }

    @RequestMapping("/writeReview")
    public String writeReview(@RequestParam(value = "carId") String carId,
                              @RequestParam(value = "carName") String carName,
                              @RequestParam(value = "carType") String carType,
                              @RequestParam(value = "carPrice") double carPrice,
                              @RequestParam(value = "carImage") String carImage,
                              @RequestParam(value = "reviewtext") String reviewText,
                              @RequestParam(value = "rating") String reviewRating,
                              @RequestParam(value = "userName") String username) {

        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");//可以方便地修改日期格式
        String reviewDate = dateFormat.format(now);

        String result = MongoDBDataStoreUtilities.insertReview(username, carId, carName, carType, carPrice,
                carImage, Integer.parseInt(reviewRating), reviewDate, reviewText);

        return "submittedReview";
//
    }



    @RequestMapping("/to_view_Review")
    public String toViewReview(@RequestParam(value = "carId") String carId, Model model) {

        List<Review> reviews = MongoDBDataStoreUtilities.selectReview(carId);
        model.addAttribute("reviews",reviews);
        return "viewReview";
    }

    @RequestMapping("/to_view_order")
    public String toViewOrder(@RequestParam(value = "userId") String userId, Model model) {
        List<CarInfo> carInfos = new ArrayList<>();
        List<Orders> orders = ordersBiz.getOrderByUserId(userId);
        List<OrderAndCarInfo> carAndOrderList = new ArrayList();

        for(int i = 0; i < orders.size(); i++){
            carInfos.add(carInfoBiz.get(orders.get(i).getCarId()));
        }

        for(int i = 0; i < orders.size(); i++){
            OrderAndCarInfo oac = new OrderAndCarInfo();
            oac.setCarImage(carInfos.get(i).getCarImage());
            oac.setCarName(carInfos.get(i).getCarName());
            oac.setCarType(carInfos.get(i).getCarType());
            oac.setOrderId(orders.get(i).getOrderId());
            oac.setCheckNum(orders.get(i).getCheckNum());
            oac.setPickupTime(orders.get(i).getPickupTime());
            oac.setReturnTime(orders.get(i).getReturnTime());
            oac.setRenterName(orders.get(i).getRenterName());
            oac.setRenterPhone(orders.get(i).getRenterPhone());
            oac.setTotalPrice(orders.get(i).getTotalPrice());
            carAndOrderList.add(oac);
        }

        model.addAttribute("list",carAndOrderList);
        return "viewOrder";
    }

    @RequestMapping("/to_update_order")
    public String toUpdateOrder(@RequestParam("orderId") String orderId,
                                Model model){
        Orders orders = ordersBiz.get(orderId);
        model.addAttribute(orders);

        return "updateOrder";
    }

    @RequestMapping("/update_order")
    public String updateOrder(@RequestParam("orderId") String orderId,
                              @RequestParam("pickupTime") String pickupTime,
                              @RequestParam("returnTime") String returnTime,
                              @RequestParam("phone") String phone,
                              @RequestParam("name") String name,
                              Model model){
        String userId = ordersBiz.get(orderId).getUserId();
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
        orders.setRenterPhone(phone);
        orders.setRenterName(name);

        ordersBiz.edit(orders);

        model.addAttribute("userId",userId);
        return "redirect:to_view_order";
    }


    @RequestMapping("/to_delete_order")
    public String toDeleteOrder(@RequestParam(value = "orderId") String orderId,
                                Model model){
        String userId = ordersBiz.get(orderId).getUserId();
        ordersBiz.remove(orderId);

        model.addAttribute("userId",userId);
        return "redirect:to_view_order";


    }

}
