package fa.project.springmvc.entities;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "dbo.PHONGS")
public class PhongEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String ten_phong;
	
	private boolean tinh_trang;
	
	private int hangdoc;
	
	private int hangngang;
	
	@OneToMany(mappedBy = "Phong" ,cascade = CascadeType.ALL)
	private Set<GheEntity> Ghe;

	public List<LichChieuEntity> getLichChieu() {
		return LichChieu;
	}

	public void setLichChieu(List<LichChieuEntity> lichChieu) {
		LichChieu = lichChieu;
	}

	@OneToMany(mappedBy = "Phong",cascade = CascadeType.ALL)
	private List<LichChieuEntity> LichChieu;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen_phong() {
		return ten_phong;
	}

	public void setTen_phong(String ten_phong) {
		this.ten_phong = ten_phong;
	}

	public boolean isTinh_trang() {
		return tinh_trang;
	}

	public void setTinh_trang(boolean tinh_trang) {
		this.tinh_trang = tinh_trang;
	}

	public int getHangdoc() {
		return hangdoc;
	}

	public void setHangdoc(int hangdoc) {
		this.hangdoc = hangdoc;
	}

	public int getHangngang() {
		return hangngang;
	}

	public void setHangngang(int hangngang) {
		this.hangngang = hangngang;
	}

	public Set<GheEntity> getGhe() {
		return Ghe;
	}

	public void setGhe(Set<GheEntity> ghe) {
		Ghe = ghe;
	}



		}
