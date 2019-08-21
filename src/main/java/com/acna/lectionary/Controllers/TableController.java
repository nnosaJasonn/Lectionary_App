package com.acna.lectionary.Controllers;

import com.acna.lectionary.Models.Reading;
import com.acna.lectionary.Models.Season;
import com.acna.lectionary.Repositories.ReadingRepository;
import com.acna.lectionary.Repositories.SeasonRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TableController {
    private SeasonRepository seasonDao;
    private ReadingRepository readingDao;

    public TableController(SeasonRepository seasonDao, ReadingRepository readingDao) {
        this.seasonDao = seasonDao;
        this.readingDao = readingDao;
    }

    @GetMapping("/seasons.json")

    public @ResponseBody Iterable<Season> allSeasons(){
        return seasonDao.findAll();
    }

    @GetMapping("/{year}/{season}/reading-season.json")
    public @ResponseBody Iterable<Reading> readingSeason(
            @PathVariable Long year,
            @PathVariable Long season
    ){
        return readingDao.findAllByYear_IdAndProper_Season_Id(year, season);
    }
}
