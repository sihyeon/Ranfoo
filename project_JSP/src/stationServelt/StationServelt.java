package stationServelt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import station.Station;
import station.StationDAO;
import chat.ChatDAO;
import chat.Message;

/**
 * Servlet implementation class StationServelt
 */
@WebServlet("/StationServelt")
public class StationServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StationServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean ret = false;
		
		request.setCharacterEncoding("UTF-8");

		String station = request.getParameter("station");
		String memberNum = request.getParameter("memberNum");

		//세션을 생성하여 name 에 현재 작성한 사람의 이름을 저장함.
		HttpSession session=request.getSession(true);
		session.setAttribute("station", station.toString());
	}

}
