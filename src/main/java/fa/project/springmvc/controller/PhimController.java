package fa.project.springmvc.controller;

import java.sql.Date;
import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;

import fa.project.springmvc.entities.PhimEntity;
import fa.project.springmvc.services.PhimService;

@Controller
public class PhimController {
	@Autowired
	PhimService phimService;

	/*
	 * @PostMapping("/quanlyphim") public String submitForm(HttpServletRequest
	 * request) { String[] selectedValues =
	 * request.getParameterValues("myCheckbox"); if (selectedValues != null &&
	 * selectedValues.length > 0) { for (String value : selectedValues) {
	 * System.out.println(value); } } else { // Không có giá trị checkbox được chọn
	 * System.out.println("Không có gì"); } // Trả về trang kết quả hoặc trang khác
	 * tùy ý
	 * 
	 * return "redirect:/quanlyphim"; }
	 */
	@GetMapping(value={"/quanlyphim"})
	public String getAllPhim(Model model,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else 
		if (session.getAttribute("role").equals("ADMIN")) {
			List<PhimEntity> prdList = phimService.getAllPhim();
			model.addAttribute("PhimList", prdList);
			System.out.println(session.getAttribute("username"));
			return "quanlyphim";
		
		}
		return "redirect:/";

	}	
	@GetMapping("/quanlyphim/add_Phim")
	public String addPhim(Model model,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else 
		if (session.getAttribute("role").equals("ADMIN")) {
			
			model.addAttribute("Phim", new PhimEntity());
			return "Add_Edit_Phim";
		}
		return "redirect:/";

	}
	@PostMapping("/quanlyphim/add_Phim")
	public String addPhim(Model model,@Valid @ModelAttribute("Phim") PhimEntity Phim,BindingResult re,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else 
		if (session.getAttribute("role").equals("ADMIN")) {
			System.out.println(re.hasErrors());
			if(re.hasErrors())
				return "Add_Edit_Phim";
			if(Phim.getId()!=0)
				phimService.updatephim(Phim);
			else
				phimService.addphim(Phim);
			return "redirect:/quanlyphim";
		
		}
		return "redirect:/";

	}

	@GetMapping("/quanlyphim/update_Phim")
	public String updatePhim(@RequestParam("PhimId") int phimId,Model model,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else 
		if (session.getAttribute("role").equals("ADMIN")) {
			
			PhimEntity phim = phimService.getphim(phimId);
			model.addAttribute("Phim", phim);
			return "Add_Edit_Phim";
		}
		return "redirect:/";

	}

	@GetMapping("/quanlyphim/delete_Phim")
	public String deletePhim(@RequestParam("PhimId") int phimId,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else 
		if (session.getAttribute("role").equals("ADMIN")) {
			
			phimService.deletephim(phimId);
			return "redirect:/quanlyphim";
		}
		return "redirect:/";
		
	}
}
