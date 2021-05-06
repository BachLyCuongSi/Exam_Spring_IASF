package com.minhannguyen.minhan.service;

import com.minhannguyen.minhan.entity.UserEntity;
import com.minhannguyen.minhan.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service

public class UserServiceImpl implements UserService{
    @Autowired
    UserRepo userRepo;


    @Override
    public UserEntity login(UserEntity user) {
        return userRepo.findByUsernameAndPassword(user.getUsername(),user.getPassword());
    }
}
