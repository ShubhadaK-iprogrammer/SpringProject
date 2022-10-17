package com.project.serviceInterface;

import java.util.List;

import com.project.model.BiddingData;
import com.project.model.User;


public interface BiddingServiceInterface {
	public User saveUser(User user);
	public BiddingData saveOwnerBid(BiddingData biddingData);
	
	public List<User> getUserData();
	public List<BiddingData> getBiddingData();
	
	public User updateUser(User user);
	public BiddingData updateBiddingData(BiddingData biddingData);
	
	
	public User deleteUser(User user);
	public BiddingData deleteBiddingDataById(int id);
	
	public User getUserByEmail(String email);
	public BiddingData getBiddingDataById(int Id);

}
