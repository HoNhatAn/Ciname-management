package fa.project.springmvc.entities;

import java.time.LocalDate;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "dbo.GHE_BANS")
public class GheBanEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotEmpty(message = "Tên ghế không được để trống !!")
	String ten_ghe;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate ngay_dat;

	public LocalDate getNgay_dat() {
		return ngay_dat;
	}

	public void setNgay_dat(LocalDate ngay_dat) {
		this.ngay_dat = ngay_dat;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "KhachHang_id")
	private KhachHangEntity KhachHang;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "LichChieu_id")
	private LichChieuEntity LichChieu;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen_ghe() {
		return ten_ghe;
	}

	public void setTen_ghe(String ten_ghe) {
		this.ten_ghe = ten_ghe;
	}

	public KhachHangEntity getKhachHang() {
		return KhachHang;
	}

	public void setKhachHang(KhachHangEntity khachHang) {
		KhachHang = khachHang;
	}

	public LichChieuEntity getLichChieu() {
		return LichChieu;
	}

	public void setLichChieu(LichChieuEntity lichChieu) {
		LichChieu = lichChieu;
	}

}
