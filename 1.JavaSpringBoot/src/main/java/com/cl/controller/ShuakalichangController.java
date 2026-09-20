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

import com.cl.entity.ShuakalichangEntity;
import com.cl.entity.view.ShuakalichangView;

import com.cl.service.ShuakalichangService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 刷卡离场
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-27 08:59:25
 */
@RestController
@RequestMapping("/shuakalichang")
public class ShuakalichangController {
    @Autowired
    private ShuakalichangService shuakalichangService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShuakalichangEntity shuakalichang,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			shuakalichang.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ShuakalichangEntity> ew = new EntityWrapper<ShuakalichangEntity>();

		PageUtils page = shuakalichangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shuakalichang), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShuakalichangEntity shuakalichang, 
		HttpServletRequest request){
        EntityWrapper<ShuakalichangEntity> ew = new EntityWrapper<ShuakalichangEntity>();

		PageUtils page = shuakalichangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shuakalichang), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShuakalichangEntity shuakalichang){
       	EntityWrapper<ShuakalichangEntity> ew = new EntityWrapper<ShuakalichangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shuakalichang, "shuakalichang")); 
        return R.ok().put("data", shuakalichangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShuakalichangEntity shuakalichang){
        EntityWrapper< ShuakalichangEntity> ew = new EntityWrapper< ShuakalichangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shuakalichang, "shuakalichang")); 
		ShuakalichangView shuakalichangView =  shuakalichangService.selectView(ew);
		return R.ok("查询刷卡离场成功").put("data", shuakalichangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ShuakalichangEntity shuakalichang = shuakalichangService.selectById(id);
		shuakalichang = shuakalichangService.selectView(new EntityWrapper<ShuakalichangEntity>().eq("id", id));
        return R.ok().put("data", shuakalichang);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ShuakalichangEntity shuakalichang = shuakalichangService.selectById(id);
		shuakalichang = shuakalichangService.selectView(new EntityWrapper<ShuakalichangEntity>().eq("id", id));
        return R.ok().put("data", shuakalichang);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShuakalichangEntity shuakalichang, HttpServletRequest request){
    	shuakalichang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shuakalichang);
        shuakalichangService.insert(shuakalichang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ShuakalichangEntity shuakalichang, HttpServletRequest request){
    	shuakalichang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shuakalichang);
        shuakalichangService.insert(shuakalichang);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ShuakalichangEntity shuakalichang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shuakalichang);
        shuakalichangService.updateById(shuakalichang);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        shuakalichangService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
