package cn.iris.controller;

import cn.iris.pojo.Books;
import cn.iris.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Random;

/**
 * @author Iris 2021/8/18
 */
@Controller
@RequestMapping("/book")
public class BookController {
    /**
     * controller 调用 service层
     */
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    /**
     * 跳转到增加书籍页面
     * @return
     */
    @RequestMapping("/toAddBook")
    public String toAddPage() {
        return "addBook";
    }

    /**
     * 新增书籍
     * @param book
     * @return
     */
    @RequestMapping("/addBook")
    public String addOneBook(Books book) {

        System.out.println("addBook=>"+book);
        bookService.addOneBook(book);
        // 重定向至allBook
        return "redirect:/book/allBook";
    }

    /**
     * 删除书籍信息
     * @param bookID
     * @return
     */
    @RequestMapping("/delBook/{bookID}")
    public String delBook(@PathVariable int bookID) {
        bookService.delOneBookById(bookID);
        return "redirect:/book/allBook";
    }

    /**
     * 跳转至更新书籍页面
     * @return
     */
    @RequestMapping("/toUpdateBook/{bookID}")
    public String toUpdatePage(@PathVariable int bookID,Model model) {
        Books book = bookService.queryBookById(bookID);
        model.addAttribute("oldBook", book);
        return "updateBook";
    }

    /**
     * 提交并更新书籍信息
     * @return
     */
    @RequestMapping("/updateBook")
    public String updateBook(Books book) {
        System.out.println("updateBook=>"+book);
        bookService.updateBookById(book);
        return "redirect:/book/allBook";
    }

    /**
     * 查询全部数据，并返回至书籍展示页面
     * @param model
     * @return
     */
    @RequestMapping("/allBook")
    public String list(Model model) {
        List<Books> books = bookService.queryAllBooks();
        model.addAttribute("resInfo", "共有"+books.toArray().length+"本书籍");
        model.addAttribute("list", books);
        return "allBook";
    }

    @RequestMapping("/queryBookByName")
    public String queryBookByName(String queryBookName, Model model) {
        List<Books> books = bookService.queryBookByName(queryBookName);
        model.addAttribute("resInfo", "共搜索到"+books.toArray().length+"本书籍");
        model.addAttribute("list", books);
        return "/allBook";
    }

}
