package chat;

public class Message {
	public int div;
	public long index;
	public String ipAddr;
	public String alias;
	public String msg;
	
	public Message(){
		div = 0;
		index = 0;
		msg = "";
	}
	
	public Message(int div, long index, String ipAddr, String alias, String msg){
		this.div = div;
		this.index = index;
		this.ipAddr = ipAddr;
		this.alias = alias;
		this.msg = msg;
	}
}

