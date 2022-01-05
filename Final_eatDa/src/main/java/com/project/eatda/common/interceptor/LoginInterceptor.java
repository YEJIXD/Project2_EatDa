package com.project.eatda.common.interceptor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {
	public String[] permitCommand = {
			"/index.do", "/idCheck.do","/regist_form.do","/emailCheck.do","/memberRegist.do","/loginCheck.do",
			"/foodbti.do","/getMarketData.do","/getRecentRecipe.do","/getMbtiProduct.do","/getPopularBlog.do","/getLovingRecipe.do",
			"/product.do","/paging.do","/hashTagSearch.do","/searching.do","/goProductPage.do","/marketMain.do","/getReview.do",
			"/takeBlog.do","/blog-paging.do","/blog.do","/blog-search.do","/blog-detail.do","reply-list.do","/event.do","/event-detail.do",
			"/recipeList.do","/recipeListTest.do","/recipeCategory.do","/recipeDetail.do"
	};
	
	public String[] productPage = {
			"/putShoppingBag.do","/likeProductInsert.do","/directPurchase.do","/makeOrder.do","/goShoppingBag.do"
	};
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		/*
		System.out.println("prevpage:"+request.getHeader("referer"));
		System.out.println("uri:"+request.getRequestURI()); //현재 URI
		*/
		String prevURI = request.getHeader("referer").substring(28, request.getHeader("referer").length());//이전 command
		
		if (request.getSession().getAttribute("member") != null) {
			return true;
		} 
		
		for (String str : permitCommand) {
			if (request.getRequestURI().contains(str)) {
				return true;
			}
		}
		
		if (request.getSession().getAttribute("member") == null) {
			String uri = "";
			for (String str : productPage) {
				if (request.getRequestURI().contains(str)) {
					uri = prevURI;
				} else {
					uri = "index.do";
				}
			} 
			jsResponse(uri,"You need to Login first!", response);
		}
		return false;
		
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
	}
	
	public void jsResponse(String url, String message, HttpServletResponse response) throws IOException {
		String script = "<script type='text/javascript'> " + "alert('" + message + "'); " + "location.href = '" + url
				+ "';" + "</script>";
		PrintWriter writer = response.getWriter();
		writer.print(script);
	}

}
