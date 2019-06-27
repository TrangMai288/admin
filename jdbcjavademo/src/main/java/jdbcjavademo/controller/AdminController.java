package jdbcjavademo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jdbcjavademo.entities.Admin;
import jdbcjavademo.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	private List<Admin> listAdmin;

//	@RequestMapping(value = { "/", "/admin-list" })
//	public String listAdmin(Map<String, Object> model) {
//		listAdmin = adminService.findAll();
//		model.put("abc", "abc");
//		//model.addAttribute("listAdmin", listAdmin);
//		model.put("listAdmin",listAdmin);
//		return "admin-list";
//	}

	@GetMapping(value = { "/", "/admin-list" })
	public ModelAndView listAdmin(Map<String, Object> model) {
		
		ModelAndView modelAndView = new ModelAndView("admin-list");
		modelAndView.addObject("adminList", "String");
		
		return modelAndView;
	}
		
	@RequestMapping("/admin-save")
	public String insertAdmin(Model model) {
		model.addAttribute("admin", new Admin());
		return "admin-save";
	}

	@RequestMapping("/admin-view/{id}")
	public String viewAdmin(@PathVariable int id, Model model) {
		Admin admin = adminService.findById(id);
		model.addAttribute("admin", admin);
		return "admin-view";
	}

	@RequestMapping("/admin-update/{id}")
	public String updateAdmin(@PathVariable int id, Model model) {
		Admin admin = adminService.findById(id);
		model.addAttribute("admin", admin);
		return "admin-update";
	}

	@PostMapping("/saveAdmin")
	public String doSaveAdmin(@ModelAttribute("admin") Admin admin, Model model) {
		adminService.save(admin);
		model.addAttribute("listAdmin", adminService.findAll());
		return "admin-list";
	}

	@RequestMapping("/updateAdmin")
	public String doUpdateAdmin(@ModelAttribute("admin") Admin admin, Model model) {
		adminService.update(admin);
		model.addAttribute("listAdmin", adminService.findAll());
		return "admin-list";
	}

	@RequestMapping("/adminDelete/{id}")
	public String doDeleteAdmin(@PathVariable int id, Model model) {
		adminService.delete(id);
		model.addAttribute("listAdmin", adminService.findAll());
		return "admin-list";
	}

//  @PostMapping("/saveAdmin")
//  public String doSaveAdmin2(HttpServletRequest req, Model model) {
//	 String name = req.getParameter("name");
//	 String email = req.getParameter("email");
//	 String pass = req.getParameter("password");
//	 String phone = req.getParameter("phone");
//	 String date = req.getParameter("birth");
//	 
//	 Date birth = Date.valueOf(date);
//	  Admin admin = new Admin();
//	  admin.setname(name);
//	  admin.setEmail(email);
//	  admin.setPassWord(pass);
//	  admin.setPhone(phone);
//	  admin.setBirth(birth);
//	  
//    adminService.save(admin);
//    model.addAttribute("listAdmin", adminService.findAll());
//    return "admin-list";
//  }
//	public List<Admin> getListAdmin() {
//		return listAdmin;
//	}
//
//	public void setListAdmin(List<Admin> listAdmin) {
//		this.listAdmin = listAdmin;
//	}

}