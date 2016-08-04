package cn.tf.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.tf.area.AreaModel;

public class AreaDao {
	
	public List<AreaModel> queryArea(String parentid, int start, int end) {
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet resultSet = null;
		List<AreaModel> areaList = new ArrayList<>();
		try {
			//加载数据库驱动
			Class.forName("com.mysql.jdbc.Driver");
			//获得connection
			connection = DriverManager.getConnection("jdbc:mysql:///day15", "zp", "a");
			String sql="select *from area where parentid=? limit ?,? ";
			pstmt=connection.prepareStatement(sql);
			
			pstmt.setString(1,parentid);
			pstmt.setInt(2, start-1);
			pstmt.setInt(3, end-start-1);
			
			resultSet=pstmt.executeQuery();
			
			
			
			while(resultSet.next()){
				
				AreaModel model=new AreaModel();
				model.setAreaid(resultSet.getString("areaid"));
				model.setAreaname(resultSet.getString("areaname"));
				model.setArealevel(resultSet.getString("arealevel"));
				model.setParentid(resultSet.getString("parentid"));
				//添加到区域列表
				areaList.add(model);
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				resultSet.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return areaList;
		
	}
}
