package equipment;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.orderdao;
import entity.order;

/**
 * Servlet implementation class buyequip
 */
@WebServlet("/buyequip")
public class buyequip extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public buyequip() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
       request.setCharacterEncoding("UTF-8");
		
		String equipName=request.getParameter("equipName");
		int oquantity=Integer.parseInt(request.getParameter("oquantity"));
		int amount=Integer.parseInt(request.getParameter("amount"));
		
		
		order eq=new order();
		eq.setEquipName(equipName);
		eq.setOquantity(oquantity);
		eq.setAmount(amount);
		
		


		
	    orderdao or=new orderdao();
		try {
			or.buyequip(eq);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("orderlist.jsp");
	}
	

}
