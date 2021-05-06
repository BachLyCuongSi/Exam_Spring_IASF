package com.minhannguyen.minhan.service;

import com.minhannguyen.minhan.entity.StudentEntity;
import com.minhannguyen.minhan.entity.UserEntity;

import java.util.List;

public interface StudentService {

    List<StudentEntity> getAll();

    List<StudentEntity> getbyname(String fullname);

    StudentEntity addstudent(StudentEntity student);

}
