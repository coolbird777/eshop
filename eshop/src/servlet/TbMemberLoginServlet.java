package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.TbMember;
import service.TbMemberService;

@WebServlet(name = "tbMemberLoginServlet", urlPatterns = { "/tbMemberLoginServlet" })
public class TbMemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("--------------��ʼ�����û���¼��֤-----------------------");
		//��ȡǰ̨����Ϣ
		String username = request.getParameter("username");
		String password=request.getParameter("PWD");
		
		TbMember tm = new TbMember();
		tm.setUsername(username);
		tm.setPassword(password);
		
		tm = new TbMemberService().memberLogin(tm);
		if(tm!=null) {
			//session
			request.getSession().setAttribute("username", tm.getUsername());
			//Ϊ������дԤ������
			request.getSession().setAttribute("member", tm);
		}else {
			//ʧ����
			request.setAttribute("loginErrMsg", "��¼ʧ��");
			
		}
		
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
