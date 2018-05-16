package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Roomtype;

public interface RoomtypeService {
	//添加房间类型
		public int add(Roomtype roomtype)throws Exception;
		
		//查询全部房间类型
		public List<Roomtype> getAllRoomtype()throws Exception;
		//根据房间类型id查询房间类型
		public Roomtype getRoomtypeById(Integer id)throws Exception;
	    //更新房间类型
		public int modifyRoomtype(Roomtype roomtype)throws Exception;
		//删除房间类型
		public int deleteRoomtypeById(Integer id)throws Exception;

}
