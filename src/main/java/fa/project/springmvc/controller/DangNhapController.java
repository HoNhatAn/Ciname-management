package fa.project.springmvc.controller;

import java.util.Iterator;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import fa.project.springmvc.entities.RoleEntity;
import fa.project.springmvc.entities.TaiKhoanEntity;
import fa.project.springmvc.services.TaiKhoanService;

@Controller
public class DangNhapController {
	@Autowired
	TaiKhoanService taiKhoanServices;
	
	@GetMapping("/login")
	public String dangnhap(Model model) {
		model.addAttribute("taikhoan", new TaiKhoanEntity());
		return "login";
	}
	@PostMapping(value = { "/login" })
	public String dangnhap( @Valid @ModelAttribute("taikhoan") TaiKhoanEntity taiKhoanEntity,  BindingResult result,
			HttpSession session, Model model) {
//		 loginFormValidator.validate(accountEntity, result);
		System.out.println(result.hasErrors());
		
		if (result.hasErrors()) {
			return "login";
		}
		TaiKhoanEntity taiKhoan =taiKhoanServices.getAccount(taiKhoanEntity.getUsername());
		if (taiKhoan != null && BCrypt.checkpw(taiKhoanEntity.getPassword(), taiKhoan.getPassword())) {
			System.out.println(getRole(taiKhoan));
			session.setAttribute("khachhang",taiKhoan.getKhachHang());
			session.setAttribute("role", getRole(taiKhoan)); 
			session.setAttribute("username", taiKhoanEntity.getUsername());
			session.setAttribute("tb","1");
			String link=(String) session.getAttribute("linkdatphim");
			if(link==null)
				return "redirect:/";
			return "redirect:"+link;
		}
		model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng!");
		return "login";
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		System.out.println(session.getAttribute("username"));
		session.invalidate();
		return "redirect:/login";
	}
	public String getRole(TaiKhoanEntity taiKhoanEntity) {
		Iterator<RoleEntity> a=taiKhoanEntity.getRole().iterator();
		while(a.hasNext()) {
		if(a.next().getName().equalsIgnoreCase("ADMIN"))
			return "ADMIN";	
	}
		return "USER";
}
}
