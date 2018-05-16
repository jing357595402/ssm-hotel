package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.Position;

@Repository("positionMapper")
public interface PositionMapper {
	
	//获取职位
	public Position getPositionById(@Param("positionid")Integer positionid)throws Exception;
	//添加职位
	public int add(Position position)throws Exception;
		
	//查询全部职位
	public List<Position> getAllPositon()throws Exception;
	//更新职位
	public int modifyPosition(Position position)throws Exception;
	//删除职位
	public int deletePositionById(@Param("id")Integer id)throws Exception; 
}
