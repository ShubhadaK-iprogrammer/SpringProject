package com.project.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.project.model.User;


public interface UserRepo extends MongoRepository<User, String>
{
	@Override
	List<User> findAll();	


}
