package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Films;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FilmsDao extends JpaRepository<Films, Long> {
}
