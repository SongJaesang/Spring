package edu.spring.ex02.domain;

import java.util.Date;

// MVC 디자인 패턴에서 Model에 해당하는 클래스.
// 멤버 변수(필드, 프로퍼티)들의 이름은 데이터베이스 테이블의 컬럼 이름과 일치.
// -> MyBatis 프레임워크에서 getter/setter를 찾을 때 테이블의 컬럼 이름을 기준으로 찾기 때문에.
public class Board {
	private int bno;
	private String title;
	private String content;
	private String userid;
	private Date reg_date;
	private Date updatedate;
	private int view_cnt;
	
	public Board() {}

	public Board(int bno, String title, String content, String userid, 
			Date reg_date, Date updatedate, int view_cnt) {
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.userid = userid;
		this.reg_date = reg_date;
		this.updatedate = updatedate ;
		this.view_cnt = view_cnt;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	public Date getUpdatedate() {
		return updatedate;
	}

	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}	
	
	public int getView_cnt() {
		return view_cnt;
	}

	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}

	@Override
	public String toString() {
		return "Board [bno=" + bno + ", title=" + title + ", content=" + content + ", userid=" + userid + ", reg_date="
				+ reg_date + ", updatedate=" + updatedate + ", view_cnt=" + view_cnt + "]";
	}

}