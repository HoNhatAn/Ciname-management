package fa.project.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.project.springmvc.DTO.GheDTO;
import fa.project.springmvc.entities.GheEntity;
import fa.project.springmvc.entities.PhongEntity;
import fa.project.springmvc.services.GheService;
import fa.project.springmvc.services.PhongService;

@Controller
public class GheController {
	@Autowired
	GheService gheService;
	@Autowired
	PhongService phongservice;
	public GheDTO convert(GheEntity a) {
		GheDTO g=new GheDTO();
		g.setId(a.getId());
		g.setPhong_id(a.getPhong().getId());
		g.setTen_ghe(a.getTen_ghe());
		g.setTinh_trang(a.getTinh_trang());
		return g;
	}
	@GetMapping(value={"/quanlyghe"})
	public String getAllGhe(Model model,HttpSession session) {
		if(session.getAttribute("role")==null)
		return "redirect:/";
		else
			if(session.getAttribute("role").equals("ADMIN"))
			{	
				List<PhongEntity> prdList1 = phongservice.getAllPhong();
				session.setAttribute("PhongList", prdList1);
					List<GheEntity> prdList = gheService.getAllGhe();
					List<GheDTO> gheList=new ArrayList<GheDTO>();
					for(GheEntity a:prdList){
						gheList.add(convert(a));
					}
						
					model.addAttribute("GheList", gheList);
					return "quanlyghe";

		}
		return "redirect:/";
		
		
		}
	@GetMapping("/quanlyghe/add_Ghe")
	public String addGhe(Model model,HttpSession session) {
		
		if(session.getAttribute("role")==null)
		return "redirect:/";
		else
			if(session.getAttribute("role").equals("ADMIN"))
			{	

				model.addAttribute("Ghe", new GheDTO());
				return "Add_Edit_Ghe";
		}
		return "redirect:/";

	}
	@PostMapping("/quanlyghe/add_Ghe")
	public String addGhe(Model model,@Valid @ModelAttribute("Ghe") GheDTO Ghe,BindingResult re,HttpSession session) {
		if(session.getAttribute("role")==null)
		return "redirect:/";
		else
			if(session.getAttribute("role").equals("ADMIN"))
			{	

				if(re.hasErrors())
					return "Add_Edit_Ghe";
				GheEntity ghe=new GheEntity();
				ghe.setId(Ghe.getId());
				ghe.setTen_ghe(Ghe.getTen_ghe());
				ghe.setPhong(phongservice.getPhong1(Ghe.getPhong_id()));
				ghe.setTinh_trang(Ghe.getTinh_trang());
				if(Ghe.getId()!=0)
					gheService.updateGhe(ghe);
				else
					gheService.addGhe(ghe);
				return "redirect:/quanlyghe";
		}
		return "redirect:/";	

	}

	@GetMapping("/quanlyghe/update_Ghe")
	public String updateGhe(@RequestParam("GheId") int GheId,Model model,HttpSession session) {
		if(session.getAttribute("role")==null)
		return "redirect:/";
		else
			if(session.getAttribute("role").equals("ADMIN"))
			{	

				GheEntity ghe = gheService.getGhe(GheId);
				model.addAttribute("Ghe", convert(ghe));
				return "Add_Edit_Ghe";
		}
		return "redirect:/";

	}

	@GetMapping("/quanlyghe/delete_Ghe")
	public String deleteGhe(@RequestParam("GheId") int GheId,HttpSession session) {
		if(session.getAttribute("role")==null)
		return "redirect:/";
		else
			if(session.getAttribute("role").equals("ADMIN"))
			{	

				gheService.deleteGhe(GheId);
				return "redirect:/quanlyghe";
		}
		return "redirect:/";
		
	}
}
