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


import com.cl.dao.CheliangleixingDao;
import com.cl.entity.CheliangleixingEntity;
import com.cl.service.CheliangleixingService;
import com.cl.entity.view.CheliangleixingView;

@Service("cheliangleixingService")
public class CheliangleixingServiceImpl extends ServiceImpl<CheliangleixingDao, CheliangleixingEntity> implements CheliangleixingService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CheliangleixingEntity> page = this.selectPage(
                new Query<CheliangleixingEntity>(params).getPage(),
                new EntityWrapper<CheliangleixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CheliangleixingEntity> wrapper) {
		  Page<CheliangleixingView> page =new Query<CheliangleixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<CheliangleixingView> selectListView(Wrapper<CheliangleixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CheliangleixingView selectView(Wrapper<CheliangleixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
