package com.ccit.action;

import java.util.*;

import com.ccit.model.User;
import com.ccit.model.Tickling;
import com.ccit.manager.ObjectManager;
import com.opensymphony.xwork2.*;

@SuppressWarnings({ "unchecked", "serial" })
public class TicklingAction extends ActionSupport {
	private Tickling util;
	private List<Tickling> list;
	private List<User> listUser;
	private String message;
	private String str;
	private ObjectManager objectManager;

	public String initUtil() throws Exception{
		listUser = objectManager.getUtil("from User");
		util = null;
		return "saveOrUpdate";
	}

	public String saveOrUpdateObject() throws Exception{
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

	public String deleteUtil() throws Exception{
		objectManager.deleteObject(util);
		return getAllUtil();
	}

	public String selectUtil() throws Exception{
		listUser = objectManager.getUtil("from User");
		util = (Tickling) objectManager.getObject(new Tickling(), util.getId());
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
			sql = "from Tickling where " + message + " like '%" + str + "%'";
		} else {
			sql = "from Tickling";
			//if (!"admin".equals(type)) {
			//	sql = sql + " where user.id = " + id;
			//}
		}
		message = null;
		list = objectManager.getUtil(sql);
		return "find";
	}

	public Tickling getUtil() {
		return util;
	}

	public void setUtil(Tickling util) {
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

	public List<Tickling> getList() {
		return list;
	}

	public void setList(List<Tickling> list) {
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
