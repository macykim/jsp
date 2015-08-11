package ch06;

import java.util.HashMap;
import java.util.Map;

public class HashMapExample01 {
	public static void main(String[] args) {
		Map map = new HashMap();
		map.put("rla", "dkim");	// 앞의 이름을 검색하면 뒤의 값을 내주는... 그런 원리
		map.put("홍", "길동");	// 앞이 찾아올이름 (키), 뒤가 저장할 값 (밸류)
		int[] arr = new int[] {1,2,3,4,};
		map.put("배열", arr);
		map.put("n", 444);
		
		// 실제 타입으로 변환이 필요하다.
		String str = (String)map.get("rla");
		System.out.println(str);
		
		int[]tmp = (int[])map.get("배열");
		for(int i : tmp) {
			System.out.println(i);
		}
	}
}
