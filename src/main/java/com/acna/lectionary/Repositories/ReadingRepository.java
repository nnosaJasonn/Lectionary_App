package com.acna.lectionary.Repositories;

import com.acna.lectionary.Models.Reading;
import org.springframework.data.repository.CrudRepository;

public interface ReadingRepository extends CrudRepository<Reading, Long> {
    Iterable<Reading> findAllByYear_Id(Long id);
}
