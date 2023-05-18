package fa.project.springmvc.DTO;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class DoiMatKhau {
	private String email;
	@NotEmpty(message = "Bạn nhập mật khẩu cũ")
	private String matKhauCu;
	@Size(min = 8, message = "Mật khẩu cần ít nhất 8 ký tự")
	@Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).+$", message = "Mật khẩu cần chứa  ít nhất một ký tự in hoa, một ký tự thường và ký tự số")
	private String matKhauMoi;
	@NotEmpty(message = "Bạn chưa xác nhận mật khẩu")
	private String xacNhan;
	public String getMatKhauCu() {
		return matKhauCu;
	}
	public void setMatKhauCu(String matKhauCu) {
		this.matKhauCu = matKhauCu;
	}
	public String getMatKhauMoi() {
		return matKhauMoi;
	}
	public void setMatKhauMoi(String matKhauMoi) {
		this.matKhauMoi = matKhauMoi;
	}
	public String getXacNhan() {
		return xacNhan;
	}
	public void setXacNhan(String xacNhan) {
		this.xacNhan = xacNhan;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
