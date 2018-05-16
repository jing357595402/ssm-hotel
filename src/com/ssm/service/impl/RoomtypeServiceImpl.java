package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.RoomtypeMapper;
import com.ssm.pojo.Roomtype;
import com.ssm.service.RoomtypeService;

@Service("roomtypeService")
public class RoomtypeServiceImpl implements RoomtypeService {
	@Autowired
	private RoomtypeMapper roomtypeMapper;

	@Override
	public int add(Roomtype roomtype) throws Exception {
		// TODO Auto-generated method stub
		return roomtypeMapper.add(roomtype);
	}

	@Override
	public List<Roomtype> getAllRoomtype() throws Exception {
		// TODO Auto-generated method stub
		return roomtypeMapper.getAllRoomtype();
	}

	@Override
	public Roomtype getRoomtypeById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return roomtypeMapper.getRoomtypeById(id);
	}

	@Override
	public int modifyRoomtype(Roomtype roomtype) throws Exception {
		// TODO Auto-generated method stub
		return roomtypeMapper.modifyRoomtype(roomtype);
	}

	@Override
	public int deleteRoomtypeById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return roomtypeMapper.deleteRoomtypeById(id);
	}

}
