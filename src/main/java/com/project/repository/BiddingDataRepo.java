package com.project.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.project.model.BiddingData;


public interface BiddingDataRepo extends MongoRepository<BiddingData, Integer>{

}
