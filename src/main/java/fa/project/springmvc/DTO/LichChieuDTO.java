package fa.project.springmvc.DTO;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
public class LichChieuDTO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private float thoi_luong_chieu_chinh;

	private float thoi_luong_quang_cao;

	private String thoi_gian_bat_dau;

	private String thoi_gian_ket_thuc;

	private int phong_id;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	private int phim_id;


	public float getThoi_luong_chieu_chinh() {
		return thoi_luong_chieu_chinh;
	}


	public void setThoi_luong_chieu_chinh(float thoi_luong_chieu_chinh) {
		this.thoi_luong_chieu_chinh = thoi_luong_chieu_chinh;
	}


	public float getThoi_luong_quang_cao() {
		return thoi_luong_quang_cao;
	}


	public void setThoi_luong_quang_cao(float thoi_luong_quang_cao) {
		this.thoi_luong_quang_cao = thoi_luong_quang_cao;
	}



	public String getThoi_gian_bat_dau() {
		return thoi_gian_bat_dau;
	}


	public void setThoi_gian_bat_dau(String thoi_gian_bat_dau) {
		this.thoi_gian_bat_dau = thoi_gian_bat_dau;
	}


	public String getThoi_gian_ket_thuc() {
		return thoi_gian_ket_thuc;
	}


	public void setThoi_gian_ket_thuc(String thoi_gian_ket_thuc) {
		this.thoi_gian_ket_thuc = thoi_gian_ket_thuc;
	}


	public int getPhong_id() {
		return phong_id;
	}


	public void setPhong_id(int phong_id) {
		this.phong_id = phong_id;
	}


	public int getPhim_id() {
		return phim_id;
	}


	public void setPhim_id(int phim_id) {
		this.phim_id = phim_id;
	}




}
