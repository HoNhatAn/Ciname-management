package fa.project.springmvc.repository;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fa.project.springmvc.entities.TaiKhoanEntity;

@Repository
public class TaiKhoanRepository {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public TaiKhoanEntity getAccount(String username) {
		Session session = sessionFactory.openSession();
		return session.find(TaiKhoanEntity.class, username);
	}

	@Transactional
	public boolean checkAccount(TaiKhoanEntity acc, String username) {
		TaiKhoanEntity taiKhoan = getAccount(username);
		if (taiKhoan != null && BCrypt.checkpw(acc.getPassword(), taiKhoan.getPassword()))
			return true;
		return false;
	}

	@Transactional
	public void addAccount(TaiKhoanEntity acc) {
		Session session = sessionFactory.getCurrentSession();
		session.save(acc);
	}
	@Transactional
	public void updateAccount(TaiKhoanEntity acc) {
		Session session = sessionFactory.getCurrentSession();
		session.update(acc);
	}
	@Transactional
	public void deleteAccount(String username) {
		Session session = sessionFactory.getCurrentSession();
		TaiKhoanEntity tk = session.find(TaiKhoanEntity.class, username);
		session.delete(tk);
	}
	@Transactional
	public boolean checkEmail(String email) {
		if(getAccount(email)!=null)
			return true;
		return false;
		
	}
	@Transactional
	public int updateTaiKhoan(String newPassword,String username) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("UPDATE TaiKhoanEntity SET password = :newPassword WHERE username = :username");
		query.setParameter("newPassword", newPassword);
		query.setParameter("username", username);
		int result = query.executeUpdate();
		return result;
	}

}
