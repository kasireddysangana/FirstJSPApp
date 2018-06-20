import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import com.wavelabs.dao.EmployeeDAO;
import com.wavelabs.entity.Employee;
import javax.servlet.annotation.WebServlet;

@WebServlet("/GetAllEmployeesServlet")
public class GetAllEmployeesServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		response.setContentType("text/html");
		List<Employee> elist = new EmployeeDAO().getAllEmployees();
		request.setAttribute("empList", elist);
		request.getRequestDispatcher("DisplayEmployee.jsp").forward(request, response);
		
	}
}
