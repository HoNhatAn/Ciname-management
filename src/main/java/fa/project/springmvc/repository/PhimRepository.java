package fa.project.springmvc.repository;

import java.sql.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fa.project.springmvc.entities.PhimEntity;

@Repository
public class PhimRepository {
	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public List<PhimEntity> getAllPhim(){
		Session session = sessionFactory.openSession();
		List<PhimEntity> list = session.createQuery("Select p from PhimEntity p", PhimEntity.class)
				.getResultList();
		return list;
	}
	@Transactional
	public List<PhimEntity> getAllPhimtheoTen(String tenphim){
		Session session = sessionFactory.openSession();
		String hql = "FROM PhimEntity u WHERE u.ten_phim like:tenphim ";
		List<PhimEntity> phims = session.createQuery(hql, PhimEntity.class).setParameter("tenphim","%"+tenphim+"%").getResultList();
		return phims;
	}
	@Transactional
	public void addphim(PhimEntity phim) {
		Session session = sessionFactory.openSession();
		session.save(phim);
	}
	
	@Transactional
	public PhimEntity getphim(int prdId) {
		Session session = sessionFactory.openSession();
		PhimEntity phim = session.find(PhimEntity.class, prdId);
		return phim;
	}
	
	@Transactional
	public void updatephim(PhimEntity phim) {
		Session session = sessionFactory.getCurrentSession();
		session.update(phim);
	}
	@Transactional
	public void deletephim(int phimId ) {
		Session session = sessionFactory.getCurrentSession();
		PhimEntity phim  =session.find(PhimEntity.class, phimId);
		session.delete(phim);
	}
}
