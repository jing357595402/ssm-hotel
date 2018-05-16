package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.PositionMapper;
import com.ssm.pojo.Position;
import com.ssm.service.PositionService;


@Service("positionService")
public class PositionServiceImpl implements PositionService{
	
	@Autowired
	private PositionMapper positionMapper;

	@Override
	public Position getPositionById(Integer positionid) throws Exception {
		return positionMapper.getPositionById(positionid);
	}

	@Override
	public int add(Position position) throws Exception {
		// TODO Auto-generated method stub
		return positionMapper.add(position);
	}

	@Override
	public List<Position> getAllPositon() throws Exception {
		// TODO Auto-generated method stub
		return positionMapper.getAllPositon();
	}

	@Override
	public int modifyPosition(Position position) throws Exception {
		// TODO Auto-generated method stub
		return positionMapper.modifyPosition(position);
	}

	@Override
	public int deletePositionById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return positionMapper.deletePositionById(id);
	}
	

}
