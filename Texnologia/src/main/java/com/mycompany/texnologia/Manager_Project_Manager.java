/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.texnologia;
import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime; 
/**
 *
 * @author chris
 */
public class Manager_Project_Manager {//utility class
    static void createOpenAd(String name, String deadline, String title, String category, String decsription )//class for creating open ads 
    {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        Project project = new Project();
        project.creator= name;
        project.end_date=deadline;
        project.start_date=dtf.format(now);
        project.state=0;
        project.title=title;
        project.category=category;
        project.description=decsription;
        //Code to store the project in a database, it will not be implemented
    }
    static void createPersonalisedAd(String name, String deadline, String title, String category, String decsription )//class for creating open ads 
    {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        Project project = new Project();
        project.creator= name;
        project.end_date=deadline;
        project.start_date=dtf.format(now);
        project.state=0;
        project.title=title;
        project.category=category;
        project.description=decsription;
        
        //Code to store the project in the pending applications of the user specified in a database, it will not be implemented
    }
    static void setGrade(String title,String grade){
    //updates the value of the grade in the database, the code will not be implemented
    }
}
