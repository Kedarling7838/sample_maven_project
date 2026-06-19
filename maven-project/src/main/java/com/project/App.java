package com.project;

import java.util.ResourceBundle;

public class App {

    public int userLogin(String inUser, String inPwd) {

        ResourceBundle rb = ResourceBundle.getBundle("config");

        String username = rb.getString("username");
        String password = rb.getString("password");

        if (inUser.equals(username) && inPwd.equals(password)) {
            return 1;
        } else {
            return 0;
        }
    }

    public static void main(String[] args) {
        App app = new App();

        if (app.userLogin("abc", "abc@123") == 1) {
            System.out.println("Login Successful");
        } else {
            System.out.println("Login Failed");
        }
    }
}