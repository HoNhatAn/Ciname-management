package fa.project.springmvc.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.project.springmvc.entities.PhongEntity;
import fa.project.springmvc.repository.PhongRepository;
@Service
public class PhongService {
	@Autowired
	PhongRepository phongRepository;
	@Transactional
	public List<PhongEntity> getAllPhong(){
		return phongRepository.getAllRoom();
	}
	@Transactional
	public void addPhong(PhongEntity Phong) {
		phongRepository.addRoom(Phong);
	}
	@Transactional
	public PhongEntity getPhong(int prdId) {
		return phongRepository.getRoom(prdId);
	}
	@Transactional
	public PhongEntity getPhong1(int prdId) {
		return phongRepository.getRoom1(prdId);
	}
	@Transactional
	public void updatePhong(PhongEntity Phong) {
		phongRepository.updateRoom(Phong);
	}
	@Transactional
	public void deletePhong(int PhongId ) {
		phongRepository.deleteRoom(PhongId);
	}
}
