/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Helper;

import jdk.jfr.events.FileWriteEvent;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class helper {

    public static boolean deleteFile(String path) {
        boolean f = false;
        try {
            File file = new File(path);
            f = file.delete();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public static boolean saveFile(InputStream is, String path) {
        boolean f = false;
        try {
            byte[] b = new byte[is.available()];
            //it will read the data and put in byte array
            is.read(b);
            System.out.println(path);
            try ( FileOutputStream fos = new FileOutputStream(path)) {
                //           to send this data we need file writer
                fos.write(b);
                fos.flush();
                fos.close();
            }
            f = true;

        } catch (Exception e) {
        }
        return f;
    }
    
    public static boolean savePostFile(InputStream is, String path) {
        boolean f = false;
        try {
            byte[] b = new byte[is.available()];
            //it will read the data and put in byte array
            is.read(b);
            System.out.println("inside first try method of savepostImage");
            System.out.println(path);
            try ( FileOutputStream fos = new FileOutputStream(path)) {
                //           to send this data we need file writer
                System.out.println("inside try of savePostImage");
                fos.write(b);
                fos.flush();
                fos.close();
            }
            f = true;

        } catch (Exception e) {
            System.out.println("catch statement run inside helper's method savePostFile");
        }
        return f;
    }
}
