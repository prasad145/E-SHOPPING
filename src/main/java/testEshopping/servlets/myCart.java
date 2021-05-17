package testEshopping.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import testEshopping.DBconnection.DBconnector;

/**
 * Servlet implementation class myCart
 */
//@WebServlet("/myCart")
public class myCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Vector<Vector<String>> bulkOrders = new Vector<Vector<String>>();
		try {
        	Connection con = DBconnector.initializeDatabase();
        	PreparedStatement st = con.prepareStatement("select * from cart where qty >= ?");
        	st.setInt(1, 5);
        	ResultSet rs = st.executeQuery();
        	while(rs.next()) {
        		Vector<String> v = new Vector<String>();
        		v.add(rs.getString(1));
        		v.add(String.valueOf(rs.getInt(2)));
        		bulkOrders.add(v);
        	}
        	try {
        		System.out.println(bulkOrders);
        		request.setAttribute("bulkOders", bulkOrders);
        		request.getRequestDispatcher("payment.jsp").include(request, response);
        	}
        	catch(Exception e) {
    			e.printStackTrace();
    		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
