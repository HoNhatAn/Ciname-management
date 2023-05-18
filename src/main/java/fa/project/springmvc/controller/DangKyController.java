package fa.project.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import fa.project.springmvc.DTO.KhachHangDTO;
import fa.project.springmvc.entities.KhachHangEntity;
import fa.project.springmvc.entities.RoleEntity;
import fa.project.springmvc.entities.TaiKhoanEntity;
import fa.project.springmvc.services.KhachHangService;
import fa.project.springmvc.services.TaiKhoanService;
import fa.project.springmvc.validator.DangKy;

@Controller
public class DangKyController {
	@Autowired
	DangKy dangky;
	@Autowired
	TaiKhoanService taiKhoanService;
	@Autowired
	KhachHangService khachHangService;
	@GetMapping("/register")
	public String register(Model model) {
		model.addAttribute("dangky",new KhachHangDTO());
		return "register2";
	}
	@PostMapping(value = { "/register" })
	public String Register(HttpServletRequest req, @Valid @ModelAttribute("dangky") KhachHangDTO registerDTO,BindingResult result,
			HttpSession session ) {
		dangky.validate(registerDTO, result);
		System.out.println(result.hasErrors());
		if (result.hasErrors())
			return "register2";
		KhachHangEntity cus = new KhachHangEntity();
		TaiKhoanEntity acc = new TaiKhoanEntity();
		RoleEntity role= new RoleEntity();
		role.setName("USER");
		cus.setSo_dien_thoai(registerDTO.getSo_dien_thoai());
		cus.setId(registerDTO.getId());
		cus.setDia_chi(registerDTO.getDia_chi());
		cus.setNgay_sinh(registerDTO.getNgay_sinh());
		cus.setEmail(registerDTO.getEmail());
		cus.setHo_va_ten(registerDTO.getHo_va_ten());
		cus.setGioi_tinh(req.getParameter("Gender"));
		khachHangService.addCustomer(cus);
		
		acc.addRole(role);
		acc.setUsername(registerDTO.getEmail());
		acc.setPassword(registerDTO.getPassword());
		acc.setKhachHang(cus);
		try {
		taiKhoanService.addAccount(acc);}
		catch(Exception e) {
			System.out.println(e);
		}
		System.out.println(cus.toString());
		System.out.println(acc.toString());
		session.setAttribute("dangkythanhcong","Success");
		return "redirect:/login";
	}
}
