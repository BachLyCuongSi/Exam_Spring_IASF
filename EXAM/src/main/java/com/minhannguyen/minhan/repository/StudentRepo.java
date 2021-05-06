package com.minhannguyen.minhan.repository;

import com.minhannguyen.minhan.entity.StudentEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StudentRepo extends JpaRepository<StudentEntity,Integer> {
    List<StudentEntity> findAllByFullname(String fullname);
}
