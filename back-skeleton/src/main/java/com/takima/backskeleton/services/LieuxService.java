package com.takima.backskeleton.services;

import com.takima.backskeleton.DAO.LieuxDao;
import com.takima.backskeleton.models.Lieux;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class LieuxService {
    private final LieuxDao lieuxDao;

    public List<Lieux> findAll() {
        return lieuxDao.findAll();
    }
}

