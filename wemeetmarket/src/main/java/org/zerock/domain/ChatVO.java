package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ChatVO {
	
	private String ctitle;
	
	private String ccategory;

	private String ccontent;
	
	private Date cregdate;
	
	private long cno;
	
}