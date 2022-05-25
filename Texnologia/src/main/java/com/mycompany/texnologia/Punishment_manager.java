package com.mycompany.texnologia;
import java.util.HashMap;

public class Punishment_manager {
    static final HashMap<String,String> punishMap = new HashMap<>(); //map that contains the name of the punished and the punish
    
    public static void sactionRequest(String[] args){
        punishMap.put("","");
    }
    
    public static void warningSaction(String[] args){
    }
    
    public static void fineSaction(String[] args){
    }
    
    public static void exclusionSaction(String[] args){
    } 
}
