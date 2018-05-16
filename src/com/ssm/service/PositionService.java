package com.ssm.service;



import java.util.List;

import com.ssm.pojo.Position;

public interface PositionService {
	    //获取职位
		public Position getPositionById(Integer positionid)throws Exception;
		//添加职位
		public int add(Position position)throws Exception;
			
		//查询全部职位
		public List<Position> getAllPositon()throws Exception;
		//更新职位
		public int modifyPosition(Position position)throws Exception;
		//删除职位
		public int deletePositionById(Integer id)throws Exception; 

}
