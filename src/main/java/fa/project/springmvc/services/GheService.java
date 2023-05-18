package fa.project.springmvc.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.project.springmvc.entities.GheEntity;
import fa.project.springmvc.entities.PhongEntity;
import fa.project.springmvc.repository.GheRepository;

@Service
public class GheService {
	@Autowired
	GheRepository gheRepository;
	@Transactional
	public List<GheEntity> getAllGhe(){
		return gheRepository.getAllGhe();
	}
	@Transactional
	public void addGhe(GheEntity Ghe) {
		gheRepository.addGhe(Ghe);
	}
	
	@Transactional
	public GheEntity getGhe(int GheId) {
		return gheRepository.getGhe(GheId);
	}
	
	@Transactional
	public void updateGhe(GheEntity Ghe) {
		gheRepository.updateGhe(Ghe);
	}
	@Transactional
	public void deleteGhe(int GheId ) {
		gheRepository.deleteGhe(GheId);
	}
	@Transactional
	public List<GheEntity> getghe_phong(PhongEntity phong_id){
		return gheRepository.getGhe_phong(phong_id);
	}

}
