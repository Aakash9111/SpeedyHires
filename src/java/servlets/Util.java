package servlets;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.util.ArrayList;
import java.util.List;
import org.bson.Document;

/**
 *
 * @author Aakash Dubey
 */
public class Util {
 
    // Method to make a connection to the mongodb server listening on a default port
    private static MongoClient getConnection() {
        int port_no = 27017;
        String url = "localhost";
        MongoClient mongoClntObj = new MongoClient(url, port_no);
        return mongoClntObj;
    }
 
    // Method to search a user in the mongodb
    public static boolean searchUserInDb(String loginId, String loginPwd,String db_collection_name) {
        boolean user_found = false;
        String db_name = "speedy_hires";
        // Get the mongodb connection
        MongoDatabase db = getConnection().getDatabase(db_name);
        // Get the mongodb collection.
        MongoCollection col = db.getCollection(db_collection_name);
        // Get the particular record from the mongodb collection        
        List obj = new ArrayList();
        obj.add(new BasicDBObject("username", loginId));
        obj.add(new BasicDBObject("password", loginPwd));
        // Form a where query
        BasicDBObject whereQuery = new BasicDBObject();
        whereQuery.put("$and", obj);
        System.out.println("query is?= " + whereQuery.toString());
        FindIterable<Document> cursor = col.find(whereQuery);
        for(Document doc : cursor) {
            System.out.println("Found?= " + doc);
            user_found = true;
        }
        return user_found;
    }
}
