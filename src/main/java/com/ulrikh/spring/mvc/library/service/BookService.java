package com.ulrikh.spring.mvc.library.service;


import com.ulrikh.spring.mvc.library.entity.Book;

import java.util.List;

public interface BookService {

    public List<Book> getAllBooks();

    public void saveBook(Book book);

    public void deleteBook(int id);

    public Book getBook(int id);
}
