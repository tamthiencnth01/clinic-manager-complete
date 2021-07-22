package com.clinic.service.position;

import com.clinic.model.Position;
import com.clinic.service.IGeneralService;

public interface IPositionService extends IGeneralService<Position> {
    Iterable<Position> findAllByDepartment(Long departmentId);
}
