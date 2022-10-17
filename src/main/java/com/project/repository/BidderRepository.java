package com.project.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.project.model.Bidder;


public interface BidderRepository extends MongoRepository<Bidder, Integer>{

}
