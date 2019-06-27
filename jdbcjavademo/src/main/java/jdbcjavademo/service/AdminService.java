/**
 * 
 */
/**
 * @author DELL
 *
 */
package jdbcjavademo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jdbcjavademo.dao.AdminDAO;
import jdbcjavademo.entities.Admin;


@Service
@Transactional
public class AdminService{
	
	@Autowired
	private AdminDAO adminDAO;
	
	public List<Admin> findAll(){
		return adminDAO.findAll();
	}
	
	public Admin findById(int id) {
		return adminDAO.findById(id);
	}
	
	public void save (Admin admin) {
		adminDAO.save(admin);
	}
	
	public void update (Admin admin) {
		adminDAO.update(admin);
	}
	
	public void delete(int id) {
		adminDAO.delete(id);
	}
}