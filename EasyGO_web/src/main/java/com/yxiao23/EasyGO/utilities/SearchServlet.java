package com.yxiao23.EasyGO.utilities;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import net.sf.json.JSONArray;
//import org.junit.Test;


@WebServlet("/search")

public class SearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        String keyword = req.getParameter("keyword");

        List<String> listData = getData(keyword);

        //System.out.println(JSONArray.fromObject(listData));
        resp.getWriter().write(JSONArray.fromObject(listData).toString());
    }


    private List<String> getData(String keyword){
        List<String> databaseList = new ArrayList<>();
        databaseList = AjaxUtility.getData();

        List<String> list = new ArrayList<String>();
        for(String data : databaseList){
            if(data.contains(keyword)){
                list.add(data);
            }
        }
        return list;
    }

}
