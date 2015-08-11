package ch06;

import java.util.Map;
import java.util.TreeMap;

public class TreeMapExample {
	public static void main(String[] args) {
		Map map = new TreeMap();
		int[] data = {8,3,10,1,6,4,7,14,13};
		String[] data2 = {"ÆÈ", "»ï", "½Ê", "ÀÏ", "À°", "»ç", "Ä¥", "½Ê»ç", "½Ê»ï"};
		
		for (int i = 0; i < data.length; i++) {
			map.put(data[i], data2[i]);
		}
		System.out.println(map);
		map.put(5, "¿À");
		map.put(25, "ÀÌ½Ê¿À");
		System.out.println(map);
	}
}
