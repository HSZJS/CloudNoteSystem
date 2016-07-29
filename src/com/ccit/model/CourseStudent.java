package com.ccit.model;

public class CourseStudent {
	private int id;
	private Course course;
	private User user;
	private String s_0;
	private String s_1;
	private String s_2;

	public CourseStudent() {
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public void setS_0(String s_0) {
		this.s_0 = s_0;
	}

	public void setS_1(String s_1) {
		this.s_1 = s_1;
	}

	public void setS_2(String s_2) {
		this.s_2 = s_2;
	}

	public int getId() {
		return this.id;
	}

	public Course getCourse() {
		return this.course;
	}

	public String getS_0() {
		return this.s_0;
	}

	public String getS_1() {
		return this.s_1;
	}

	public String getS_2() {
		return this.s_2;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
