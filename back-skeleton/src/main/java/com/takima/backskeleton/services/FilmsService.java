package com.takima.backskeleton.services;

import com.takima.backskeleton.DAO.FilmsDao;
import com.takima.backskeleton.models.Films;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class FilmsService {
    private final FilmsDao filmsDao;

    public List<Films> findAll() {
        return filmsDao.findAll();
    }
}

