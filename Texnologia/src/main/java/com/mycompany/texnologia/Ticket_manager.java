package com.mycompany.texnologia;
public class Ticket_manager{
   String[][] array = new String[100][100];
   void ticketCreation(String input){
       int i=0,j=0,k=0;
       if (((k % 2)==0)|((k % 2)==2)){
           array[i][j]=input;
           i++;
        } 
       else {
           array[i][j]=input;
           j++;
       }
       System.out.println(array[i][j]);
   }
   
   public static void cancelRequest(){
       
       
   }
}
