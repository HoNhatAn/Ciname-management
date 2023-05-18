package fa.project.springmvc.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "dbo.TAI_KHOAN")
public class TaiKhoanEntity {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@OneToOne
	@JoinColumn(name = "khachHang_id")
	private KhachHangEntity khachHang;
	@Id
	@NotEmpty(message = "Bạn chưa nhập tên đăng nhập")
	private String username;
	@NotEmpty(message = "Bạn chưa nhập mật khẩu")
	private String password;

	@ManyToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinTable(
            name = "ROLE_TAIKHOAN",
            joinColumns = { @JoinColumn(name = "USERNAME") },
            inverseJoinColumns = { @JoinColumn(name = "ROLE_id") }
        )
	private Set<RoleEntity> role = new HashSet<>();

	public Set<RoleEntity> getRole() {
		return role;
	}

	public void setRole(Set<RoleEntity> role) {
		this.role = role;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public KhachHangEntity getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHangEntity khachHang) {
		this.khachHang = khachHang;
	}
	  public void addRole(RoleEntity roles) {
		    role.add(roles);
		    roles.getTaiKhoan().add(this);
		  }	

}
