package ch06;

import java.util.HashMap;
import java.util.Map;

public class HashMapExample01 {
	public static void main(String[] args) {
		Map map = new HashMap();
		map.put("rla", "dkim");	// ���� �̸��� �˻��ϸ� ���� ���� ���ִ�... �׷� ����
		map.put("ȫ", "�浿");	// ���� ã�ƿ��̸� (Ű), �ڰ� ������ �� (���)
		int[] arr = new int[] {1,2,3,4,};
		map.put("�迭", arr);
		map.put("n", 444);
		
		// ���� Ÿ������ ��ȯ�� �ʿ��ϴ�.
		String str = (String)map.get("rla");
		System.out.println(str);
		
		int[]tmp = (int[])map.get("�迭");
		for(int i : tmp) {
			System.out.println(i);
		}
	}
}
