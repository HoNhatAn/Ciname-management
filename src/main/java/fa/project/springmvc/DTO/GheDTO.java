package fa.project.springmvc.DTO;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
public class GheDTO {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	@NotEmpty(message = "Tên ghế không được để trống")
	String ten_ghe;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	@NotEmpty(message = "Tình trạng ghế không được để trống ")
	String tinh_trang;
	int phong_id;

	public int getPhong_id() {
		return phong_id;
	}

	public void setPhong_id(int phong_id) {
		this.phong_id = phong_id;
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
