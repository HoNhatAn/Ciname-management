package fa.project.springmvc.entities;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Set;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "dbo.KHACH_HANG")
public class KhachHangEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String ho_va_ten;

	private String email;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate ngay_sinh;
	
	private String so_dien_thoai;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String dia_chi;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String gioi_tinh;
	
	@OneToOne(mappedBy = "khachHang", cascade = CascadeType.ALL)
	private TaiKhoanEntity taiKhoan;

	public LocalDate getNgay_sinh() {
		return ngay_sinh;
	}

	public void setNgay_sinh(LocalDate ngay_sinh) {
		this.ngay_sinh = ngay_sinh;
	}

	public TaiKhoanEntity getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(TaiKhoanEntity taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	public Set<GheBanEntity> getGheBan() {
		return GheBan;
	}

	public void setGheBan(Set<GheBanEntity> gheBan) {
		GheBan = gheBan;
	}

	@OneToMany(mappedBy = "KhachHang",cascade = CascadeType.ALL)
	private Set<GheBanEntity> GheBan;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHo_va_ten() {
		return ho_va_ten;
	}

	public void setHo_va_ten(String ho_va_ten) {
		this.ho_va_ten = ho_va_ten;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSo_dien_thoai() {
		return so_dien_thoai;
	}

	public void setSo_dien_thoai(String so_dien_thoai) {
		this.so_dien_thoai = so_dien_thoai;
	}

	public String getDia_chi() {
		return dia_chi;
	}

	public void setDia_chi(String dia_chi) {
		this.dia_chi = dia_chi;
	}

	public String getGioi_tinh() {
		return gioi_tinh;
	}

	public void setGioi_tinh(String gioi_tinh) {
		this.gioi_tinh = gioi_tinh;
	}

}
