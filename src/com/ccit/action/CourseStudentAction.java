package com.ccit.action;

import java.util.*;

import com.ccit.model.Course;
import com.ccit.model.CourseStudent;
import com.ccit.model.User;
import com.ccit.manager.ObjectManager;
import com.opensymphony.xwork2.*;

@SuppressWarnings( { "unchecked", "serial" })
public class CourseStudentAction extends ActionSupport {
	private CourseStudent util;
	private List<CourseStudent> list;
	private List<User> listUser;
	private List<Course> listCourse;
	private String message;
	private String str;
	private ObjectManager objectManager;

	public String initUtil() throws Exception {
		listCourse = objectManager.getUtil("from Course");
		listUser = objectManager.getUtil("from User");
		util = null;
		return "saveOrUpdate";
	}

	public String saveOrUpdateObject() throws Exception {
		if (0 == util.getId()) {
			Map session = ActionContext.getContext().getSession();
			int nid = (Integer) session.get("id");
			User user = (User) objectManager.getObject(new User(), nid);
			util.setUser(user);
		}
		objectManager.saveOrUpdateObject(util);
		util = null;
		return getAllUtil();
	}

	public String deleteUtil() throws Exception {
		objectManager.deleteObject(util);
		return getAllUtil();
	}

	public String selectUtil() throws Exception {
		listCourse = objectManager.getUtil("from Course");
		listUser = objectManager.getUtil("from User");
		util = (CourseStudent) objectManager.getObject(new CourseStudent(),
				util.getId());
		return "saveOrUpdate";
	}

	public String getAllUtil() throws Exception {
		
		String sql = "";
		if (null != message && message.trim().length() > 0) {
			String _Str = new String(str.getBytes("iso-8859-1"), "utf-8");
			str = _Str;
			sql = "from CourseStudent where " + message + " like '%" + str
					+ "%'";
		} else {
			sql = "from CourseStudent";
			// if (!"admin".equals(type)) {
			// sql = sql + " where user.id = " + id;
			// }
		}
		message = null;
		list = objectManager.getUtil(sql);
		return "find";
	}

	public CourseStudent getUtil() {
		return util;
	}

	public void setUtil(CourseStudent util) {
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

	public List<CourseStudent> getList() {
		return list;
	}

	public void setList(List<CourseStudent> list) {
		this.list = list;
	}

	public List<Course> getListCourse() {
		return listCourse;
	}

	public void setListCourse(List<Course> listCourse) {
		this.listCourse = listCourse;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public List<User> getListUser() {
		return listUser;
	}

	public void setListUser(List<User> listUser) {
		this.listUser = listUser;
	}

}
