package cn.iris.service;

import cn.iris.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Iris 2021/8/17
 */
public interface BookService {

    /**
     * 增加一本书
     * @param book 书对象
     * @return
     */
    int addOneBook(Books book);

    /**
     * 删除一本书
     * @param bookID
     * @return
     */
    int delOneBookById(@Param("bookID") int bookID);

    /**
     * 更新一本书
     * @param book
     * @return
     */
    int updateBookById(Books book);

    /**
     * 查询一本书
     * @param bookID
     * @return
     */
    Books queryBookById(@Param("bookID") int  bookID);

    /**
     * 查询全部的书
     * @return
     */
    List<Books> queryAllBooks();

    /**
     * 通过书名模糊查询书籍
     * @param bookName
     * @return
     */
    List<Books> queryBookByName(@Param("bookName") String bookName);
}
