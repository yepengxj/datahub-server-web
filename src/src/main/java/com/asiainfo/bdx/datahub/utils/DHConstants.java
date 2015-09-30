package com.asiainfo.bdx.datahub.utils;

/**
 * datahub静态变量类
 * @author hpa
 *
 */
public class DHConstants {
	/**
	 * 数据对象(Dataitem)的获取方式(supplystyle)
	 * @author hpa
	 *
	 */
	public interface SUPPLYSTYLE{
		/**
		 * 批量
		 */
		Integer BATCH = 1;
		
		/**
		 * 小批
		 */
		Integer SUBLOTS = 2;
		
		/**
		 * 流数据		
		 */
		Integer STREAMDATA = 3;
		
		/**
		 * 单条查询
		 */
		Integer SINGLESELECT = 4;
	}
	
	/**
	 * 数据对象的更新周期
	 * @author hpa
	 *
	 */
	public interface REFRESHTYPE{
		Integer PER_YEAR = 1;
		//每季度
		Integer PER_QUARTER = 2;
		Integer PER_MONTH = 3;
		Integer PER_WEEK = 4;
		Integer PER_DAY = 5;
	}
}
