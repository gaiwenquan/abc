package com.ehking.wallet.facade.converter;

import org.apache.commons.lang3.StringUtils;
import org.dozer.ConfigurableCustomConverter;

public class Converter implements ConfigurableCustomConverter {

	final static String SEPARATOR = ";";

	@Override
	public Object convert(Object existingDestinationFieldValue,
			Object sourceFieldValue, Class<?> destinationClass,
			Class<?> sourceClass) {
		if (destinationClass.isArray()) {
			String source = (String) sourceFieldValue;
			return StringUtils.split(source, SEPARATOR);
		} else if (sourceClass.isArray()) {
			String[] source = (String[]) sourceFieldValue;
			return StringUtils.join(source, SEPARATOR);
		}
		return sourceFieldValue;
	}

	@Override
	public void setParameter(String parameter) {
	}

}
