package com.spring.mapshopping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.spring.mapshopping.domain.Criteria;
import com.spring.mapshopping.domain.Product;

/**
 * 
 * @author kjy
 * @ Product interface  
 */

@Mapper
public interface ProductMapper {
	
	@Insert("insert into tbl_product (pname, price, pcontent, prCategory, nego, issell, id, size) values (#{pname}, #{price}, #{pcontent}, #{prCategory}, #{nego}, #{issell}, #{id}, #{size})")
	int insert(Product product);
	
	@Select("select * from tbl_product where prCategory = #{prCategory} order by pno desc")
	List<Product> getList(Criteria cri);
	
	@Select("select * from tbl_product where pno = #{pno}")
	Product findByPno(Long pno);
	
	@Update("update tbl_product set pname = #{pname}, price = #{price}, pcontent = #{pcontent}, prCategory = #{prCategory}, nego = #{nego}, size = #{size}")
	int modify(Product product);
	
	@Delete("delete from tbl_product where pno = #{pno}")
	int delete(Long pno);
	
	@Select("select count(*) from tbl_product where proNo > 0")
	int getTotalCount(Criteria cri);

}
