package com.ccit.action;

import java.util.*;
import com.ccit.model.User;
import com.ccit.model.Course;
import com.ccit.manager.ObjectManager;
import com.opensymphony.xwork2.*;

@SuppressWarnings({ "unchecked", "serial" })
public class CourseAction extends ActionSupport {
	private Course util;
	private List<Course> list;
	private List<User> listUser;
	private String message;
	private String str;
	private ObjectManager objectManager;

	public String initUtil() throws Exception{
		listUser = objectManager.getUtil("from User where s_11='teacher'");
		util = null;
		return "saveOrUpdate";
	}

	public String saveOrUpdateObject() throws Exception{
		objectManager.saveOrUpdateObject(util);
		util = null;
		return getAllUtil();
	}

	public String deleteUtil() throws Exception{
		objectManager.deleteObject(util);
		return getAllUtil();
	}

	public String selectUtil() throws Exception{
		listUser = objectManager.getUtil("from User");
		util = (Course) objectManager.getObject(new Course(), util.getId());
		return "saveOrUpdate";
	}

	public String getAllUtil() throws Exception{
		//Map session = ActionContext.getContext().getSession();
		//String type = (String) session.get("type");
		//int id = (Integer) session.get("id");
		String sql = "";
		if (null != message && message.trim().length() > 0) {
			String _Str = new String(str.getBytes("iso-8859-1"), "utf-8");
			str = _Str;
			sql = "from Course where " + message + " like '%" + str + "%'";
		} else {
			sql = "from Course";
		}
		message = null;
		list = objectManager.getUtil(sql);
		return "find";
	}

	public Course getUtil() {
		return util;
	}

	public void setUtil(Course util) {
		this.util = util;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public ObjectManager getObjectManager() {
		return objectManager;
	}

	public void setObjectManager(ObjectManager objectManager) {
		this.objectManager = objectManager;
	}

	public List<Course> getList() {
		return list;
	}

	public void setList(List<Course> list) {
		this.list = list;
	}

	public List<User> getListUser() {
		return listUser;
	}

	public void setListUser(List<User> listUser) {
		this.listUser = listUser;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

}
