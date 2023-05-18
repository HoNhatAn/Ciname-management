package fa.project.springmvc.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fa.project.springmvc.entities.PhongEntity;

@Repository
public class PhongRepository {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public PhongEntity getRoom(int roomID) {
		Session session = sessionFactory.openSession();
		return session.find(PhongEntity.class, roomID);
	}
	@Transactional
	public PhongEntity getRoom1(int roomID) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(PhongEntity.class, roomID);
	}
	@Transactional
	public List<PhongEntity> getAllRoom() {
		Session session = sessionFactory.openSession();
		List<PhongEntity> list = session.createQuery("Select p from PhongEntity p", PhongEntity.class)
				.getResultList();
		return list;
	}
		
	@Transactional
	public void addRoom(PhongEntity room) {
		Session session = sessionFactory.getCurrentSession();
		session.save(room);
	}
	@Transactional
	public void updateRoom(PhongEntity acc) {
		Session session = sessionFactory.getCurrentSession();
		session.update(acc);
	}
	@Transactional
	public void deleteRoom(int roomID) {
		Session session = sessionFactory.getCurrentSession();
		PhongEntity room = session.find(PhongEntity.class, roomID);
		session.delete(room);
	}
}
