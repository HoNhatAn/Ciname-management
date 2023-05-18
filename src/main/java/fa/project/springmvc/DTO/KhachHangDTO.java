package fa.project.springmvc.DTO;

import java.time.LocalDate;
import java.util.Set;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import fa.project.springmvc.entities.RoleEntity;

public class KhachHangDTO {
	private int id;
	@NotEmpty(message = "Bạn chưa họ tên")
	private String ho_va_ten;
	@NotEmpty(message = "Email không được để trống .")
	@Email(message = "Bạn nhập chưa đúng định dạng email")
	private String email;
	@NotNull(message = "Ngày sinh không được để trống .")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate ngay_sinh;
	@NotNull(message = "Số điện thoại không được để trống")
	@Pattern(regexp = "^0\\d{9}$", message = "Số điện thoại phải có 10 chữ số và bắt đầu bằng '0' .")
	private String so_dien_thoai;
	@NotEmpty(message = "Địa chỉ không được để trống")
	private String dia_chi;
	/* @NotEmpty(message = "Bạn chưa chọn giới tính") */
	private String gioi_tinh;
	@NotNull(message = "Bạn chưa nhập mật khẩu")
	@Size(min = 8, message = "Mật khẩu cần ít nhất 8 ký tự")
	@Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).+$", message = "Mật khẩu cần chứa  ít nhất một ký tự in hoa, một ký tự thường và ký tự số")
	private String password;
	@NotEmpty(message = "Bạn chưa nhập xác nhận mật khẩu.")
	private String cfpassword;
	public String getCfpassword() {
		return cfpassword;
	}
	public void setCfpassword(String cfpassword) {
		this.cfpassword = cfpassword;
	}

	public Set<RoleEntity> getRole() {
		return role;
	}
	public void setRole(Set<RoleEntity> role) {
		this.role = role;
	}
	private Set<RoleEntity> role; 
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
	public LocalDate getNgay_sinh() {
		return ngay_sinh;
	}
	public void setNgay_sinh(LocalDate ngay_sinh) {
		this.ngay_sinh = ngay_sinh;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


}
