package com.example.demo;

import org.springframework.web.bind.annotation.*;

@RestController
public class DemoController {
    @PostMapping("/demo")
    public String getHelloMessage(@RequestBody Input input){

        return "Hello World hiii";
    }
}
