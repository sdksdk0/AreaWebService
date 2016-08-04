package cn.tf.client;

import cn.tf.service.AreaInterfaceImpl;
import cn.tf.service.AreaInterfaceImplService;

public class AreaClient {
	
	public static void main(String[] args) {
		AreaInterfaceImplService service=new AreaInterfaceImplService();
		
		AreaInterfaceImpl portType=service.getAreaInterfaceImplPort();
		String result=portType.queryArea(getQueryXml("1.1.",1,10));
		System.out.println(result);
	}
	
	private static String getQueryXml(String parentid,int start,int end){
		String  xml="<?xml version=\"1.1\" encoding=\"utf-8\"?>\n" +
				"<queryarea>\n"+
				"<parentid>"+parentid+"</parentid>\n"+
				"<start>"+start+"</start>\n"+
				"<end>"+end+"</end>\n"+
				"</queryarea>";
		return  xml;
		
		
	}
	
	

}

