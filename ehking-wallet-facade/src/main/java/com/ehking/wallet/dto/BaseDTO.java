package com.ehking.wallet.dto;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;

public class BaseDTO implements Serializable {

	private static final long serialVersionUID = -3013276972163349200L;
	
	private String id;

	public BaseDTO() {
	}

	public BaseDTO(String id) {
		this.id = id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}
