package com.xinyan.mms.util;
/**
 * 过滤层（过滤字符串类）
 */

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet Filter implementation class AllFilter
 */
public class AllFilter implements Filter {
	private String encoding;

    /**
     * Default constructor. 
     */
    public AllFilter() {
       System.out.println("创建实例对象AllFilter.AllFilter()");
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		System.out.println("销毁AllFilter.destroy()");
	}
	/**
	 * 控制层
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpservletrequest = (HttpServletRequest)request;
		HttpServletResponse httpservletresponse = (HttpServletResponse) response;
		httpservletrequest.setCharacterEncoding(encoding);
		httpservletresponse.setCharacterEncoding(encoding);
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		//fConfig类获取web.xml下的编码配置选项
		encoding = fConfig.getInitParameter("encoding");
		System.out.println("初始化AllFilter.init()");
	}

}
