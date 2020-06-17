package org.zerock.service;

import java.util.List;

import org.zerock.domain.AdminBoardVO;
import org.zerock.domain.AdminCommentVO;
import org.zerock.domain.Criteria;

public interface BoardService {


   public AdminBoardVO get(Long adno);
   
   public boolean modify(AdminBoardVO adminboard);
   
   public boolean remove(Long adno);
   
//   public List<AdminBoardVO> getList();
   
   public List<AdminBoardVO> getList(Criteria cri);
   
   public void insert(AdminBoardVO adminboard);

   public void insertcomment(AdminCommentVO adcomment);

   public AdminCommentVO getcomment(Long adno);
   
   public int getTotal(Criteria cri);
   
   


   
}