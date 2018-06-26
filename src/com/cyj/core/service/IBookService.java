package com.cyj.core.service;

import java.util.List;


import com.cyj.core.po.BookInfo;
import com.cyj.core.po.BookTypeInfo;

public interface IBookService {
	
	public boolean addBook(BookInfo bookInfo);
	public boolean delBook(int id);
	public boolean editBook(BookInfo bookInfo);
	public List<BookInfo> getAllBook();
	public BookInfo getBook(int id);
	public List<BookTypeInfo> getBookTypeList();
	
}
