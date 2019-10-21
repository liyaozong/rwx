package cn.whaleride.controller;

import io.swagger.annotations.Api;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

@Api("站点控制器")
@Controller
public class ErrorController {
    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    @ResponseBody
    public String httpRequestMethodNotSupportedException(Model model) {
        model.addAttribute("errorMessage", "method 方法不支持");
        return "system/error";
    }

    @ExceptionHandler(NoHandlerFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public String notFoundPage404(Model model) {
        model.addAttribute("errorMessage", "没有找到访问资源");
        return "system/error";
    }

    @ExceptionHandler({Exception.class})
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public String exception(Exception exception, Model model) {
        String errorMessage = (exception != null ? exception.getMessage() : "Unknown error");
        model.addAttribute("errorMessage", errorMessage);
        return "system/error";
    }
}
