package station;

import org.json.simple.JSONObject;

public class Station {
	private static String station = "병점";
	private static String memberNum;
	
	public static String getStation() {return station;}
	public static String getMemberNum() {return memberNum;}

	public Station(String station, String memberNum) {
		this.station = station;
		this.memberNum = memberNum;
	}
	
	@SuppressWarnings("unchecked")
	public static JSONObject toJSON() {
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("station", getStation());
		jsonObj.put("memberNum", getMemberNum());

		return jsonObj;
	}
}
