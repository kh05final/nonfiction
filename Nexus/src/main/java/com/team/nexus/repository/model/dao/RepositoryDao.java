package com.team.nexus.repository.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.team.nexus.repository.model.vo.Repositories;



@Repository
public class RepositoryDao {
	
	public int insertRepo(SqlSessionTemplate sqlSession, Repositories r) {
		return sqlSession.insert("repoMapper.insertRepo", r);
		
	}

	public ArrayList<Repositories> selectRepoList(SqlSessionTemplate sqlSession,int userNo) {
		
		return (ArrayList)sqlSession.selectList("repoMapper.selectRepoList", userNo);
	}

	public Repositories selectRepo(SqlSessionTemplate sqlSession, int rNo) {
		return sqlSession.selectOne("repoMapper.selectRepo", rNo);
	}

	public int updateRepoContent(SqlSessionTemplate sqlSession, Repositories repo) {
		return sqlSession.update("repoMapper.updateRepoContent", repo);
	}

	public String getRepoContent(SqlSessionTemplate sqlSession, Repositories repo) {
		return sqlSession.selectOne("repoMapper.getRepoContent", repo);
	}

	public int updateAccessDate(SqlSessionTemplate sqlSession, int rNo) {
		return sqlSession.update("repoMapper.updateAccessDate", rNo);
	}

	public ArrayList<Repositories> selectRepoList1(SqlSessionTemplate sqlSession, int userNo) {
		return (ArrayList)sqlSession.selectList("repoMapper.selectRepoList1", userNo);
	}


}
