package cn.iris.service;

import cn.iris.mapper.BookMapper;
import cn.iris.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Iris 2021/8/17
 */
@Service
public class BookServiceImpl implements BookService{

    /**
     * service 调用 mapper/dao
     */
    @Autowired
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public int addOneBook(Books book) {
        return bookMapper.addOneBook(book);
    }

    @Override
    public int delOneBookById(int bookID) {
        return bookMapper.delOneBookById(bookID);
    }

    @Override
    public int updateBookById(Books book) {
        return bookMapper.updateBookById(book);
    }

    @Override
    public Books queryBookById(int bookID) {
        return bookMapper.queryBookById(bookID);
    }

    @Override
    public List<Books> queryAllBooks() {
        return bookMapper.queryAllBooks();
    }

    @Override
    public List<Books> queryBookByName(String bookName) {
        return bookMapper.queryBookByName('%'+bookName+'%');
    }
}
