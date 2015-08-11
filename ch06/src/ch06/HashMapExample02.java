package ch06;

import java.util.HashMap;
import java.util.Map;

public class HashMapExample02 {
	public static void main(String[] args) {
		
		Map<String, String> data = new HashMap<String, String>();
			// 제너릭 형태를 미리 설정해둔 것으로 제약을 준다.
			// Map data = new HashMap();의 형태에 제약을 둔 것.
			// String만 받는다. 그래서 저 아래의 data.put("number", 123); 이 에러가 뜨는것.
			
		data.put("hong", "홍길동");
		
		String s = data.get("hong");
		System.out.println(s);
		
		//data.put("number", 123);
		
	}
}
