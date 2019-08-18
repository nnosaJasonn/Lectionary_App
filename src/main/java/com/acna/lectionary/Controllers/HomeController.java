package com.acna.lectionary.Controllers;

import com.acna.lectionary.Models.Proper;
import com.acna.lectionary.Repositories.ProperRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

    private ProperRepository properDao;

    public HomeController(ProperRepository properDao) {
        this.properDao = properDao;
    }

    @GetMapping("/{season}/{week}/proper.json")
    public @ResponseBody
    Proper viewYears(
            @PathVariable String week,
            @PathVariable String season
    ){
        return properDao.findBySeasonNameAndNameStartingWith(season, week);
    }

    @GetMapping("/")
    public String home(){
        return "/index";
    }

}
