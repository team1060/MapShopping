package com.spring.project.controller.product;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CrawlDetail {
	
public static void main(String[] args) throws Exception{
		
		String url = "https://www.cos.com/ko-kr/men/knitwear/product.collared-wool-boucl%C3%A9-cardigan-navy.1195823001.html?slitmCd=40A1780269";
//		String url = "https://cos.com/ko-kr/men/knitwear/product.collared-wool-boucl%C3%A9-cardigan-light-blue.1195823002.html?slitmCd=40A1780270";
		String id;
		String name;
		String price;
		List<String> crawl = new ArrayList<String>();

		Connection conn = Jsoup.connect(url);
		Document doc = conn.get();
		Elements els = doc.select("div.contain");
//		System.out.println(els);
 
		id = els.select("div.o-product-information").attr("data-component-id");
		name = els.select("h1.a-paragraph").text();
		price = els.select("label.price").text();

		System.out.println("DATA-INDEX ::: " + id);
		System.out.println("상품명 ::: " + name);
		System.out.println("상품 가격 ::: " + price + "원");
		
//		Elements imgs = doc.select("main-image-wrapper");
//		for(Element el : els){
//			img = el.select("li.prd-main-img img").attr("src");
//			System.out.println("image ::: " + img);
//			System.out.println("==================================================================");
//
//		}
		Elements img = doc.select("div.swiper-zoom-container img");
//		System.out.println(img);
		
		int idx = 0;
		for(Element x : img){
			String sos = x.attr("src");
			System.out.println(sos);
		}
	}

}
