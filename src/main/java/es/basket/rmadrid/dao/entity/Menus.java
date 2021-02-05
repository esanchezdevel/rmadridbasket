package es.basket.rmadrid.dao.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "menus")
@EntityListeners(AuditingEntityListener.class)
public class Menus {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private String item;

	private String link;

	@Column(name = "item_order")
	private long itemOrder;

	@LastModifiedBy
	private Date updated;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public long getItemOrder() {
		return itemOrder;
	}

	public void setItemOrder(long itemOrder) {
		this.itemOrder = itemOrder;
	}

	public Date getUpdated() {
		return updated;
	}

	public void setUpdated(Date updated) {
		this.updated = updated;
	}
}
