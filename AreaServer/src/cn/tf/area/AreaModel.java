package cn.tf.area;

//区域信息pojo
public class AreaModel {
	
	private String areaid;
	private String areaname;
	private String parentid;
	private String arealevel;
	
	private int start;
	private int end;
	public String getAreaid() {
		return areaid;
	}
	public void setAreaid(String areaid) {
		this.areaid = areaid;
	}
	public String getAreaname() {
		return areaname;
	}
	public void setAreaname(String areaname) {
		this.areaname = areaname;
	}
	public String getParentid() {
		return parentid;
	}
	public void setParentid(String parentid) {
		this.parentid = parentid;
	}
	public String getArealevel() {
		return arealevel;
	}
	public void setArealevel(String arealevel) {
		this.arealevel = arealevel;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String toString() {
		return "AreaModel [areaid=" + areaid + ", areaname=" + areaname
				+ ", parentid=" + parentid + ", arealevel=" + arealevel
				+ ", start=" + start + ", end=" + end + "]";
	}
	public AreaModel(String areaid, String areaname, String parentid,
			String arealevel, int start, int end) {
		super();
		this.areaid = areaid;
		this.areaname = areaname;
		this.parentid = parentid;
		this.arealevel = arealevel;
		this.start = start;
		this.end = end;
	}
	public AreaModel() {
		super();
	}
	
	
	

}
