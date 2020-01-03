package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.TbGoods;
import service.TbGoodsService;

/**
 * Servlet implementation class QueryTbGoodsByIdServlet
 */
@WebServlet(name = "queryTbGoodsByIdServlet", urlPatterns = { "/queryTbGoodsByIdServlet" })
public class QueryTbGoodsByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idStr = request.getParameter("id");
		int id = 0;
		if(idStr!=null &&!"".equals(idStr)) {
			id = Integer.parseInt(idStr);
		}
		// 从后台获取信息
		TbGoodsService service = new TbGoodsService();
		TbGoods goods = service.queryGoodsById(id);
		request.setAttribute("goods", goods);
		request.getRequestDispatcher("goods_detail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
