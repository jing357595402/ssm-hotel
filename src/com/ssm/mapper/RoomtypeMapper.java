package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.Roomtype;


@Repository("roomtypeMapper")
public interface RoomtypeMapper {
	//添加房间类型
	public int add(Roomtype roomtype)throws Exception;
	
	//查询全部房间类型
	public List<Roomtype> getAllRoomtype()throws Exception;
	//根据房间类型id查询房间类型
	public Roomtype getRoomtypeById(@Param("id")Integer id)throws Exception;
    //更新房间类型
	public int modifyRoomtype(Roomtype roomtype)throws Exception;
	//删除房间类型
	public int deleteRoomtypeById(@Param("id")Integer id)throws Exception; 
}
