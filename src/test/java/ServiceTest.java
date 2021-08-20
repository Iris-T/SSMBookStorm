import cn.iris.pojo.Books;
import cn.iris.service.BookService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @author Iris 2021/8/19
 */
public class ServiceTest {

    @Test
    public void queryAllBooks() {

        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = context.getBean("BookServiceImpl", BookService.class);
        List<Books> books = bookServiceImpl.queryBookByName("朋友");
        books.forEach(System.out::println);
    }
}
