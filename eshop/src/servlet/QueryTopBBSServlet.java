package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.TbBbs;
import entity.VorderDetail;
import service.TbBbsService;
import service.VorderDetailService;


@WebServlet(name = "queryTopBBSServlet", urlPatterns = { "/queryTopBBSServlet" })
public class QueryTopBBSServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TbBbsService service = new TbBbsService();
	VorderDetailService orderDetailService = new VorderDetailService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<TbBbs> myList = service.queryTopResult();
		List<VorderDetail> detailList = orderDetailService.queryAll();
		request.setAttribute("bbsList", myList);
		request.setAttribute("orderDetailList", detailList);
		//request.getRequestDispatcher("left.jsp").forward(request, response);
		request.getRequestDispatcher("left.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
