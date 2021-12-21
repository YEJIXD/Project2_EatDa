package com.project.eatda.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.eatda.dao.EventDao;
import com.project.eatda.dto.EventDto;

@Service
public class EventBizImpl implements EventBiz{
	
	@Autowired
	public EventDao dao;
	
	@Override
	public List<EventDto> eventList() {
		return dao.eventList();
	}
	
	@Override
	public EventDto selectOne(int event_no) {
		return dao.selectOne(event_no);
	}
}