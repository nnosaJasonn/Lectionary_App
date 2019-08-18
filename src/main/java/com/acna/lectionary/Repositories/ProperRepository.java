package com.acna.lectionary.Repositories;

import com.acna.lectionary.Models.Proper;
import org.springframework.data.repository.CrudRepository;

public interface ProperRepository extends CrudRepository<Proper, Long> {
    Proper findBySeasonNameAndNameStartingWith(String season, String week);
}
