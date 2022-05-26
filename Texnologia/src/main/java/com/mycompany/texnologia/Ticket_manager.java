package com.mycompany.texnologia;
public class Ticket_manager{
   String[][] array = new String[100][100];
   int i=0,j=0,k=0;
   void ticketCreation(String tName,String tReason,String tDate){
      array[i][0]= tName;
      array[i][1]= tReason;
      array[i][2]= tDate;
      i++;
      for (k=0;k<i;k++)
          for(j=0;j<3;j++)
            System.out.println(array[k][j]);
   }
   
   public static void cancelRequest(){
       
       
   }
}
