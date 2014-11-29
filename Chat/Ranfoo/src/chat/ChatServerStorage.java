package chat;

import java.util.HashMap;
import java.util.*;
/**
 * @author Jungsejin
 * 개설되는 채팅방을 관리하는 클래스
 */
public class ChatServerStorage extends HashMap{
	
	private static ChatServerStorage instance;

	private ChatServerStorage(){
		super();
	}
	
	public synchronized static ChatServerStorage getInstance(){
		if(instance==null)
			instance = new ChatServerStorage();
		return instance;
	}
	
	public synchronized ChatServer putChatServer(String chatServerNum, ChatServer chatServer){
		if(instance.containsKey(chatServerNum))
			return null;
		else
			return (ChatServer)instance.put(chatServerNum, chatServer);
	}
	
	public synchronized boolean removeChatServer(String chatServerNum){
		if(instance.containsKey(chatServerNum)){
			instance.remove(chatServerNum);
			return true;			
		}else{
			return false;		
		}
	}
	
	public String[][] getChatList(){
		String[][] chatList = null;		
		try{			
			Iterator chatServerKey = instance.keySet().iterator();
			chatList = new String[instance.size()][2];
			ChatServer chatServer = null;			
			
			for(int i=0; chatServerKey.hasNext(); i++){
				chatServer = (ChatServer)instance.get(chatServerKey.next());
				chatList[i][0] = chatServer.getChatServerNum();
				chatList[i][1] = chatServer.getChatServerTitle();
				if(chatServer.isUsePw())
					chatList[i][1] += "[PW]";
				chatList[i][1] += " -"+chatServer.getMembersCnt();
			}			
		}catch(Exception e){
			e.printStackTrace();
		}		
		return chatList;
	}

	public String getChatListStr(){
		StringBuffer sb = null;		
		try{
			sb = new StringBuffer();
			Iterator chatServerKey = instance.keySet().iterator();
			ChatServer chatServer = null;			
			
			for(int i=0; chatServerKey.hasNext(); i++){
				chatServer = (ChatServer)instance.get(chatServerKey.next());
				sb.append(chatServer.getChatServerNum()+"$");
				sb.append(chatServer.getChatServerTitle());
				if(chatServer.isUsePw())
					sb.append("[PassWord]");
				sb.append("^");
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
}
