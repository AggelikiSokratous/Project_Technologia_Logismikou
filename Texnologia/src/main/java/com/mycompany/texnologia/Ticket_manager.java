package com.mycompany.texnologia;
import javax.swing.*;  

public class Ticket_manager extends JFrame{
   public String[][] array = new String[100][3];
   public  int i=0,j=0,k=0;
   
   
     public void ticketCreation(String tName,String tReason,String tDate){
      array[i][0]= tName;
      array[i][1]= tReason;
      array[i][2]= tDate;
      i++;
        }
    public void showRequest (){
      
     
    }    
    
     public void cancelRequest(){
       
       
   }
     
       
       
   
}
