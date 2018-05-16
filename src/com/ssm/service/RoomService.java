package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Room;

public interface RoomService {
	//添加房间
	public int add(Room room)throws Exception;
	
	//查询全部房间
	public List<Room> getAllRoom()throws Exception;
	//根据房间code查询房间
	public Room getRoomByCode(Integer roomCode)throws Exception;
	//根据房间类型查询房间
	public Room getRoomByTypeId(Integer roomType)throws Exception;
	//根据房间id查询房间
	public Room getRoomById(Integer id)throws Exception;
    //更新房间
	public int modifyRoom(Room room)throws Exception;
	//删除房间
	public int deleteRoomById(Integer id)throws Exception; 


}
