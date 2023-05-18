package fa.project.springmvc.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.project.springmvc.entities.GheBanEntity;
import fa.project.springmvc.entities.KhachHangEntity;
import fa.project.springmvc.entities.LichChieuEntity;
import fa.project.springmvc.repository.GheBanRepository;

@Service
public class GheBanService {
	@Autowired
	GheBanRepository gheBanRepository;
	@Transactional
	public List<GheBanEntity> getAllGheBan(){
		return gheBanRepository.getAllGheBan();
	}
	@Transactional
	public void addGheBan(GheBanEntity gheBan) {
		gheBanRepository.addGheBan(gheBan);;
	}
	@Transactional
	public GheBanEntity getGheBan(int prdId) {
		return gheBanRepository.getGheBan(prdId);
	}
	@Transactional
	public void updatePhong(GheBanEntity gheBan) {
		gheBanRepository.updateGheBan(gheBan);
	}
	@Transactional
	public void deletePhong(int PhongId ) {
		gheBanRepository.deleteGheBan(PhongId);
	}
	@Transactional
	public List<String> banghe(LichChieuEntity lich){
		return gheBanRepository.getTenGheDaBan(lich);
	}
	public List<GheBanEntity> getAllGheBan1(KhachHangEntity kh) {
		return gheBanRepository.getAllGheBan1(kh);
	}
}
