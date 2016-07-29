package com.ccit.action;

import java.util.*;

import com.ccit.model.Guestbook;
import com.ccit.model.User;
import com.ccit.model.ReplyGuestbook;
import com.ccit.manager.ObjectManager;
import com.opensymphony.xwork2.*;

@SuppressWarnings({ "unchecked", "serial" })
public class ReplyGuestbookAction extends ActionSupport {
	private ReplyGuestbook util;
	private List<ReplyGuestbook> list;
	private List<Guestbook> listGuestbook;
	private List<User> listUser;
	private String message;
	private String str;
	private ObjectManager objectManager;

	public String initUtil() throws Exception{
		listGuestbook = objectManager.getUtil("from Guestbook");
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
		listGuestbook = objectManager.getUtil("from Guestbook");
		listUser = objectManager.getUtil("from User");
		util = (ReplyGuestbook) objectManager.getObject(new ReplyGuestbook(), util.getId());
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
			sql = "from ReplyGuestbook where " + message + " like '%" + str + "%'";
		} else {
			sql = "from ReplyGuestbook";
			//if (!"admin".equals(type)) {
			//	sql = sql + " where user.id = " + id;
			//}
		}
		message = null;
		list = objectManager.getUtil(sql);
		return "find";
	}

	public ReplyGuestbook getUtil() {
		return util;
	}

	public void setUtil(ReplyGuestbook util) {
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

	public List<ReplyGuestbook> getList() {
		return list;
	}

	public void setList(List<ReplyGuestbook> list) {
		this.list = list;
	}

	public List<Guestbook> getListGuestbook() {
		return listGuestbook;
	}

	public void setListGuestbook(List<Guestbook> listGuestbook) {
		this.listGuestbook = listGuestbook;
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
