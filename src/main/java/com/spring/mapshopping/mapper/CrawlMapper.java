package com.spring.project.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface CrawlMapper {
	 
	@Insert("insert into tbl_crawl(name, price, detail, img) values(#{name}, #{price}, #{detail}, #{img})")
	void insert(Map<String, Object> crawl);

	@Select("select * from tbl_crawl")
	void getCrawlList(Map<String, Object> crawl);
	
	@Select("select * from tbl_crawl where crwNo = #{crwNo}")
	void getCrawlOne(Map<String, Object> crawl);
	
	@Update("update tbl_crawl set detail = #{detail} where crwNo = #{crwNo}")
	void Update(Map<String, Object> crawl);
	

}
