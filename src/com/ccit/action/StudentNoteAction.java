package com.ccit.action;

import java.util.*;
import java.io.*;
import java.text.*;
import org.apache.struts2.ServletActionContext;
import com.ccit.manager.ObjectManager;
import com.ccit.model.*;
import com.opensymphony.xwork2.*;

@SuppressWarnings( { "unchecked", "serial" })
public class StudentNoteAction extends ActionSupport {
	private static final long serialVersionUID = 1l;
	private static final int BUFFER_SIZE = 1;
	private File myFile;
	private String contentType;
	private String fileName;
	private String imageFileName;
	private StudentNote util;
	private List<StudentNote> list;
	private List<User> listUser;
	private String message;
	private String str;
	private ObjectManager objectManager;
	private String err;

	public String initUtil() throws Exception {
		listUser = objectManager.getUtil("from User");
		util = null;
		return "saveOrUpdate";
	}

	public String getAllUtil() throws Exception {
		String sql = "";
		if (null != message && message.trim().length() > 0) {
			String _Str = new String(str.getBytes("iso-8859-1"), "utf-8");
			str = _Str;
			
			
	
				sql = "from StudentNote where " + message + " like '%" + str + "%'";
		} else {
			sql = "from StudentNote";
		}
		message = null;
		list = objectManager.getUtil(sql);
		return "find";
	}

	@SuppressWarnings("unchecked")
	public String updateUtil() throws Exception {
		int id = util.getId();
		if (id == 0) {
			boolean flag = false;
			flag = upload();
			if (flag) {
				Map session = ActionContext.getContext().getSession();
				int nid = (Integer) session.get("id");
				User user = (User) objectManager.getObject(new User(), nid);
				util.setUser(user);
				String mess = util.getS_4();
				String st[] = { "妈的", "日", "操", "逼", "婊子" };
				for (String s : st) {
					mess = mess.replace(s, "*");
				}
				util.setS_4(mess);
				objectManager.saveObject(util);
				util = null;
				return "ok";
			} else {
				message = "upload err";
				return "saveOrUpdate";
			}
		}
		StudentNote tmp = (StudentNote) objectManager.getObject(
				new StudentNote(), util.getId());
		if (fileName == null
				|| (fileName != null && fileName.equals(tmp.getS_2()))) {
			util.setS_0(tmp.getS_0());
			util.setS_1(tmp.getS_1());
			util.setS_2(tmp.getS_2());
			objectManager.updateObject(util);
			return getAllUtil();
		}
		boolean flag = false;
		flag = upload();
		if (flag) {
			objectManager.updateObject(util);
			return getAllUtil();
		} else {
			message = "update err";
			return "saveOrUpdate";
		}
	}

	public String selectUtil() throws Exception {
		listUser = objectManager.getUtil("from User");
		util = (StudentNote) objectManager.getObject(new StudentNote(), util
				.getId());
		return "saveOrUpdate";
	}

	@SuppressWarnings("unchecked")
	public String deleteUtil() throws Exception {
		objectManager.deleteObject(util);
		return getAllUtil();
	}

	private boolean upload() {
		if (null == fileName) {
			return false;
		}
		int pos = fileName.lastIndexOf(".");
		String type = fileName.substring(pos);
		String types[] = { ".png", ".jpg", ".ppt", ".doc", ".rtf", ".pages", ".excel",
				".xls" };
		boolean flag = false;
		for (String t : types) {
			if (t.equals(type)) {
				flag = true;
				break;
			}
		}
		if (!flag) {
			err = "文件类型不匹配";
			return false;
		}
		imageFileName = fileName.substring(0, pos) + new Date().getTime()
				+ fileName.substring(pos);
		String path = ServletActionContext.getServletContext().getRealPath(
				"/upload")
				+ "/" + imageFileName;
		File imageFile = new File(path);
		util.setS_0(imageFileName);
		String date = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss")
				.format(Calendar.getInstance().getTime());
		util.setS_1(date);
		util.setS_2(fileName);
		try {
			copy(myFile, imageFile);
		} catch (Exception e) {
			return false;
		}

		return true;
	}

	private void copy(File src, File dst) throws Exception {
		InputStream in = new BufferedInputStream(new FileInputStream(src),
				BUFFER_SIZE);
		OutputStream out = new BufferedOutputStream(new FileOutputStream(dst),
				BUFFER_SIZE);
		byte[] buffer = new byte[BUFFER_SIZE];
		while (in.read(buffer) > 0) {
			out.write(buffer);
		}
		in.close();
		out.close();
	}

	public void setMyFileContentType(String contentType) {
		this.contentType = contentType;
	}

	public void setMyFileFileName(String fileName) {
		this.fileName = fileName;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public static int getBUFFER_SIZE() {
		return BUFFER_SIZE;
	}

	public File getMyFile() {
		return myFile;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public ObjectManager getObjectManager() {
		return objectManager;
	}

	public void setObjectManager(ObjectManager objectManager) {
		this.objectManager = objectManager;
	}

	public List<StudentNote> getList() {
		return list;
	}

	public void setList(List<StudentNote> list) {
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

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public StudentNote getUtil() {
		return util;
	}

	public void setUtil(StudentNote util) {
		this.util = util;
	}

	public String getErr() {
		return err;
	}

	public void setErr(String err) {
		this.err = err;
	}

}
