package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wgh.DB.BaseDao;


@WebServlet(name = "initServlet", urlPatterns = { "/initServlet" },loadOnStartup=1)
public class InitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	@Override
	public void init() throws ServletException {
		String fileName = this.getServletContext().getRealPath("/")+"WEB-INF/classes/connDB.properties";
		//System.out.println("fileName:"+fileName);
		BaseDao.fileName=fileName;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
