package chat;

import java.util.*;

public class ChatUtil {

	public synchronized static long getIndex(){
		return System.currentTimeMillis();
	}
	
	public static int str2int(String str){
		if(str==null)
			return 0;
		
		try{
			return Integer.parseInt(str);
		}catch(NumberFormatException e){
			return 0;
		}
	}
	
	public static long str2long(String str){
		if(str==null)
			return 0;
		
		try{
			return Long.parseLong(str);
		}catch(NumberFormatException e){
			return 0;
		}
	}
	
	public static String null2void(String str){
		if(str==null)
			return "";
		else
			return str;
	}
	
	public static boolean str2bool(String str){
		if(str==null)
			return false;
		
		if(str.equalsIgnoreCase("Y")||str.equalsIgnoreCase("YES")||str.equalsIgnoreCase("TRUE"))
			return true;
		else
			return false;
	}
}
