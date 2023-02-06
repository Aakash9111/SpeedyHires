/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.bson.Document;

/**
 *
 * @author Aakash Dubey
 */
public class companysignup extends HttpServlet {

   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username= request.getParameter("username");
        String password= request.getParameter("password");
        String confirmpassword= request.getParameter("confirmpassword");
        if(!password.equals(confirmpassword)){
         response.sendRedirect("signup.html");
        }
        else{  //conneting to database
        MongoClient mongoClient = new MongoClient(new MongoClientURI("mongodb://127.0.0.1:27017"));
        //selecting database
        MongoDatabase database = mongoClient.getDatabase("speedy_hires"); 
        // selecting collection
        MongoCollection<Document> newsletter=database.getCollection("companyuser");
        //inserting document into collection
        Document user=new Document();
        user.append("username",username);
        user.append("password",password);
        newsletter.insertOne(user);
        response.sendRedirect("login.html");
        }
    }

  
  
}
