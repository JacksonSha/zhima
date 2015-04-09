package com.stang.tang.zhima.entity;

import java.util.Date;

public class STag extends BaseEntity {
	private static final long serialVersionUID = 5529920783035311994L;

	private Integer tagId;
	private String tagName;
	private String tagDescription;
	private Integer tagCount;
	private Date tagCreateDt;

	public STag() {
	}

	public Integer getTagId() {
		return tagId;
	}

	public void setTagId(Integer tagId) {
		this.tagId = tagId;
	}

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	public String getTagDescription() {
		return tagDescription;
	}

	public void setTagDescription(String tagDescription) {
		this.tagDescription = tagDescription;
	}

	public Integer getTagCount() {
		return tagCount;
	}

	public void setTagCount(Integer tagCount) {
		this.tagCount = tagCount;
	}

	public Date getTagCreateDt() {
		return tagCreateDt;
	}

	public void setTagCreateDt(Date tagCreateDt) {
		this.tagCreateDt = tagCreateDt;
	}

}
