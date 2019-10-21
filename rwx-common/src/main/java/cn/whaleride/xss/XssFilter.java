package cn.whaleride.xss;

import org.apache.commons.lang3.StringUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * XSS过滤
 *
 * @author Liyaozong
 * @email 125030963@qq.com
 * @date 2019-05-01 08:10
 */
public class XssFilter implements Filter {
    //需要排除过滤的url
    private String[] excludedUrlArray;

    @Override
    public void init(FilterConfig config) throws ServletException {
        String excludedUrls = config.getInitParameter("excludedUrls");
        if (StringUtils.isNotEmpty(excludedUrls)) {
            excludedUrlArray = excludedUrls.split(",");
        }
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        XssHttpServletRequestWrapper xssRequest = new XssHttpServletRequestWrapper((HttpServletRequest) request);

        boolean isExcludedPage = false;
        for (String page : excludedUrlArray) {//判断是否在过滤url之外
            if (((HttpServletRequest) request).getServletPath().equals(page)) {
                isExcludedPage = true;
                break;
            }
        }
        if (isExcludedPage) {//排除过滤url
            chain.doFilter(request, response);
        } else {
            chain.doFilter(xssRequest, response);
        }
    }

    @Override
    public void destroy() {
    }
}