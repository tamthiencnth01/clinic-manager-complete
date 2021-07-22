package com.clinic.repository;


import com.clinic.model.Position;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface IPositionRepository extends JpaRepository<Position, Long> {
	@Query ("select p from Position p where p.department.id = ?1 ")
	Iterable<Position> findAllByDepartment(Long departmentId);
}
