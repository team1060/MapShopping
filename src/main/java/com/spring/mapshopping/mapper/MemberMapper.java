package com.spring.mapshopping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.spring.mapshopping.domain.MemberVO;

@Mapper
public interface MemberMapper {
	
	int insert(MemberVO vo);
	boolean delete(String id);
	int update(MemberVO vo);
	int updatePw(@Param("id") String id , @Param("pw") String pw);
	// 1개조회
	MemberVO get(String id);
	
	List<MemberVO> list();
	MemberVO login(@Param("id") String id, @Param("pw") String pw);
	
	// 권한 
	int insertAuth();
}
