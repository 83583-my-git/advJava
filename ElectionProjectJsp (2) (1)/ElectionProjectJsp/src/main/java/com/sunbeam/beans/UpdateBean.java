package com.sunbeam.beans;

import com.sunbeam.daos.CandidateDao;
import com.sunbeam.daos.CandidateDaoImpl;
import com.sunbeam.pojos.Candidate;

public class UpdateBean {
	private Candidate candidate;
	private int id;
	private String name;
	private String party;
	private int votes;

	
	public UpdateBean() {
		
	}
	
	
	public Candidate getCandidate() {
		return candidate;
	}


	public void setCandidate(Candidate candidate) {
		this.candidate = candidate;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getParty() {
		return party;
	}


	public void setParty(String party) {
		this.party = party;
	}


	public int getVotes() {
		return votes;
	}


	public void setVotes(int votes) {
		this.votes = votes;
	}


	public void updateCandidate() {
		try(CandidateDao canDao = new CandidateDaoImpl()){
			candidate = new Candidate(id, name, party, votes);
			canDao.update(candidate);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
