package com.cl.entity.view;

import com.cl.entity.ShuakalichangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 刷卡离场
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-27 08:59:25
 */
@TableName("shuakalichang")
public class ShuakalichangView  extends ShuakalichangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShuakalichangView(){
	}
 
 	public ShuakalichangView(ShuakalichangEntity shuakalichangEntity){
 	try {
			BeanUtils.copyProperties(this, shuakalichangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
