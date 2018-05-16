package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.Room;

@Repository("roomMapper")
public interface RoomMapper {
	//添加房间
	public int add(Room room)throws Exception;
	
	//查询全部房间
	public List<Room> getAllRoom()throws Exception;
	//根据房间code查询房间
	public Room getRoomByCode(@Param("roomCode")Integer roomCode)throws Exception;
	//根据房间类型查询房间
	public Room getRoomByTypeId(@Param("roomType")Integer roomType)throws Exception;
	//根据房间id查询房间
	public Room getRoomById(@Param("id")Integer id)throws Exception;
    //更新房间
	public int modifyRoom(Room room)throws Exception;
	//删除房间
	public int deleteRoomById(@Param("id")Integer id)throws Exception; 

}
