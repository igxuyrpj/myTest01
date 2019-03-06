package com.pyh.cloud;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

public class TestClient {
	public static void main(String[] args) throws Exception {
		//创建默认的HttpClient
		CloseableHttpClient httpclient=HttpClients.createDefault();
		for (int i = 0; i < 6; i++) {
			//调用get方法请求服务
			HttpGet httpget=new HttpGet("http://localhost:9000/router");
		    //获取相应
			HttpResponse response=httpclient.execute(httpget);
			System.out.println(EntityUtils.toString(response.getEntity()));
		}
	}

}
