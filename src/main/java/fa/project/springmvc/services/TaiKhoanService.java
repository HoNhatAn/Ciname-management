package fa.project.springmvc.services;

import javax.transaction.Transactional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.project.springmvc.entities.TaiKhoanEntity;
import fa.project.springmvc.repository.TaiKhoanRepository;

@Service
public class TaiKhoanService {
	@Autowired
	TaiKhoanRepository taiKhoanRepository;

	@Transactional
	public TaiKhoanEntity getAccount(String username) {
		return taiKhoanRepository.getAccount(username);
	}

	@Transactional
	public void addAccount(TaiKhoanEntity acc) {
		acc.setPassword(BCrypt.hashpw(acc.getPassword(), BCrypt.gensalt(12)));
		taiKhoanRepository.addAccount(acc);
	}

	@Transactional
	public Boolean checkAccount(TaiKhoanEntity acc,String username) {
		return taiKhoanRepository.checkAccount(acc,username);
	}
	@Transactional
	public boolean checkEmail(String email) {
		return taiKhoanRepository.checkEmail(email);
	}
	@Transactional 
	public void updateAccount(TaiKhoanEntity acc) {
		acc.setPassword(BCrypt.hashpw(acc.getPassword(), BCrypt.gensalt(12)));
		taiKhoanRepository.updateAccount(acc);
	}
	@Transactional 
	public int updateTaiKhoan(String pass,String username) {
		return taiKhoanRepository.updateTaiKhoan(pass, username);
	}
}
