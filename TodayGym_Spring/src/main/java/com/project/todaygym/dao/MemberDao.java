package com.project.todaygym.dao;

import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.MemberFormDto;

public interface MemberDao {
		//아이디 중복 체크용
		public int idCheck(String id);
		//회원 가입 처리
		public void memberInsert(MemberDto member);
		//비밀번호 구하기
		public String pwdSelect(String id);
		//회원 정보 구하기
		public MemberDto memberSelect(String id);
		//회원 포인트 수정
		public void mPointUpdate(String id);
		
		
		
		
		
		
		//________________________________________ MyInfo area
		
		//__________ 회원정보 수정
		public void myInfoUpdate(MemberDto myInfo);
		
		//__________ 비밀번호 변경
		public void myPwdUpdate(MemberDto myInfo);
		
		//__________ 회원탈퇴 실행
		public void myAccountDelete(String getId);
		
} // interface end
