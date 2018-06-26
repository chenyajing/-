package com.cyj.core.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyj.core.mapper.IBookInfoMapper;
import com.cyj.core.mapper.IBookTypeInfoMapper;
import com.cyj.core.po.BookInfo;
import com.cyj.core.po.BookTypeInfo;
import com.cyj.core.service.IBookService;
@Service
public class BookServiceImpl implements IBookService {
	@Autowired
	private IBookInfoMapper iBookInfoMapper;
	@Autowired
	private IBookTypeInfoMapper iBookTypeInfoMapper;
	@Override
	public boolean addBook(BookInfo bookInfo) {
		// TODO Auto-generated method stub
		return iBookInfoMapper.addBook(bookInfo);
	}

	@Override
	public boolean delBook(int id) {
		// TODO Auto-generated method stub
		return iBookInfoMapper.delBook(id);
	}

	@Override
	public boolean editBook(BookInfo bookInfo) {
		// TODO Auto-generated method stub
		return iBookInfoMapper.editBook(bookInfo);
	}

	@Override
	public List<BookInfo> getAllBook() {
		// TODO Auto-generated method stub
		return iBookInfoMapper.getAllBook();
	}

	@Override
	public BookInfo getBook(int id) {
		// TODO Auto-generated method stub
		return iBookInfoMapper.getBook(id);
	}

	@Override
	public List<BookTypeInfo> getBookTypeList() {
		// TODO Auto-generated method stub
		return iBookTypeInfoMapper.getBookTypeList();
	}

}
