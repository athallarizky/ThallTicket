package com.TicketingEvent.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuthController {

    @RequestMapping("/login")
    public String login(){
        return "Login";
    }

    @RequestMapping("/register")
    public String register(){
        return "Register";
    }
}
