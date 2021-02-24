package es.basket.rmadrid.dao.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "news")
@EntityListeners(AuditingEntityListener.class)
public class News extends BaseEntity {

	private String title;

	private String content;

	private String link;
	
	private String source;

	@CreatedDate
	private Date created;

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

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Override
	public String toString() {
		return "News [" + (title != null ? "title=" + title + ", " : "")
				+ (content != null ? "content=" + content + ", " : "") + (link != null ? "link=" + link + ", " : "")
				+ (source != null ? "source=" + source + ", " : "") + (created != null ? "created=" + created : "")
				+ "]";
	}
}
