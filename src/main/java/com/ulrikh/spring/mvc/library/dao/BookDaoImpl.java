package com.ulrikh.spring.mvc.library.dao;


import com.ulrikh.spring.mvc.library.entity.Book;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookDaoImpl implements BookDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Book> getAllBooks() {
        Session session = sessionFactory.getCurrentSession();
        List<Book> allBooks = session.createQuery("from Book",Book.class).getResultList();

        return allBooks;
    }

    @Override
    public Book getBook(int id) {
        Session session = sessionFactory.getCurrentSession();
        Book book = session.get(Book.class,id);

        return book;

    }

    @Override
    public void saveBook(Book book) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(book);
    }

    @Override
    public void deleteBook(int id) {
        Session session = sessionFactory.getCurrentSession();
        Book book = session.get(Book.class,id);
        session.delete(book);

    }
}
