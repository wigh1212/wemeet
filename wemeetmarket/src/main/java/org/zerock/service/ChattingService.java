package org.zerock.service;

import java.util.List;


import org.zerock.domain.ChatVO;

public interface ChattingService {
	
	public List<ChatVO> chattinglist();

	public void addchattingroom(ChatVO chat);
	
	public ChatVO selectChat(ChatVO chat);
	
	public void deletechat(ChatVO chat);
	
	public void updatechat(ChatVO chat);
	
}
