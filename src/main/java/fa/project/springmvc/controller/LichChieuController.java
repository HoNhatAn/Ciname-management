package fa.project.springmvc.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.project.springmvc.DTO.LichChieuDTO;
import fa.project.springmvc.entities.LichChieuEntity;
import fa.project.springmvc.entities.PhimEntity;
import fa.project.springmvc.entities.PhongEntity;
import fa.project.springmvc.services.LichChieuService;
import fa.project.springmvc.services.PhimService;
import fa.project.springmvc.services.PhongService;

@Controller
public class LichChieuController {
	@Autowired
	PhimService phimservice;
	@Autowired
	PhongService phongservice;
	@Autowired
	LichChieuService lichChieuService;

	public String editString(String str) {
		str = str.replace('T', ' ');
		str = str.concat(":00.000");
		System.out.println(str);
		return str;
	}

	public LichChieuDTO convert(LichChieuEntity a) {
		LichChieuDTO g = new LichChieuDTO();
		g.setId(a.getId());
		g.setPhim_id(a.getPhim().getId());
		g.setPhong_id(a.getPhong().getId());
		g.setThoi_luong_quang_cao(a.getThoi_luong_quang_cao());
		;
		g.setThoi_luong_chieu_chinh(a.getThoi_luong_chieu_chinh());
		g.setThoi_gian_bat_dau(String.valueOf(a.getThoi_gian_bat_dau()));
		g.setThoi_gian_ket_thuc(String.valueOf(a.getThoi_gian_ket_thuc()));
		return g;

	}

	@GetMapping(value = { "/quanlylichchieu" })
	public String getAllLichChieu(Model model, HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else if (session.getAttribute("role").equals("ADMIN")) {

			List<PhongEntity> phongList1 = phongservice.getAllPhong();
			session.setAttribute("PhongList", phongList1);
			List<PhimEntity> phimist1 = phimservice.getAllPhim();
			session.setAttribute("PhimList", phimist1);
			List<LichChieuEntity> prdList = lichChieuService.getAllLichChieu();
			List<LichChieuDTO> LichChieuList = new ArrayList<LichChieuDTO>();
			for (LichChieuEntity a : prdList) {
				LichChieuList.add(convert(a));
			}
			model.addAttribute("LichChieuList", LichChieuList);
			return "quanlylichchieu";
		}
		return "redirect:/";

	}

	@GetMapping("/quanlylichchieu/add_LichChieu")
	public String addLichChieu(Model model,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else if (session.getAttribute("role").equals("ADMIN")) {

			model.addAttribute("LichChieu", new LichChieuDTO());
			return "Add_Edit_LichChieu";
		}
		return "redirect:/";

	}

	@PostMapping("/quanlylichchieu/add_LichChieu")
	public String addLichChieu(Model model, @Valid @ModelAttribute("LichChieu") LichChieuDTO lichChieu,
			BindingResult re,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else if (session.getAttribute("role").equals("ADMIN")) {

			if (re.hasErrors())
				return "Add_Edit_LichChieu";
			LichChieuEntity LichChieu = new LichChieuEntity();
			LichChieu.setId(lichChieu.getId());
			LichChieu.setPhim(phimservice.getphim(lichChieu.getPhim_id()));
			LichChieu.setPhong(phongservice.getPhong1(lichChieu.getPhong_id()));
			LichChieu.setThoi_luong_quang_cao(lichChieu.getThoi_luong_quang_cao());
			LichChieu.setThoi_luong_chieu_chinh(lichChieu.getThoi_luong_chieu_chinh());
			LichChieu.setThoi_gian_bat_dau(Timestamp.valueOf(editString(lichChieu.getThoi_gian_bat_dau())));
			LichChieu.setThoi_gian_ket_thuc(Timestamp.valueOf(editString(lichChieu.getThoi_gian_ket_thuc())));
			if (lichChieu.getId() != 0)
				lichChieuService.updateLichChieu(LichChieu);
			else
				lichChieuService.addLichChieu(LichChieu);
			return "redirect:/quanlylichchieu";
		}
		return "redirect:/";

	}

	@GetMapping("/quanlylichchieu/update_LichChieu")
	public String updateLichChieu(@RequestParam("LichChieuId") int LichChieuId, Model model,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else if (session.getAttribute("role").equals("ADMIN")) {

			LichChieuEntity LichChieu = lichChieuService.getLichChieu(LichChieuId);
			model.addAttribute("LichChieu", convert(LichChieu));
			return "Add_Edit_LichChieu";
		}
		return "redirect:/";

	}

	@GetMapping("/quanlylichchieu/delete_LichChieu")
	public String deleteLichChieu(@RequestParam("LichChieuId") int LichChieuId,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else 
			if (session.getAttribute("role").equals("ADMIN")) {

			lichChieuService.deleteLichChieu(LichChieuId);
			return "redirect:/quanlylichchieu";
		}
		return "redirect:/";

	}
}
