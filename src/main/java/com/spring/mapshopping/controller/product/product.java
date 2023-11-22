package com.spring.mapshopping.controller.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.mapshopping.service.ProductService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/product/*")
public class product {
    
    @Autowired
    private ProductService productService = ProductService.getProductService();

    @GetMapping("list")
    public void productmain(){
        log.info("list");
    }

    // @PostMapping("productmain")
    // public 


}
