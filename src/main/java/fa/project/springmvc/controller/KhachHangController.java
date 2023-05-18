package fa.project.springmvc.controller;

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

import fa.project.springmvc.entities.KhachHangEntity;
import fa.project.springmvc.services.KhachHangService;

@Controller
public class KhachHangController {
	@Autowired
	KhachHangService khachHangService;

	@GetMapping(value = { "/quanlykhachhang/ListKhachHang", "/quanlykhachhang" })
	public String getAllKhachHang(Model model,HttpSession session) {
		if(session.getAttribute("role")==null)
			return "redirect:/";
			else
				if(session.getAttribute("role").equals("ADMIN"))
				{	
			
					List<KhachHangEntity> khList = khachHangService.getAllKhachHang();
					model.addAttribute("KhachHangList", khList);
					return "quanlykhachhang";
			}
			return "redirect:/";
	
	}

	@GetMapping("/quanlykhachhang/update_KhachHang")
	public String updateKhachHang(@RequestParam("KhachHangId") int khachHangId, Model model,HttpSession session) {
		if(session.getAttribute("role")==null)
			return "redirect:/";
			else
				if(session.getAttribute("role").equals("ADMIN"))
				{	
			
					KhachHangEntity khachHang = khachHangService.getCustomer(khachHangId);
					model.addAttribute("KhachHang", khachHang);
					return "Add_Edit_Phim";
			}
			return "redirect:/";
	
	}

	@PostMapping("/quanlykhachhang/update_KhachHang")
	public String updateKhachHang(Model model, @Valid @ModelAttribute("khachHang") KhachHangEntity khachHang,
			BindingResult re,HttpSession session) {
		if(session.getAttribute("role")==null)
			return "redirect:/";
			else
				if(session.getAttribute("role").equals("ADMIN"))
				{	
			
					System.out.println(re.hasErrors());
					if (re.hasErrors())
						return "Add_Edit_Phim";
					khachHangService.updateCustomer(khachHang);
					return "redirect:/quanlykhachhang";
			}
			return "redirect:/";

	}

	@GetMapping("/quanlykhachhang/delete_KhachHang")
	public String deletePhim(@RequestParam("khachHangId") int khachHangId,HttpSession session) {
		if(session.getAttribute("role")==null)
			return "redirect:/";
			else
				if(session.getAttribute("role").equals("ADMIN"))
				{	
			
					khachHangService.deleteCustomer(khachHangId);
					return "redirect:/quanlykhachhang";
			}
			return "redirect:/";
		
	}
}
