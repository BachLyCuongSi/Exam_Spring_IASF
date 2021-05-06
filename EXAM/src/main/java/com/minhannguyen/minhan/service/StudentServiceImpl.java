package com.minhannguyen.minhan.service;

import com.minhannguyen.minhan.entity.StudentEntity;
import com.minhannguyen.minhan.entity.UserEntity;
import com.minhannguyen.minhan.repository.StudentRepo;
import com.minhannguyen.minhan.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements  StudentService{
    @Autowired
    StudentRepo studentRepo;

    @Override
    public List<StudentEntity> getAll() {
        return studentRepo.findAll();
    }

    @Override
    public List<StudentEntity> getbyname(String fullname) {
        return studentRepo.findAllByFullname(fullname);
    }

    @Override
    public StudentEntity addstudent(StudentEntity student) {
        return studentRepo.save(student);
    }
}
