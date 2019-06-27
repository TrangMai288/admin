package jdbcjavademo.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class AdminMapper implements RowMapper<Admin> {
	public Admin mapRow(ResultSet rs,int rowNum) throws SQLException {
		Admin admin = new Admin();
		admin.setId(rs.getInt("id"));
		admin.setname(rs.getString("name"));
		admin.setBirth(rs.getDate("birth"));
		admin.setEmail(rs.getString("email"));
		admin.setPassWord(rs.getString("password"));
		admin.setPhone(rs.getString("phone"));
		return admin;	
	}
}
