package ch06;

import java.util.HashMap;
import java.util.Map;

public class HashMapExample02 {
	public static void main(String[] args) {
		
		Map<String, String> data = new HashMap<String, String>();
			// ���ʸ� ���¸� �̸� �����ص� ������ ������ �ش�.
			// Map data = new HashMap();�� ���¿� ������ �� ��.
			// String�� �޴´�. �׷��� �� �Ʒ��� data.put("number", 123); �� ������ �ߴ°�.
			
		data.put("hong", "ȫ�浿");
		
		String s = data.get("hong");
		System.out.println(s);
		
		//data.put("number", 123);
		
	}
}
