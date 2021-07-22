package com.clinic.service.position;

import com.clinic.model.Position;
import com.clinic.repository.IPositionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PositionService implements IPositionService {
    @Autowired
    private IPositionRepository positionRepository;

    @Override
    public Iterable<Position> findAll() {
        return positionRepository.findAll();
    }

    @Override
    public Optional<Position> findById(Long id) {
        return positionRepository.findById(id);
    }

    @Override
    public Position save(Position position) {
        return positionRepository.save(position);
    }

    @Override
    public void remove(Long id) {
        positionRepository.deleteById(id);
    }


    @Override
    public Iterable<Position> findAllByDepartment(Long departmentId) {
        return positionRepository.findAllByDepartment(departmentId);
    }

}
