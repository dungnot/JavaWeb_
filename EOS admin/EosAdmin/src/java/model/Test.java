/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Dũng
 */
public class Test {

    int id;
    String t_name;
    String t_type;
    String t_code;
    int id_course;
    int t_time;

    public Test(int id, String t_name, String t_type, String t_code, int id_course, int t_time) {
        this.id = id;
        this.t_name = t_name;
        this.t_type = t_type;
        this.t_code = t_code;
        this.id_course = id_course;
        this.t_time = t_time;
    }

    public int getT_time() {
        return t_time;
    }

    public void setT_time(int t_time) {
        this.t_time = t_time;
    }
    
    

    public Test(int id, String t_name, String t_type, String t_code, int id_course) {
        this.id = id;
        this.t_name = t_name;
        this.t_type = t_type;
        this.t_code = t_code;
        this.id_course = id_course;
    }

    public Test() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public String getT_type() {
        return t_type;
    }

    public void setT_type(String t_type) {
        this.t_type = t_type;
    }

    public String getT_code() {
        return t_code;
    }

    public void setT_code(String t_code) {
        this.t_code = t_code;
    }

    public int getId_course() {
        return id_course;
    }

    public void setId_course(int id_course) {
        this.id_course = id_course;
    }

    
}
