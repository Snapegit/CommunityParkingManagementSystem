package com.cl.dao;

import com.cl.entity.CheliangleixingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.CheliangleixingView;


/**
 * 车辆类型
 * 
 * @author 
 * @email 
 * @date 2024-02-27 08:59:25
 */
public interface CheliangleixingDao extends BaseMapper<CheliangleixingEntity> {
	
	List<CheliangleixingView> selectListView(@Param("ew") Wrapper<CheliangleixingEntity> wrapper);

	List<CheliangleixingView> selectListView(Pagination page,@Param("ew") Wrapper<CheliangleixingEntity> wrapper);
	
	CheliangleixingView selectView(@Param("ew") Wrapper<CheliangleixingEntity> wrapper);
	

}
