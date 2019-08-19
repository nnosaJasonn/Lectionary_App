package com.acna.lectionary.Controllers;

import com.acna.lectionary.Models.Proper;
import com.acna.lectionary.Models.Reading;
import com.acna.lectionary.Repositories.ProperRepository;
import com.acna.lectionary.Repositories.ReadingRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

    private ProperRepository properDao;
    private ReadingRepository readingDao;

    public HomeController(ProperRepository properDao, ReadingRepository readingDao) {
        this.properDao = properDao;
        this.readingDao = readingDao;
    }

    @GetMapping("/{week}/proper.json")
    public @ResponseBody
    Proper viewProperByWeek(
            @PathVariable String week
    ){
        return properDao.findByName(week);
    }

    @GetMapping("/{id}/{year}/readings.json")
    public @ResponseBody
    Reading viewReadingByProper(
            @PathVariable Long id,
            @PathVariable Long year
    ){
        return readingDao.findByProper_IdAndYear_Id(id, year);
    }

    @GetMapping("/")
    public String home(){
        return "/index";
    }

}
