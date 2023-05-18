package fa.project.springmvc.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import fa.project.springmvc.DTO.DoiMatKhau;
import fa.project.springmvc.entities.GheBanEntity;
import fa.project.springmvc.entities.KhachHangEntity;
import fa.project.springmvc.entities.LichChieuEntity;
import fa.project.springmvc.entities.PhimEntity;
import fa.project.springmvc.entities.PhongEntity;
import fa.project.springmvc.entities.RoleEntity;
import fa.project.springmvc.entities.TaiKhoanEntity;
import fa.project.springmvc.services.GheBanService;
import fa.project.springmvc.services.GheService;
import fa.project.springmvc.services.KhachHangService;
import fa.project.springmvc.services.LichChieuService;
import fa.project.springmvc.services.PhimService;
import fa.project.springmvc.services.PhongService;
import fa.project.springmvc.services.TaiKhoanService;
import fa.project.springmvc.validator.DoiMatKhauvalidate;

@Controller
public class TrangChuController {
	@Autowired
	TaiKhoanService taiKhoanService;
	@Autowired
	PhimService phimService;
	@Autowired
	KhachHangService khachHangService;
	@Autowired
	PhongService phongService;
	@Autowired 
	LichChieuService lichChieuService;
	@Autowired
	GheService gheService;
	@Autowired
	GheBanService gheBanService;
	@Autowired
	DoiMatKhauvalidate doimk;
	@GetMapping("/")
	public String trangChu(Model model,HttpSession session,HttpServletRequest rq) {
		List<PhimEntity> prdList = phimService.getAllPhim();
		model.addAttribute("PhimList", prdList);
		return "index-2";
	}
	@GetMapping("/timkiem")
	public String timkiem(Model model,HttpSession session,HttpServletRequest rq) {
		return "timkiem";
	}
	@PostMapping("/timkiem")
	public String trangChu1(Model model,HttpSession session,HttpServletRequest rq) {
		List<PhimEntity> phims=phimService.getAllPhitheoTen(rq.getParameter("timkiem"));
		session.setAttribute("Phimtimkiem", phims);
		return "redirect:/timkiem";
	}
	@GetMapping("/chitiet/{phim_id}")
	public String chitietPhim(@PathVariable("phim_id") int id,Model model,HttpSession session) {
		
		PhimEntity phimm= phimService.getphim(id);
		model.addAttribute("lichchieu",phimm.getLichChieu());
		session.setAttribute("phim",phimm);
		return "movie-details";
	}
	@GetMapping("/cap-nhat-thong-tin")
	public String capnhatthongtin(Model model,HttpSession session) {
		if(session.getAttribute("username")!=null)
		{
			System.out.println(session.getAttribute("username"));
			String email=String.valueOf(session.getAttribute("username"));
			model.addAttribute("khachhang",taiKhoanService.getAccount(email).getKhachHang());
			return "capnhatthongtin";
		}
		return "redirect:/";
	
	}
	@PostMapping("/cap-nhat-thong-tin")
	public String capnhatthongtin(HttpServletRequest req,HttpSession session,Model model, @Valid @ModelAttribute("khachhang") KhachHangEntity khachHang,
			BindingResult re) {
		System.out.println(re.hasErrors());
		if (re.hasErrors())
			return "capnhatthongtin";
		khachHang.setGioi_tinh(req.getParameter("Gender"));
		khachHangService.updateCustomer(khachHang);
		session.setAttribute("capnhatthongtin", "Success");
		return "redirect:/";
	}
	@GetMapping("/datcho/{lichchieu_id}")
	public String datcho(@PathVariable("lichchieu_id") int id,Model model,HttpSession session,HttpServletRequest rq) {
			LichChieuEntity lich= lichChieuService.getLichChieu(id);
			List<String> ghedaban=gheBanService.banghe(lich);
			model.addAttribute("ghedaban", ghedaban);
			model.addAttribute("chittietlichchieu",lich);
			PhongEntity phong=lich.getPhong();
			model.addAttribute("phong",phong);
			session.setAttribute("ghe",gheService.getghe_phong(phong));
			return "datcho";
		

	}
	@PostMapping("/datcho/{lichchieu_id}")
	public String datcho1(@PathVariable("lichchieu_id") int id,HttpServletRequest rq ,Model model,HttpSession session) {
		
		String[] ghedat= rq.getParameterValues("tenghe");
		session.setAttribute("linkdatphim","/datcho/"+id);
		LichChieuEntity lich=  lichChieuService.getLichChieu(id);
		if(ghedat!=null && session.getAttribute("username")!=null) {
		
		GheBanEntity gheban=new GheBanEntity();
		gheban.setLichChieu(lich);
		gheban.setKhachHang((KhachHangEntity)session.getAttribute("khachhang"));
		gheban.setNgay_dat(LocalDate.now());
		for(String str:ghedat)
		{
			gheban.setTen_ghe(str);
			gheBanService.addGheBan(gheban);
		}
		session.setAttribute("ghechuadat", null);
		session.setAttribute("lich_id", null);
		session.setAttribute("datcho","Success");
		return "redirect:/";
		}
		List<String> list=new ArrayList<String>();
		for(String str:ghedat)
			list.add(str);
		session.setAttribute("ghechuadat", list);
		session.setAttribute("lich_id", lich.getId());
		return "redirect:/login";
	}
	@GetMapping("/lichsudatcho")
	public String DanhSachChoNgoiDaDat(HttpSession session,Model model) {
		if(session.getAttribute("username")!=null)
		{KhachHangEntity kh=(KhachHangEntity)session.getAttribute("khachhang");
		List<GheBanEntity> ghebans=gheBanService.getAllGheBan1(kh);
		model.addAttribute("lichsu",ghebans);
		return "Lichsugiaodich";}
		return "redirect:/";
	}
	@GetMapping("/doimatkhau")
	public String doimatkhau(Model model,HttpSession session) {
		if(session.getAttribute("username")!=null)
		{
			model.addAttribute("doimatkhau",new DoiMatKhau());
		}
		return "doimatkhau";
	}
	
	
	@PostMapping("/doimatkhau")
	public String doimatkhau (@Valid @ModelAttribute("doimatkhau") DoiMatKhau doiMatKhau,BindingResult re,HttpSession session,Model model) {
		doimk.validate(doiMatKhau, re);
		if(re.hasErrors())
			return "doimatkhau";	
		taiKhoanService.updateTaiKhoan(BCrypt.hashpw(doiMatKhau.getMatKhauMoi(), BCrypt.gensalt(12)), String.valueOf(session.getAttribute("username")));
		session.setAttribute("doimk","Success");
		return "redirect:/";
	}
}
