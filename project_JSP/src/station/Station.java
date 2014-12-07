package station;

public class Station {
	private String station;
	private String memberNum;
	
	public String getStation() {return station;}
	public String getMemberNum() {return memberNum;}

	public Station(String station, String memberNum) {
		this.station = station;
		this.memberNum = memberNum;
	}
}
