package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Lieux;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LieuxDao extends JpaRepository<Lieux, Long> {
}
