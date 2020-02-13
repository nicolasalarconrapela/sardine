package com.github.sardine.impl;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class SardineExceptionTest
{

	@Test
	public void testMessage()
	{
		// TODO : REVIEW : Upd a V.0.0.1D
		final SardineException e = new SardineException("m", 400, "response phrase");
		assertEquals("status code: 400, reason phrase: m (400 response phrase)", e.getMessage());
		assertEquals("response phrase", e.getResponsePhrase());
		assertEquals(400, e.getStatusCode());
	}
}