package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.TbGoodsService;

@WebServlet(name = "tbGoodsQueryServlet", urlPatterns = { "/tbGoodsQueryServlet" })
public class TbGoodsQueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("--------------开始信息查询-----------------------");
		//返回相应信息
		TbGoodsService service = new TbGoodsService();
		List saleGoodsList = service.queryTopSaleGoods();
		List newGoodsList = service.queryTopNewGoods();
		request.setAttribute("saleGoodsList", saleGoodsList);
		request.setAttribute("newGoodsList", newGoodsList);
		
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
