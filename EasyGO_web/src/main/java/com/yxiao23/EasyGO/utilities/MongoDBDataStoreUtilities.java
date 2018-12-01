package com.yxiao23.EasyGO.utilities;

import com.mongodb.MongoClient;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.DBCursor;
import com.mongodb.AggregationOutput;
import com.yxiao23.EasyGO.entity.Review;

import java.util.*;

public class MongoDBDataStoreUtilities {
    static DBCollection myReviews;

    public static DBCollection getConnection() {
        MongoClient mongo;
        mongo = new MongoClient("localhost", 27017);

        DB db = mongo.getDB("CustomerReviews");
        myReviews = db.getCollection("final_project");
        return myReviews;
    }


    public static String insertReview(String username, String carId, String carName,
                                      String carType, Double carPrice,String carImage,
                                      int reviewRating, String reviewDate, String reviewText) {
        try {
            getConnection();
            BasicDBObject doc = new BasicDBObject("title", "final_project").
                    append("username", username).
                    append("carId", carId).
                    append("carName", carName).
                    append("carType", carType).
                    append("carPrice", carPrice).
                    append("carImage", carImage).
                    append("reviewRating", reviewRating).
                    append("reviewDate", reviewDate).
                    append("reviewText", reviewText);
            myReviews.insert(doc);
            return "Successful";
        } catch (Exception e) {
            return "Unsuccessful";
        }

    }

//    public static HashMap<String, ArrayList<Review>> selectReview() {
//        HashMap<String, ArrayList<Review>> reviews = null;
//
//        try {
//
//            getConnection();
//            DBCursor cursor = myReviews.find();
//            reviews = new HashMap<String, ArrayList<Review>>();
//            while (cursor.hasNext()) {
//                BasicDBObject obj = (BasicDBObject) cursor.next();
//
//
//                if (!reviews.containsKey(obj.getString("carId"))) {
//                    ArrayList<Review> arr = new ArrayList<Review>();
//                    reviews.put(obj.getString("carId"), arr);
//                }
//
//                ArrayList<Review> listReview = reviews.get(obj.getString("carId"));
//                Review review = new Review(obj.getString("username"), obj.getString("carId"), obj.getString("carName"),
//                        obj.getString("carType"), obj.getDouble("carPrice"), obj.getString("carImage"),
//                        obj.getInt("reviewRating"), obj.getString("reviewDate"), obj.getString("reviewText"));
//                listReview.add(review);
//
//            }
//            return reviews;
//        } catch (Exception e) {
//            reviews = null;
//            return reviews;
//        }
//    }

    public static List<Review> selectReview(String carId) {
        List<Review> reviews = new ArrayList<>();

        try {

            getConnection();
            DBCursor cursor = myReviews.find();
            while (cursor.hasNext()) {
                BasicDBObject obj = (BasicDBObject) cursor.next();
                if(obj.containsValue(carId)){
                    Review review = new Review(obj.getString("username"), obj.getString("carId"), obj.getString("carName"),
                            obj.getString("carType"), obj.getDouble("carPrice"), obj.getString("carImage"),
                            obj.getInt("reviewRating"), obj.getString("reviewDate"), obj.getString("reviewText"));
                    reviews.add(review);
                }
            }
            return reviews;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            reviews = null;
            return reviews;
        }
    }
}	