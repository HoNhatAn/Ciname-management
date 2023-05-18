package fa.project.springmvc.repository;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import fa.project.springmvc.entities.KhachHangEntity;

@Repository
public class KhachHangRepository {

	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public List<KhachHangEntity> getAllKhachHang() {
		Session session = sessionFactory.openSession();
		List<KhachHangEntity> list = session.createQuery("Select p from KhachHangEntity p", KhachHangEntity.class)
				.getResultList();
		return list;
	}

	public KhachHangEntity getKhachHang(int khachHangID) {
		Session session = sessionFactory.openSession();
		return session.find(KhachHangEntity.class, khachHangID);
	}

	@Transactional
	public void addCustomer(KhachHangEntity customer) {
		Session session = sessionFactory.openSession();
		session.save(customer);
	}

	@Transactional
	public void deleteCustomer(int khachHangID) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(session.find(KhachHangEntity.class, khachHangID));
	}

	@Transactional
	public KhachHangEntity getCustomer(int khachHangID) {
		Session session = sessionFactory.openSession();
		return session.find(KhachHangEntity.class, khachHangID);
	}

	@Transactional
	public void updateCustomer(KhachHangEntity khachHang) {
		sessionFactory.getCurrentSession().update(khachHang);
		
	}


}
