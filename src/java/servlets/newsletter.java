package servlets;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.bson.Document;

/**
 *
 * @author Aakash Dubey
 */
public class newsletter extends HttpServlet {

       @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
         //conneting to database
        MongoClient mongoClient = new MongoClient(new MongoClientURI("mongodb://127.0.0.1:27017"));
        //selecting database
        MongoDatabase database = mongoClient.getDatabase("speedy_hires"); 
        // selecting collection
        MongoCollection<Document> newsletter=database.getCollection("NewsLetters");
        //inserting document into collection
        newsletter.insertOne(new Document().append("email",email));
       
    }

   
}
