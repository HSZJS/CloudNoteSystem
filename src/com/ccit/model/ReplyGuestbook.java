package com.ccit.model;

public class ReplyGuestbook {
	private int id;
	private Guestbook guestbook;
	private User user;
	private String s_0;
	private String s_1;
	private String s_2;

	public ReplyGuestbook() {
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setGuestbook(Guestbook guestbook) {
		this.guestbook = guestbook;
	}

	public void setUser(User user) {
		this.user = user;
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

	public Guestbook getGuestbook() {
		return this.guestbook;
	}

	public User getUser() {
		return this.user;
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

}
