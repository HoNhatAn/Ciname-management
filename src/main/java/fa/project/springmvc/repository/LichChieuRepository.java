package fa.project.springmvc.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fa.project.springmvc.entities.LichChieuEntity;

@Repository
public class LichChieuRepository {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public LichChieuEntity getLichChieu(int lichChieuID) {
		Session session = sessionFactory.openSession();
		return session.find(LichChieuEntity.class, lichChieuID);
	}
	@Transactional
	public List<LichChieuEntity> getAllLichChieu() {
		Session session = sessionFactory.openSession();
		List<LichChieuEntity> list = session.createQuery("Select p from LichChieuEntity p", LichChieuEntity.class)
				.getResultList();
		return list;
	}
		
	@Transactional
	public void addLichChieu(LichChieuEntity LichChieu) {
		Session session = sessionFactory.getCurrentSession();
		session.save(LichChieu);
	}
	@Transactional
	public void updateLichChieu(LichChieuEntity acc) {
		Session session = sessionFactory.getCurrentSession();
		session.update(acc);
	}
	@Transactional
	public void deleteLichChieu(int lichChieuID) {
		Session session = sessionFactory.getCurrentSession();
		LichChieuEntity LichChieu = session.find(LichChieuEntity.class, lichChieuID);
		session.delete(LichChieu);
	}
}
