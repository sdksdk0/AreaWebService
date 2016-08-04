package cn.tf;

import javax.xml.ws.Endpoint;

import cn.tf.service.AreaInterfaceImpl;

//发布服务
public class AreaServer {
	
	public static void main(String[] args) {
		Endpoint.publish("http://127.0.0.1:11111/area", new AreaInterfaceImpl());
	}
}
