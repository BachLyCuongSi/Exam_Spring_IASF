package com.minhannguyen.minhan.repository;

import com.minhannguyen.minhan.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepo extends JpaRepository<UserEntity,Integer> {
    UserEntity findByUsernameAndPassword(String username,String password);

    @Query("select u from UserEntity u where u.username = :username and u.password = :password")
    UserEntity findUser(String username,String password);
}
