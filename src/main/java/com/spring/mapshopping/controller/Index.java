package com.spring.mapshopping.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Index {

    @GetMapping("/hello")
    public @ResponseBody String Hello(){
        return "backend";
    }
	
}