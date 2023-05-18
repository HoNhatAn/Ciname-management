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

import fa.project.springmvc.entities.GheEntity;
import fa.project.springmvc.entities.PhongEntity;
import fa.project.springmvc.services.GheService;
import fa.project.springmvc.services.PhongService;

@Controller
public class PhongController {
	@Autowired
	PhongService phongService;
	@Autowired
	GheService gheService;
	@GetMapping(value={"/quanlyphong"})
	public String getAllPhong(Model model,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else if (session.getAttribute("role").equals("ADMIN")) {
			List<PhongEntity> prdList = phongService.getAllPhong();
			model.addAttribute("PhongList", prdList);
			return "quanlyphong";
			
		}
		return "redirect:/";

		}
	@GetMapping("/quanlyphong/add_Phong")
	public String addPhong(Model model,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else if (session.getAttribute("role").equals("ADMIN")) {
			model.addAttribute("Phong", new PhongEntity());
			return "Add_Edit_Phong";
		}
		return "redirect:/";
	
	}
	@PostMapping("/quanlyphong/add_Phong")
	public String addPhong(Model model,@Valid @ModelAttribute("Phong") PhongEntity Phong,BindingResult re,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else if (session.getAttribute("role").equals("ADMIN")) {
			System.out.println(re.hasErrors());
			if(re.hasErrors())
				return "Add_Edit_Phong";
			if(Phong.getId()!=0) {
						
				phongService.updatePhong(Phong);}
			else
			{
				phongService.addPhong(Phong);
				for(int i=0;i<Phong.getHangdoc();i++)
					for(int j=0;j<Phong.getHangngang();j++)
					{
						GheEntity ghe=new GheEntity();
						ghe.setPhong(Phong);
						if(j<=9)
						ghe.setTen_ghe((char)(i+65)+"0"+String.valueOf(j));
						else
							ghe.setTen_ghe((char)(i+65)+String.valueOf(j));
						ghe.setTinh_trang("Còn Trống");
						gheService.addGhe(ghe);
					}
				}
			return "redirect:/quanlyphong";
			
		}
		return "redirect:/";
	
	}

	@GetMapping("/quanlyphong/update_Phong")
	public String updatePhong(@RequestParam("PhongId") int phongId,Model model,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else if (session.getAttribute("role").equals("ADMIN")) {

			PhongEntity phong = phongService.getPhong(phongId);
			model.addAttribute("Phong", phong);
			return "Add_Edit_Phong";
		}
		return "redirect:/";
	
	}

	@GetMapping("/quanlyphong/delete_Phong")
	public String deletePhong(@RequestParam("PhongId") int phongId,HttpSession session) {
		if (session.getAttribute("role") == null)
			return "redirect:/";
		else if (session.getAttribute("role").equals("ADMIN")) {

			phongService.deletePhong(phongId);
			return "redirect:/quanlyphong";
		}
		return "redirect:/";
		
	}
}
