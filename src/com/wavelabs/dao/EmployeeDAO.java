package com.wavelabs.dao;
import java.util.List;
import java.util.ArrayList;
import com.wavelabs.entity.Employee;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.wavelabs.dao.DBConnect;
public class EmployeeDAO {

	public boolean createEmployee(Employee emp)
	{
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		int count=0;
		try
		{
			con = DBConnect.getConnection();
			pst = con.prepareStatement("insert into employee (empid,ename,salary,depno) values(?,?,?,?)");
			pst.setInt(1,emp.getEmpid());
			pst.setString(2, emp.getEname());
			pst.setDouble(3, emp.getSalary());
			pst.setInt(4, emp.getDeptno());
			count = pst.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally {
			DBConnect.closeResultSet(rs);
			DBConnect.closeStatement(pst);
			DBConnect.closeConnection(con);
		}
		return(count==1);

	}
	public List<Employee> getAllEmployees()
	{
		ArrayList<Employee> elist = new ArrayList<Employee>();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try
		{
			con = DBConnect.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select empid, ename, salary, depno from employee");
			while(rs.next())
				elist.add(new Employee(rs.getInt(1), rs.getString(2), rs.getDouble(3),
						rs.getInt(4)));
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally {
			DBConnect.closeResultSet(rs);
			DBConnect.closeStatement(st);
			DBConnect.closeConnection(con);
		}
		
		return elist;
	}
	public Employee getEmployeeDetails(String userName)
	{
		Employee emp = null;
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try
		{
			con = DBConnect.getConnection();
			
			pst = con.prepareStatement("select empid, ename, salary, depno from employee where "
					+ "username=?");
			pst.setString(1,userName);
			rs = pst.executeQuery();
			if(rs.next())
			{
				emp = new Employee();
				emp.setEmpid(rs.getInt(1));
				emp.setEname(rs.getString(2));
				emp.setSalary(rs.getDouble(3));
				emp.setDeptno(rs.getInt(4));
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally {
			DBConnect.closeResultSet(rs);
			DBConnect.closeStatement(pst);
			DBConnect.closeConnection(con);
		}
		return emp;
	}
}
