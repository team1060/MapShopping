package com.spring.project.controller.product;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CrawlMain {
	 
	public static void main(String[] args) throws Exception{
			
	//		String url = "https://www.cos.com/ko-kr/men/knitwear.html";
			String url = "https://www.cos.com/ko-kr/women/knitwear.html";
			String idx;
			String name;
			String price;
			String img;
			List<String> crawl = new ArrayList<String>();
	
			Connection conn = Jsoup.connect(url);
			Document doc = conn.get();
			Elements els = doc.select("div.column");
	//		System.out.println(els);
	
			for(Element el : els){
				idx = el.select("div.o-product").attr("data-index");
				name = el.select("label.product-title").text();
				price = el.select("label.price").text();
				img = el.selectFirst(".m-product-image img").attr("src");
				System.out.println("DATA-INDEX ::: " + idx);
				System.out.println("상품명 ::: " + name);
				System.out.println("상품 가격 ::: " + price + "원");
				System.out.println("image ::: " + img);
				System.out.println("==================================================================");
	
			}
	
		}

}
