package es.basket.rmadrid.dao.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "games")
@EntityListeners(AuditingEntityListener.class)
public class Games {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private String local;

	private String visitor;

	@Column(name = "score_local")
	private long scoreLocal;
	
	@Column(name = "score_visitor")
	private long scoreVisitor;

    @ManyToOne
	@JoinColumn(name = "tournament_id")
	private Tournaments tournament;

	private Boolean played;
	
	private String court;
	
	@ManyToOne
	@JoinColumn(name = "channel_id")
	private Channels channel;
	
	@LastModifiedBy
	private Date updated;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public String getVisitor() {
		return visitor;
	}

	public void setVisitor(String visitor) {
		this.visitor = visitor;
	}

	public long getScoreLocal() {
		return scoreLocal;
	}

	public void setScoreLocal(long scoreLocal) {
		this.scoreLocal = scoreLocal;
	}

	public long getScoreVisitor() {
		return scoreVisitor;
	}

	public void setScoreVisitor(long scoreVisitor) {
		this.scoreVisitor = scoreVisitor;
	}

	public Tournaments getTournament() {
		return tournament;
	}

	public void setTournament(Tournaments tournament) {
		this.tournament = tournament;
	}

	public Boolean getPlayed() {
		return played;
	}

	public void setPlayed(Boolean played) {
		this.played = played;
	}

	public String getCourt() {
		return court;
	}

	public void setCourt(String court) {
		this.court = court;
	}

	public Channels getChannel() {
		return channel;
	}

	public void setChannel(Channels channel) {
		this.channel = channel;
	}

	public Date getUpdated() {
		return updated;
	}

	public void setUpdated(Date updated) {
		this.updated = updated;
	}
}
