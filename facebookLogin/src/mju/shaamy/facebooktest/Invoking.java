package mju.shaamy.facebooktest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Invoking")
public class Invoking extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Invoking() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String client_id = "805545622842838";
		String redirect_uri="http://localhost:8888/facebookLogin/getToken";	//redirect_uri명시
		String scope = "";	//facebook 앱에서 접근권한 명시

		System.out.println("INVOKING");

		response.sendRedirect("https://www.facebook.com/dialog/oauth?client_id="+client_id+"   &redirect_uri="+redirect_uri);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
