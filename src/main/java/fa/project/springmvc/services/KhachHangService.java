package fa.project.springmvc.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.project.springmvc.entities.KhachHangEntity;
import fa.project.springmvc.repository.KhachHangRepository;

@Service
public class KhachHangService {
	@Autowired

	KhachHangRepository khachHangRepository;

	@Transactional
	public void addCustomer(KhachHangEntity customer) {
		khachHangRepository.addCustomer(customer);
	}
	@Transactional
	public void deleteCustomer(int khachHangID) {
		khachHangRepository.deleteCustomer(khachHangID);
	}
	@Transactional
	public void updateCustomer(KhachHangEntity kh) {
		khachHangRepository.updateCustomer(kh);
	}
	@Transactional
	public List<KhachHangEntity> getAllKhachHang() {
		return khachHangRepository.getAllKhachHang();
	}
	@Transactional
	public KhachHangEntity getCustomer(int khachHangID) {
		return khachHangRepository.getCustomer(khachHangID);
	}

}
