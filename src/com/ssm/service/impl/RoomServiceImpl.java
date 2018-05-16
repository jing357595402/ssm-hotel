package com.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.RoomMapper;
import com.ssm.mapper.RoomtypeMapper;
import com.ssm.mapper.UserMapper;
import com.ssm.pojo.Room;
import com.ssm.service.RoomService;

@Service("roomService")
public class RoomServiceImpl implements RoomService {
	
	@Autowired
	private RoomMapper roomMapper;
	@Autowired
	private RoomtypeMapper roomtypeMapper;
	@Autowired
	private UserMapper userMapper;
	

	@Override
	public int add(Room room) throws Exception {
		// TODO Auto-generated method stub
		return roomMapper.add(room);
	}

	@Override
	public List<Room> getAllRoom() throws Exception {
		// TODO Auto-generated method stub
		List<Room> rooms = roomMapper.getAllRoom();
		List<Room> rooms2 = new ArrayList<Room>();
		for(Room room : rooms ){
			room.setRoomTypeName(roomtypeMapper.getRoomtypeById(room.getRoomType()).getRoomtypeName());
			room.setRoomPrice(roomtypeMapper.getRoomtypeById(room.getRoomType()).getRoomtypePrice());
			room.setCleanerName(userMapper.getUserById(room.getRoomCleaner()).getUserName());
			rooms2.add(room);
		}
		return rooms2;
	}

	@Override
	public Room getRoomByCode(Integer roomCode) throws Exception {
		// TODO Auto-generated method stub
		Room room =roomMapper.getRoomByCode(roomCode);
		room.setCleanerName(userMapper.getUserById(room.getRoomCleaner()).getUserName());
		room.setRoomTypeName(roomtypeMapper.getRoomtypeById(room.getRoomType()).getRoomtypeName());
		room.setRoomPrice(roomtypeMapper.getRoomtypeById(room.getRoomType()).getRoomtypePrice());

		return room;
	}

	@Override
	public Room getRoomByTypeId(Integer roomType) throws Exception {
		// TODO Auto-generated method stub
		Room room =roomMapper.getRoomByTypeId(roomType);
		room.setCleanerName(userMapper.getUserById(room.getRoomCleaner()).getUserName());
		room.setRoomTypeName(roomtypeMapper.getRoomtypeById(room.getRoomType()).getRoomtypeName());
		room.setRoomPrice(roomtypeMapper.getRoomtypeById(room.getRoomType()).getRoomtypePrice());

		return room;
		
	}

	@Override
	public Room getRoomById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		Room room =roomMapper.getRoomById(id);
		room.setCleanerName(userMapper.getUserById(room.getRoomCleaner()).getUserName());
		room.setRoomTypeName(roomtypeMapper.getRoomtypeById(room.getRoomType()).getRoomtypeName());
		room.setRoomPrice(roomtypeMapper.getRoomtypeById(room.getRoomType()).getRoomtypePrice());

		return room;
	}

	@Override
	public int modifyRoom(Room room) throws Exception {
		// TODO Auto-generated method stub
		return roomMapper.modifyRoom(room);
	}

	@Override
	public int deleteRoomById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return roomMapper.deleteRoomById(id);
	}

}
