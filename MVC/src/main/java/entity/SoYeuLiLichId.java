package entity;
// Generated Sep 29, 2018 4:45:23 PM by Hibernate Tools 3.5.0.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * SoYeuLiLichId generated by hbm2java
 */
@Embeddable
public class SoYeuLiLichId implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1339617675622293782L;
	private String maql;
	private int id;

	public SoYeuLiLichId() {
	}

	public SoYeuLiLichId(String maql, int id) {
		this.maql = maql;
		this.id = id;
	}

	@Column(name = "MAQL", nullable = false, length = 45)
	public String getMaql() {
		return this.maql;
	}

	public void setMaql(String maql) {
		this.maql = maql;
	}

	@Column(name = "id", nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof SoYeuLiLichId))
			return false;
		SoYeuLiLichId castOther = (SoYeuLiLichId) other;

		return ((this.getMaql() == castOther.getMaql()) || (this.getMaql() != null && castOther.getMaql() != null
				&& this.getMaql().equals(castOther.getMaql()))) && (this.getId() == castOther.getId());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getMaql() == null ? 0 : this.getMaql().hashCode());
		result = 37 * result + this.getId();
		return result;
	}

}
