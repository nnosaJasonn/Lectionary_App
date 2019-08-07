package com.acna.lectionary.Controllers;

import com.acna.lectionary.Models.Proper;
import com.acna.lectionary.Models.Reading;
import com.acna.lectionary.Models.Year;
import com.acna.lectionary.Repositories.ProperRepository;
import com.acna.lectionary.Repositories.ReadingRepository;
import com.acna.lectionary.Repositories.YearRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SundayController {

    private final YearRepository yearDao;

    private final ProperRepository properDao;
    private final ReadingRepository readingDao;

    public SundayController(YearRepository yearDao, ProperRepository properDao, ReadingRepository readingDao) {
        this.yearDao = yearDao;
        this.properDao = properDao;
        this.readingDao = readingDao;
    }

    @GetMapping("/year.json")
    public @ResponseBody
    Iterable<Year> viewYears(){
        return yearDao.findAll();
    }

    @GetMapping("/proper.json")
    public @ResponseBody
    Iterable<Proper> viewPropers(){
        return properDao.findAll();
    }
    @GetMapping("/{id}/reading.json")
    public @ResponseBody
    Reading viewReadings(@PathVariable Long id){
        return readingDao.findOne(id);
    }

    @GetMapping("/sunday/{id}")
    public String thisSunday(@PathVariable Long id){
        return "readings/sunday";
    }

}
