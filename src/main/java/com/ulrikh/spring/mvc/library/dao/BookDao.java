package com.ulrikh.spring.mvc.library.dao;


import com.ulrikh.spring.mvc.library.entity.Book;

import java.util.List;

public interface BookDao {
    public List<Book> getAllBooks();

    public void saveBook(Book book);

    public void deleteBook(int id);

    public Book getBook(int id);


}
