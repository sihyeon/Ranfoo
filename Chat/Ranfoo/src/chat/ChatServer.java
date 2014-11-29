package chat;

import java.util.*;

/**
 * 하나의 대화방
 * @author jungsejin
 */
public class ChatServer {
	
	//client에서 전송된 최초 메세지의 index값
	private final static int INIT_MESSAGE = 0;
	
	private List messageQueue; //대화메세지를 담는 리스트
	private int messageCnt; //리스트에 담을 최대 대화 개수
	
	private Map membersMap; //대화참여자 리스트
	
	private String chatServerNum; //대화방 번호(대화방을 구분짓는 PK)
	private String chatServerTitle; //대화방 제목
	private boolean usePw; //대화방의 비밀번호 설정여부
	private String chatServerPw; //대화방 비밀번호
	private int chatServerMemCnt; //대화방 최대 참가가능 수
	
	public ChatServer(){
		this.messageCnt = 10;
		this.messageQueue = Collections.synchronizedList(new ArrayList(messageCnt));
		this.membersMap = Collections.synchronizedMap(new HashMap());
	}
	
	public ChatServer(int messageCnt){
		this.messageCnt = messageCnt;
		this.messageQueue = Collections.synchronizedList(new ArrayList(messageCnt));
		this.membersMap = Collections.synchronizedMap(new HashMap());
	}

	/*
	 * private변수의 getter, setter 함수
	 */
	
	public int getChatServerMemCnt() {
		return chatServerMemCnt;
	}

	public String getChatServerNum() {
		return chatServerNum;
	}

	public String getChatServerPw() {
		return chatServerPw;
	}

	public String getChatServerTitle() {
		return chatServerTitle;
	}

	public boolean isUsePw() {
		return usePw;
	}

	public void setChatServerMemCnt(int chatServerMemCnt) {
		this.chatServerMemCnt = chatServerMemCnt;
	}

	public void setChatServerNum(String chatServerNum) {
		this.chatServerNum = chatServerNum;
	}

	public void setChatServerPw(String chatServerPw) {
		this.chatServerPw = chatServerPw;
	}

	public void setChatServerTitle(String chatServerTitle) {
		this.chatServerTitle = chatServerTitle;
	}

	public void setUsePw(boolean usePw) {
		this.usePw = usePw;
	}

	/**
	 * 대화방의 비밀번호를 검증한다.
	 * @param pw
	 * @return
	 */
	public boolean checkPassword(String pw){
		try{
			if(pw.equals(this.chatServerPw))
				return true;
			else
				return false;
		}catch(Exception e){
			return false;
		}
	}

	public synchronized void addMsg(Object obj){
		while(messageQueue.size()>=this.messageCnt)
			messageQueue.remove(0);
		
		messageQueue.add(obj);
	}
	
	public Message getMsg(long index){
		if(messageQueue.size()==0)
			return null;

		Message msg = null;
		msg = (Message)messageQueue.get(messageQueue.size()-1);
		
		//요청받은 메세지의 인덱스가 초기 메세지라면 큐의 마지막 메세지를 보내준다.
		if(index==INIT_MESSAGE)
			return msg;

		if(msg.index <= index){
			return null;
		}else{
			for(int i=(messageQueue.size()-2); i>=0; i--){
				msg = (Message)messageQueue.get(i);
				if(msg.index > index)
					continue;
				else
					return (Message)messageQueue.get(Math.min(i+1,(messageQueue.size()-1)));
			}
			return (Message)messageQueue.get(0);
		}
	}
	
	/*
	 * 대화방 멤버 리스트관련 함수 
	 */	
	
	public Map getMembersMap(){
		return this.membersMap;
	}
	
	public int getMembersCnt(){
		return this.membersMap.size();
	}
	
	public String[][] getMemberList(){
		String[][] memberList = null;
		try{
			Iterator memberKey = this.membersMap.keySet().iterator();
			memberList = new String[this.membersMap.size()][2];

			for(int i=0; memberKey.hasNext(); i++){
				memberList[i][0] = (String)memberKey.next();
				memberList[i][1] = (String)this.membersMap.get(memberList[i][0]);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return memberList;
	}
	
	public String getMemberListStr(){
		StringBuffer sb = null;
		String key = null;
		try{
			sb = new StringBuffer();
			Iterator memberKey = this.membersMap.keySet().iterator();
			
			for(int i=0; memberKey.hasNext(); i++){
				key = (String)memberKey.next();
				sb.append(key+"$");
				sb.append((String)this.membersMap.get(key)+"^");
			}
			if(sb.length()>0)
				return sb.substring(0, sb.length()-1);
			else
				return null;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}		
	}
	
	public String putMember(String ipAddr, String alias){
		if(this.membersMap.containsKey(ipAddr+":"+alias)){
			return null;
		}else
			return (String)this.membersMap.put(ipAddr+":"+alias, alias);
	}

	public boolean removeMember(String ipAddr, String alias){
		if(this.membersMap.containsKey(ipAddr+":"+alias)){
			this.membersMap.remove(ipAddr+":"+alias);
			return true;
		}else{
			return false;
		}
	}
}

