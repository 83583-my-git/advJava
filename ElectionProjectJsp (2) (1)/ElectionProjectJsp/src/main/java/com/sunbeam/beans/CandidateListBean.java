package com.sunbeam.beans;

import java.util.ArrayList;
import java.util.List;

import com.sunbeam.daos.CandidateDao;
import com.sunbeam.daos.CandidateDaoImpl;
import com.sunbeam.pojos.Candidate;

public class CandidateListBean {
	private List<Candidate> candidateList;
	
	public CandidateListBean() {}

	public List<Candidate> getCandidateList() {
		return candidateList;
	}

	public void setCandidateList(List<Candidate> candidateList) {
		this.candidateList = candidateList;
	}

	
	public void fetchCandidate() {
		System.out.println("heeee");
		try(CandidateDao canDao = new CandidateDaoImpl()){
			candidateList = canDao.findAll();
			System.out.println(candidateList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
