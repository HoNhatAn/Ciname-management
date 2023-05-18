package fa.project.springmvc.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.project.springmvc.entities.PhimEntity;
import fa.project.springmvc.repository.PhimRepository;

@Service
public class PhimService {
	@Autowired
	PhimRepository phimRepository;
	@Transactional
	public List<PhimEntity> getAllPhim(){
		return phimRepository.getAllPhim();
	}
	@Transactional
	public List<PhimEntity> getAllPhitheoTen(String tenphim){
		return phimRepository.getAllPhimtheoTen(tenphim);
	}
	@Transactional
	public void addphim(PhimEntity phim) {
		phimRepository.addphim(phim);
	}
	
	@Transactional
	public PhimEntity getphim(int prdId) {
		return phimRepository.getphim(prdId);
	}
	
	@Transactional
	public void updatephim(PhimEntity phim) {
		phimRepository.updatephim(phim);
	}
	@Transactional
	public void deletephim(int phimId ) {
		phimRepository.deletephim(phimId);
	}
}
