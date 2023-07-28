package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.Database;

@WebServlet("/login")
public class LogInServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			Database db = new Database();
			Connection conn = db.getConnection();

			String email = req.getParameter("em");
			String pass = req.getParameter("ps");

			PreparedStatement pst = conn.prepareStatement("select * from login where email=? and password=?");
			pst.setString(1, email);
			pst.setString(2, pass);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				RequestDispatcher dispatcher =req.getRequestDispatcher("success.jsp");
				req.setAttribute("msg", "yes");
				dispatcher.include(req, resp);
				
				//resp.sendRedirect("success.jsp");
			}
			else {
				
				RequestDispatcher dispatcher=req.getRequestDispatcher("index.jsp");
				req.setAttribute("msg", "no");
				dispatcher.include(req, resp);
			}

		} catch (SQLException e) {
			e.printStackTrace();

		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
