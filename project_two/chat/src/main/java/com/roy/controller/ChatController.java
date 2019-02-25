package com.roy.controller;

import com.roy.service.NettyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChatController {

    @RequestMapping("/chat")
    public ModelAndView chat(@RequestParam("name") String name){

        ModelAndView model = new ModelAndView();
        model.addObject("user",name);
        model.setViewName("index");
        return model;
    }
}
