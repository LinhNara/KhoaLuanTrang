package entity;
// Generated Sep 29, 2018 4:45:23 PM by Hibernate Tools 3.5.0.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * LuongId generated by hbm2java
 */
@Embeddable
public class LuongId implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1311351474576214289L;
	private int id;
	private String maql;

	public LuongId() {
	}

	public LuongId(int id, String maql) {
		this.id = id;
		this.maql = maql;
	}

	@Column(name = "ID", nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "MAQL", nullable = false, length = 45)
	public String getMaql() {
		return this.maql;
	}

	public void setMaql(String maql) {
		this.maql = maql;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof LuongId))
			return false;
		LuongId castOther = (LuongId) other;

		return (this.getId() == castOther.getId())
				&& ((this.getMaql() == castOther.getMaql()) || (this.getMaql() != null && castOther.getMaql() != null
						&& this.getMaql().equals(castOther.getMaql())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getId();
		result = 37 * result + (getMaql() == null ? 0 : this.getMaql().hashCode());
		return result;
	}

}
