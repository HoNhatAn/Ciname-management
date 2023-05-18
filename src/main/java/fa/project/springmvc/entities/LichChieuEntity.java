package fa.project.springmvc.entities;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.sql.Timestamp;

@Entity
@Table(name = "dbo.LICH_CHIEUS")
public class LichChieuEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private float thoi_luong_chieu_chinh;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private float thoi_luong_quang_cao;

	private Timestamp thoi_gian_bat_dau;

	private Timestamp thoi_gian_ket_thuc;

	@ManyToOne
	@JoinColumn(name = "Phong_id")
	private PhongEntity Phong;

	@OneToMany(mappedBy = "LichChieu")
	private Set<GheBanEntity> GheBan;

	@ManyToOne
	@JoinColumn(name = "Phim_id")
	private PhimEntity Phim;

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

	public Timestamp getThoi_gian_bat_dau() {
		return thoi_gian_bat_dau;
	}

	public void setThoi_gian_bat_dau(Timestamp thoi_gian_bat_dau) {
		this.thoi_gian_bat_dau = thoi_gian_bat_dau;
	}

	public Timestamp getThoi_gian_ket_thuc() {
		return thoi_gian_ket_thuc;
	}

	public void setThoi_gian_ket_thuc(Timestamp thoi_gian_ket_thuc) {
		this.thoi_gian_ket_thuc = thoi_gian_ket_thuc;
	}

	public PhongEntity getPhong() {
		return Phong;
	}

	public void setPhong(PhongEntity phong) {
		Phong = phong;
	}

	public Set<GheBanEntity> getGheBan() {
		return GheBan;
	}

	public void setGheBan(Set<GheBanEntity> gheBan) {
		GheBan = gheBan;
	}

	public PhimEntity getPhim() {
		return Phim;
	}

	public void setPhim(PhimEntity phim) {
		Phim = phim;
	}
	


}
