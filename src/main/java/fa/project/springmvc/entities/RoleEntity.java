package fa.project.springmvc.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "ROLE")
public class RoleEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
    public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<TaiKhoanEntity> getTaiKhoan() {
		return taiKhoan;
	}
	
	public void setTaiKhoan(Set<TaiKhoanEntity> taiKhoan) {
		this.taiKhoan = taiKhoan;
	}
	@ManyToMany(mappedBy = "role",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	
    private Set<TaiKhoanEntity> taiKhoan = new HashSet<>();
	
}
