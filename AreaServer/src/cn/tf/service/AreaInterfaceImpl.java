package cn.tf.service;

import java.util.List;

import javax.jws.WebService;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import cn.tf.area.AreaModel;
import cn.tf.dao.AreaDao;

@WebService
public class AreaInterfaceImpl implements AreaInterface {

	@Override
	public String queryArea(String area) {
		
		//解析xml查询条件
		AreaModel model = null;
		try {
			model = parseXml(area);
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		AreaDao dao=new AreaDao();
		List<AreaModel> list=dao.queryArea(model.getParentid(), model.getStart(), model.getEnd());
		String result = null;
		try {
			result = list2xml(list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return result;
	}
	
	private AreaModel parseXml(String xml) throws DocumentException{
		
		Document document=DocumentHelper.parseText(xml);
		String parentid=document.selectSingleNode("/queryarea/parentid").getText();
		String start=document.selectSingleNode("/queryarea/start").getText();
		String end=document.selectSingleNode("/queryarea/end").getText();
		
		AreaModel model=new AreaModel();
		model.setParentid(parentid);
		model.setStart(Integer.parseInt(start));
		model.setEnd(Integer.parseInt(end));
		return model;
		
	}
	private String list2xml(List<AreaModel> list) throws Exception {
		Document document = DocumentHelper.createDocument();
		//添加以根节点
		Element root = document.addElement("areas");
		
		for (AreaModel areaModel : list) {
			Element area = root.addElement("area");
			area.addElement("areaid").setText(areaModel.getAreaid());
			area.addElement("areaname").setText(areaModel.getAreaname());
			area.addElement("arealevel").setText(areaModel.getArealevel());
			area.addElement("parentid").setText(areaModel.getParentid());
		}
		
		return document.asXML();
	}
	

}
