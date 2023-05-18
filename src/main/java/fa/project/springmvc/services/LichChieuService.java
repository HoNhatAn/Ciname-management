package fa.project.springmvc.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.project.springmvc.entities.LichChieuEntity;
import fa.project.springmvc.repository.LichChieuRepository;

@Service
public class LichChieuService {
	@Autowired
	LichChieuRepository lichChieuRepository;
	@Transactional
	public List<LichChieuEntity> getAllLichChieu(){
		return lichChieuRepository.getAllLichChieu();
	}
	@Transactional
	public void addLichChieu(LichChieuEntity LichChieu) {
		lichChieuRepository.addLichChieu(LichChieu);
	}
	
	@Transactional
	public LichChieuEntity getLichChieu(int LichChieuId) {
		return lichChieuRepository.getLichChieu(LichChieuId);
	}
	
	@Transactional
	public void updateLichChieu(LichChieuEntity LichChieu) {
		lichChieuRepository.updateLichChieu(LichChieu);
	}
	@Transactional
	public void deleteLichChieu(int LichChieuId ) {
		lichChieuRepository.deleteLichChieu(LichChieuId);
	}

}
