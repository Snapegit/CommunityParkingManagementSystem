package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.ShuakaruchangDao;
import com.cl.entity.ShuakaruchangEntity;
import com.cl.service.ShuakaruchangService;
import com.cl.entity.view.ShuakaruchangView;

@Service("shuakaruchangService")
public class ShuakaruchangServiceImpl extends ServiceImpl<ShuakaruchangDao, ShuakaruchangEntity> implements ShuakaruchangService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShuakaruchangEntity> page = this.selectPage(
                new Query<ShuakaruchangEntity>(params).getPage(),
                new EntityWrapper<ShuakaruchangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShuakaruchangEntity> wrapper) {
		  Page<ShuakaruchangView> page =new Query<ShuakaruchangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<ShuakaruchangView> selectListView(Wrapper<ShuakaruchangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShuakaruchangView selectView(Wrapper<ShuakaruchangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
