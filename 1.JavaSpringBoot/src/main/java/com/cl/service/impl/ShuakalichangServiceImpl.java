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


import com.cl.dao.ShuakalichangDao;
import com.cl.entity.ShuakalichangEntity;
import com.cl.service.ShuakalichangService;
import com.cl.entity.view.ShuakalichangView;

@Service("shuakalichangService")
public class ShuakalichangServiceImpl extends ServiceImpl<ShuakalichangDao, ShuakalichangEntity> implements ShuakalichangService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShuakalichangEntity> page = this.selectPage(
                new Query<ShuakalichangEntity>(params).getPage(),
                new EntityWrapper<ShuakalichangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShuakalichangEntity> wrapper) {
		  Page<ShuakalichangView> page =new Query<ShuakalichangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<ShuakalichangView> selectListView(Wrapper<ShuakalichangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShuakalichangView selectView(Wrapper<ShuakalichangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
