package com.asiainfo.bdx.datahub.model;

import java.sql.Timestamp;

/**
 * UploadlogId entity. @author MyEclipse Persistence Tools
 */

public class Uploadlog implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long dataitemId;
	private Timestamp dataDate;

	// Constructors

	/** default constructor */
	public Uploadlog() {
	}

	/** full constructor */
	public Uploadlog(Long dataitemId, Timestamp dataDate) {
		this.dataitemId = dataitemId;
		this.dataDate = dataDate;
	}

	// Property accessors

	public Long getDataitemId() {
		return this.dataitemId;
	}

	public void setDataitemId(Long dataitemId) {
		this.dataitemId = dataitemId;
	}

	public Timestamp getDataDate() {
		return this.dataDate;
	}

	public void setDataDate(Timestamp dataDate) {
		this.dataDate = dataDate;
	}


}