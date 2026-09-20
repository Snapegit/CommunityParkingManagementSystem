package com.cl.entity.view;

import com.cl.entity.ShuakaruchangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 刷卡入场
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-27 08:59:25
 */
@TableName("shuakaruchang")
public class ShuakaruchangView  extends ShuakaruchangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShuakaruchangView(){
	}
 
 	public ShuakaruchangView(ShuakaruchangEntity shuakaruchangEntity){
 	try {
			BeanUtils.copyProperties(this, shuakaruchangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
