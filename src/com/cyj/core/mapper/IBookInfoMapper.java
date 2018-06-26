package com.cyj.core.mapper;

import java.util.List;

import com.cyj.core.po.BookInfo;

public interface IBookInfoMapper {
	
		public boolean addBook(BookInfo bookInfo);
		public boolean delBook(int id);
		public boolean editBook(BookInfo bookInfo);
		public List<BookInfo> getAllBook();
		public BookInfo getBook(int id);
		
}
