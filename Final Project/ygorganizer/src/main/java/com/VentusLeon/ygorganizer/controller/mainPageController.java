package com.VentusLeon.ygorganizer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class mainPageController {
    @GetMapping("/mainPage")
    public String showMainPage(){
        return "mainPage";
    }

    @GetMapping("/viewPage")
    public String showViewPage(){
        return "viewPage";
    }

    @GetMapping("/viewCards")
    public String showViewCards(){
        return "viewCards";
    }

    @GetMapping("/viewSets")
    public String showViewSets(){
        return "viewSets";
    }

    @GetMapping("/editPage")
    public String showEditPage() { return "editPage";}

}
