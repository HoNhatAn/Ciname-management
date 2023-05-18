package fa.project.springmvc.entities;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "dbo.GHES")
public class GheEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	@NotEmpty(message = "Tên ghế không được để trống")
	String ten_ghe;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	@NotEmpty(message = "Tình trạng ghế không được để trống ")
	String tinh_trang;

	@ManyToOne()
	@JoinColumn(name = "Phong_id")
	private PhongEntity Phong;

	public PhongEntity getPhong() {
		return Phong;
	}

	public void setPhong(PhongEntity phong) {
		Phong = phong;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTinh_trang() {
		return tinh_trang;
	}

	public void setTinh_trang(String tinh_trang) {
		this.tinh_trang = tinh_trang;
	}

	public String getTen_ghe() {
		return ten_ghe;
	}

	public void setTen_ghe(String ten_ghe) {
		this.ten_ghe = ten_ghe;
	}



}
