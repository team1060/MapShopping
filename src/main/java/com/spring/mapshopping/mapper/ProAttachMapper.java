package com.spring.mapshopping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.spring.mapshopping.domain.ProAttachVO;

/**
 * 
 * @author kjy
 * @ Attach Mapper for Product  
 */

@Mapper
public interface ProAttachMapper {

//	@Insert("insert into tbl_productattach (uuid, origin, path, pno) values (#{uuid}, #{origin}, #{path}, #{pno})")
//	int attachInsert(ProAttachVO proAttach); // 상품 이미지 등록
//	
//	@Select("select * from tbl_productattach where pno = #{pno}")
//	List<ProAttachVO> findByPno(Long pno); // 상품 이미지 조회
//	
//	@Delete("delete from tbl_productattach where pno = #{pno}")
//	int deleteByPno(Long pno); // 상품 이미지 삭제
//
//	@Delete("delete from tbl_productattach where uuid = #{uuid}")
//	int deleteByUuid(String uuid); // 상품 이미지 삭제
	
	
	
	
	@Insert("insert into tbl_productattach values (#{uuid}, #{origin}, #{image}, #{path}, #{pno})")
	void insert(ProAttachVO vo);
	
	@Delete("delete from tbl_productattach where uuid = #{uuid}")
	void delete(String uuid);
	
	@Delete("delete from tbl_productattach where pno = #{pno}")
	void deleteAll(Long pno);
	
	@Select("select * from tbl_productattach where pno = #{pno}")
	List<ProAttachVO> findByPno(Long pno);
	
	@Select("select * from tbl_productattach")
	List<ProAttachVO> getAttatchList(); // 상품 이미지 목록 
	
	@Select("select * from tbl_productattach where path = date_format(adddate(now(), -1), '%Y/%m/%d')")
	List<ProAttachVO> getOldFiles();

}
