package fa.project.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import fa.project.springmvc.entities.GheBanEntity;
import fa.project.springmvc.services.GheBanService;

@Controller
public class GheBanController {
	@Autowired
	GheBanService gheBanService;

	@GetMapping(value = { "/quanlygheban" })
	public String getAllKhachHang(Model model,HttpSession session) {
		if(session.getAttribute("role")==null)
		return "redirect:/";
		else
			if(session.getAttribute("role").equals("ADMIN"))
			{	
				List<GheBanEntity> ghebanList = gheBanService.getAllGheBan();
				model.addAttribute("ghebansList", ghebanList);
		return "quanlygheban";
		}
		return "redirect:/";
	}
}
