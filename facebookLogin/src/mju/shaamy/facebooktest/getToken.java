package mju.shaamy.facebooktest;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 * Servlet implementation class getToken
 */
@WebServlet("/getToken")
public class getToken extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public getToken() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			String client_id = "805545622842838";			//client ID
			String redirect_uri="http://localhost:8888/facebookLogin/getToken";		//it must be registed with facebook ex> http://localhost:8888/facebookLogin
			String appSecret = "29605a186550885944fccb5357fe2368";
			String code = request.getParameter("code");	//get accesstoken
			URL url = null;
			URLConnection conn = null;
			String access_token = null;

			url = new URL("https://graph.facebook.com/oauth/access_token"+
								"?client_id="+client_id+
								"&client_secret="+appSecret+
								"&redirect_uri="+redirect_uri+
								"&code="+code);

			conn = url.openConnection();
			conn.setDoInput(true);
			InputStream in = conn.getInputStream();

			BufferedReader reader = new BufferedReader(new InputStreamReader(in));
			String input;
			StringBuffer buffer = new StringBuffer();

			while((input = reader.readLine()) != null ){
				buffer.append(input);
				buffer.append("\n");
			}
			reader.close();

			access_token = buffer.toString().split("=",2)[1];
			System.out.println("test : " +access_token);

			HttpSession session = request.getSession();
	        session.setAttribute("access_token", access_token);		//input session

	        response.sendRedirect("https://graph.facebook.com/me?access_token="+access_token);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
		}

	}