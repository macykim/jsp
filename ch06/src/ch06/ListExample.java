package ch06;

import java.util.ArrayList;
import java.util.List;

public class ListExample {
	public static void main(String[] args) {
		// 컬렉션의 한 형태.. List 타입.. 자동으로 순서가 붙으면서 저장되는 
		// add, get, 제너릭 있고.. Map형태의 제너릭은 두가지를 걸어야된다.. 키타입/밸류타입
		// List 형태의 제너릭은 한가지만 걸면 된다. 밸류타입
		List<String>data = new ArrayList<String>();
		data.add("월");		// 0
		data.add("화");		// 1
		data.add("수");		// 2
		data.add("목");		// 3
		data.add("금");		// 4
		String item = data.get(2);
		System.out.println("data.get(2) => " + item);
		System.out.println("data.size() => " + data.size());
		
		// for
		System.out.println("for");
		for (int i = 0; i < data.size(); i++) {
			String temp = data.get(i);
			System.out.println(temp + " ");
		}
		
		// for each는 향상된 for로 확장 for문 적용 가능
		System.out.println("for each");
		for(String temp : data) {
			System.out.println(temp + " ");
		}
		
	}
}
