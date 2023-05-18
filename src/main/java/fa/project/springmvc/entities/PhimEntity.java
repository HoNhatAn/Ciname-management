package fa.project.springmvc.entities;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "dbo.PHIMS")
public class PhimEntity {
	
	 public PhimEntity() { this.LichChieu=null; }
	 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String ten_phim;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String slug_ten_phim;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String thoi_luong;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String dao_dien;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String dien_vien;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String the_loai;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String tinh_trang;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String mo_ta;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String avatar;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String trailer;
	
	public String getTinh_trang() {
		return tinh_trang;
	}

	public void setTinh_trang(String tinh_trang) {
		this.tinh_trang = tinh_trang;
	}
	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getTrailer() {
		return trailer;
	}

	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate ngay_khoi_chieu;

	@OneToMany(mappedBy = "Phim",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	private List<LichChieuEntity> LichChieu;

	public List<LichChieuEntity> getLichChieu() {
		return LichChieu;
	}

	public void setLichChieu(List<LichChieuEntity> lichChieu) {
		LichChieu = lichChieu;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen_phim() {
		return ten_phim;
	}

	public void setTen_phim(String ten_phim) {
		this.ten_phim = ten_phim;
	}

	public String getSlug_ten_phim() {
		return slug_ten_phim;
	}

	public void setSlug_ten_phim(String slug_ten_phim) {
		this.slug_ten_phim = slug_ten_phim;
	}

	public String getThoi_luong() {
		return thoi_luong;
	}

	public void setThoi_luong(String thoi_luong) {
		this.thoi_luong = thoi_luong;
	}

	public String getDao_dien() {
		return dao_dien;
	}

	public void setDao_dien(String dao_dien) {
		this.dao_dien = dao_dien;
	}

	public String getDien_vien() {
		return dien_vien;
	}

	public void setDien_vien(String dien_vien) {
		this.dien_vien = dien_vien;
	}

	public String getThe_loai() {
		return the_loai;
	}

	public void setThe_loai(String the_loai) {
		this.the_loai = the_loai;
	}

	public String getMo_ta() {
		return mo_ta;
	}

	public void setMo_ta(String mo_ta) {
		this.mo_ta = mo_ta;
	}

	public LocalDate getNgay_khoi_chieu() {
		return ngay_khoi_chieu;
	}

	public void setNgay_khoi_chieu(LocalDate ngay_khoi_chieu) {
		this.ngay_khoi_chieu = ngay_khoi_chieu;
	}

	@Override
	public String toString() {
		return "PhimEntity [id=" + id + ", ten_phim=" + ten_phim + ", slug_ten_phim=" + slug_ten_phim + ", thoi_luong="
				+ thoi_luong + ", dao_dien=" + dao_dien + ", dien_vien=" + dien_vien + ", the_loai=" + the_loai
				+ ", tinh_trang=" + tinh_trang + ", mo_ta=" + mo_ta + ", avatar=" + avatar + ", trailer=" + trailer
				+ ", ngay_khoi_chieu=" + ngay_khoi_chieu + ", getTinh_trang()=" + getTinh_trang() + ", getAvatar()="
				+ getAvatar() + ", getTrailer()=" + getTrailer() + ", getLichChieu()=" + getLichChieu() + ", getId()="
				+ getId() + ", getTen_phim()=" + getTen_phim() + ", getSlug_ten_phim()=" + getSlug_ten_phim()
				+ ", getThoi_luong()=" + getThoi_luong() + ", getDao_dien()=" + getDao_dien() + ", getDien_vien()="
				+ getDien_vien() + ", getThe_loai()=" + getThe_loai() + ", getMo_ta()=" + getMo_ta()
				+ ", getNgay_khoi_chieu()=" + getNgay_khoi_chieu() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

}
