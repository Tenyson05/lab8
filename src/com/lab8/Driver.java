package com.lab8;

import com.lab8.database.DBManager;
import com.lab8.models.Author;

public class Driver {

	public static void main(String[] args) {
        DBManager db = DBManager.getInstance();
        System.out.println(db.getAuthor(1));
        
//        System.out.println(db.addAuthor(new Author("Tester Fname","Tester LName","testeremail@email.org")));
//        System.out.println(db.addAuthor(new Author("AP","Class","APClass@email.org")));
        
        Author author3 = db.getAuthor(3);
        author3.setLname("Spence");
        if(author3 != null){
        	System.out.println("success!");
        }else {
        	System.out.println("error error");
        }

        for(Author a : db.getAuthors(20)){
        	System.out.println(a);
        }
        
        //Native Query Example
        final String nativeQuery = "select * from Author where lname like \"%Name\" limit 20";
        
        for(Author a : db.runNativeQueryOnAuthors(nativeQuery)){
        	System.out.println(a);
        }
        
        
	}

}
