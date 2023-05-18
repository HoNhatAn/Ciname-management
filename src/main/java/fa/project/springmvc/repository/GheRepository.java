package fa.project.springmvc.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fa.project.springmvc.entities.GheEntity;
import fa.project.springmvc.entities.PhongEntity;

@Repository
public class GheRepository {
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public GheEntity getGhe(int gheID) {
		Session session = sessionFactory.openSession();
		return session.find(GheEntity.class, gheID);
	}

	@Transactional
	public List<GheEntity> getAllGhe() {
		Session session = sessionFactory.openSession();
		List<GheEntity> list = session.createQuery("Select p from GheEntity p", GheEntity.class).getResultList();
		return list;
	}

	@Transactional
	public void addGhe(GheEntity Ghe) {
		Session session = sessionFactory.getCurrentSession();
		session.save(Ghe);
	}

	@Transactional
	public void updateGhe(GheEntity acc) {
		Session session = sessionFactory.getCurrentSession();
		session.update(acc);
	}

	@Transactional
	public void deleteGhe(int gheID) {
		Session session = sessionFactory.getCurrentSession();
		GheEntity Ghe = session.find(GheEntity.class, gheID);
		session.delete(Ghe);
	}

	@Transactional
	public List<GheEntity> getGhe_phong(PhongEntity phong_id) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM GheEntity u WHERE u.Phong = :phong_id";
		List<GheEntity> ghes = session.createQuery(hql, GheEntity.class).setParameter("phong_id",phong_id).getResultList();
		return ghes;
	}

}
