package com.stang.tang.zhima.entity;

import java.util.Date;

public class SComment extends BaseEntity {
	private static final long serialVersionUID = 5469327721115078492L;

	private Integer id;
	private Integer articleId;
	private Integer userId;
	private String content;
	private Date createDt;

	public SComment() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateDt() {
		return createDt;
	}

	public void setCreateDt(Date createDt) {
		this.createDt = createDt;
	}

}
