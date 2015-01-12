package com.sjsu.courseapp.jms;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.sjsu.courseapp.pojo.ResourceRequest;

public class SimpleMessageListener implements MessageListener {

	private static final Logger LOG = LoggerFactory
			.getLogger(SimpleMessageListener.class);

	public void onMessage(Message message) {
		try {
			String responseMessage = ((TextMessage) message).getText();
			ResourceRequest request =XmlStringConvertor.procesor(responseMessage);
			System.out.println("************************************************");
			System.out.println("CPU:"+request.getCpu_units());
			System.out.println("MEMORY:"+request.getMemory());
			System.out.println("REQUESTID"+request.getRequestId());
			System.out.println("************************************************");
		} catch (JMSException e) {
			LOG.error(e.getMessage(), e);
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}