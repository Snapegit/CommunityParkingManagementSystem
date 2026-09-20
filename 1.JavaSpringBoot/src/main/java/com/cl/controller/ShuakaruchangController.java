package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.ShuakaruchangEntity;
import com.cl.entity.view.ShuakaruchangView;

import com.cl.service.ShuakaruchangService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 刷卡入场
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-27 08:59:25
 */
@RestController
@RequestMapping("/shuakaruchang")
public class ShuakaruchangController {
    @Autowired
    private ShuakaruchangService shuakaruchangService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShuakaruchangEntity shuakaruchang,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			shuakaruchang.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ShuakaruchangEntity> ew = new EntityWrapper<ShuakaruchangEntity>();

		PageUtils page = shuakaruchangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shuakaruchang), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShuakaruchangEntity shuakaruchang, 
		HttpServletRequest request){
        EntityWrapper<ShuakaruchangEntity> ew = new EntityWrapper<ShuakaruchangEntity>();

		PageUtils page = shuakaruchangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shuakaruchang), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShuakaruchangEntity shuakaruchang){
       	EntityWrapper<ShuakaruchangEntity> ew = new EntityWrapper<ShuakaruchangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shuakaruchang, "shuakaruchang")); 
        return R.ok().put("data", shuakaruchangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShuakaruchangEntity shuakaruchang){
        EntityWrapper< ShuakaruchangEntity> ew = new EntityWrapper< ShuakaruchangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shuakaruchang, "shuakaruchang")); 
		ShuakaruchangView shuakaruchangView =  shuakaruchangService.selectView(ew);
		return R.ok("查询刷卡入场成功").put("data", shuakaruchangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ShuakaruchangEntity shuakaruchang = shuakaruchangService.selectById(id);
		shuakaruchang = shuakaruchangService.selectView(new EntityWrapper<ShuakaruchangEntity>().eq("id", id));
        return R.ok().put("data", shuakaruchang);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ShuakaruchangEntity shuakaruchang = shuakaruchangService.selectById(id);
		shuakaruchang = shuakaruchangService.selectView(new EntityWrapper<ShuakaruchangEntity>().eq("id", id));
        return R.ok().put("data", shuakaruchang);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShuakaruchangEntity shuakaruchang, HttpServletRequest request){
    	shuakaruchang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shuakaruchang);
        shuakaruchangService.insert(shuakaruchang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ShuakaruchangEntity shuakaruchang, HttpServletRequest request){
    	shuakaruchang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shuakaruchang);
        shuakaruchangService.insert(shuakaruchang);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ShuakaruchangEntity shuakaruchang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shuakaruchang);
        shuakaruchangService.updateById(shuakaruchang);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        shuakaruchangService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
