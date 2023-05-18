package fa.project.springmvc.repository;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fa.project.springmvc.entities.GheBanEntity;
import fa.project.springmvc.entities.GheEntity;
import fa.project.springmvc.entities.KhachHangEntity;
import fa.project.springmvc.entities.LichChieuEntity;

@Repository
public class GheBanRepository {
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public GheBanEntity getGheBan(int GheBanID) {
		Session session = sessionFactory.openSession();
		return session.find(GheBanEntity.class, GheBanID);
	}

	@Transactional
	public List<GheBanEntity> getAllGheBan() {
		Session session = sessionFactory.openSession();
		List<GheBanEntity> list = session.createQuery("Select p from GheBanEntity p", GheBanEntity.class).getResultList();
		return list;
	}

	@Transactional
	public void addGheBan(GheBanEntity GheBan) {
		Session session = sessionFactory.getCurrentSession();
		session.save(GheBan);
	}

	@Transactional
	public void updateGheBan(GheBanEntity GheBan) {
		Session session = sessionFactory.getCurrentSession();
		session.update(GheBan);
	}

	@Transactional
	public void deleteGheBan(int GheBanID) {
		Session session = sessionFactory.getCurrentSession();
		GheBanEntity Ghe = session.find(GheBanEntity.class, GheBanID);
		session.delete(Ghe);
	}
	@Transactional
	public List<String> getTenGheDaBan(LichChieuEntity LichChieu) {
		Session session = sessionFactory.openSession();
		String hql = "Select u.ten_ghe FROM GheBanEntity u WHERE u.LichChieu = :lich_chieu";
		List<String> ghes = session.createQuery(hql, String.class).setParameter("lich_chieu",LichChieu).getResultList();
		return ghes;
	}
	public List<GheBanEntity> getAllGheBan1(KhachHangEntity kh) {
		Session session = sessionFactory.openSession();
		String hql = "FROM GheBanEntity u WHERE u.KhachHang = :khachhang";
		List<GheBanEntity> ghes = session.createQuery(hql, GheBanEntity.class).setParameter("khachhang",kh).getResultList();
		   Collections.sort(ghes, new Comparator<GheBanEntity>() {
	            @Override
	            public int compare(GheBanEntity o1, GheBanEntity o2) {
	            	  if (o1.getNgay_dat() == null || o2.getNgay_dat() == null)
	            	        return 0;
	                return o2.getNgay_dat().compareTo(o1.getNgay_dat());
	            }
	        });
		return ghes;
	}

}
