package jdbcjavademo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import jdbcjavademo.entities.Admin;
import jdbcjavademo.entities.AdminMapper;




@Repository
@Transactional
public class AdminDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void save (Admin admin) {
		String sql = "INSERT INTO admin (name, email, birth, phone, password) VALUES (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, admin.getname(), admin.getEmail(), admin.getBirth(), admin.getPhone(), admin.getPassword());
	}
	
	public void delete(int id) {
		String sql = "DELETE FROM admin WHERE id = " + id;
		jdbcTemplate.update(sql);
	}
	
	public void update(Admin admin) {
		String sql = "UPDATE admin SET name = ?, email = ?, birth = ?, phone = ?, password = ?  WHERE id = ?";
		jdbcTemplate.update(sql, admin.getname(), admin.getEmail(), admin.getBirth(), admin.getPhone(), admin.getPassword(), admin.getId());
	}
	
	public Admin findById(int id) {
		String sql = "SELECT * FROM admin WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new AdminMapper(),id);
	}
	
	public List<Admin> findAll() {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM admin";
		return jdbcTemplate.query(sql, new AdminMapper());
	}	
}
