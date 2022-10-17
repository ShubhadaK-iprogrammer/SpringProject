package com.project.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.project.model.AcceptedBids;


public interface AcceptBidRepo extends MongoRepository<AcceptedBids, Integer>{
	@Override
	public List<AcceptedBids>findAll();

}
