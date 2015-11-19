/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.Farmerama;

import java.util.logging.Logger;

/**
 *
 * @author Tolis MacNamli
 */
public class savePhoto {

    PhotoAlbum pa = new PhotoAlbum();
    
    private String str;
    
    public savePhoto() {
   
    }

    public String getStr() {
        
        return str;
    }

    public void setStr(String str) {
        
        this.str = str;
        System.out.println(str);
        
        pa.putInDb(str);
        
    }
  
    
    
    
    
}
