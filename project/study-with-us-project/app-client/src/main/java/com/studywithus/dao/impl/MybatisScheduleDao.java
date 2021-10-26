package com.studywithus.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.studywithus.dao.ScheduleDao;
import com.studywithus.domain.Schedule;

public class MybatisScheduleDao implements ScheduleDao{

	SqlSession sqlSession;

	public MybatisScheduleDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void insert(Schedule schedule) throws Exception {
		sqlSession.insert("ScheduleMapper.insert",schedule);
		sqlSession.commit();
	}

	@Override
	public List<Schedule> findAll() throws Exception {
		return sqlSession.selectList("ScheduleMapper.findAll");
	}

	@Override
	public List<Schedule> findByKeyword(String keyword) throws Exception {
		return sqlSession.selectList("ScheduleMapper.findByKeyword");
	}

	@Override
	public Schedule findByNo(int no) throws Exception {
		return sqlSession.selectOne("ScheduleMapper.findByNo", no);
	}

	@Override
	public void update(Schedule schedule) throws Exception {
		sqlSession.update("ScheduleMapper.update", schedule);
		sqlSession.commit();
	}

	@Override
	public void delete(int no) throws Exception {
		sqlSession.delete("ScheduleMapper.delete", no);
		sqlSession.commit();
	}
}
