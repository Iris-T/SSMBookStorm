import cn.iris.pojo.Books;
import cn.iris.service.BookService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @author Iris 2021/8/18
 */
public class ControllerTest {

    @Test
    public void queryAllBooks() {

        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = context.getBean("BookServiceImpl", BookService.class);
        List<Books> books = bookServiceImpl.queryAllBooks();
        books.forEach(System.out::println);
    }
}
