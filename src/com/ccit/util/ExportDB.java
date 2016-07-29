package com.ccit.util;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

import com.ccit.manager.ObjectManager;
import com.ccit.manager.ObjectManagerImpl;
import com.ccit.model.User;

public class ExportDB {

	public static void main(String[] args) {

		Configuration cfg = new Configuration().configure();

		SchemaExport export = new SchemaExport(cfg);

		export.create(true, true);
		ObjectManager objectManager = new ObjectManagerImpl();
		User util = new User();
		util.setS_0("admin");
		util.setS_1("admin");
		util.setS_2("admin");
		util.setS_11("admin");
		objectManager.saveObject(util);

	}
}
