package ch06;

import java.util.ArrayList;
import java.util.List;

public class ListExample {
	public static void main(String[] args) {
		// �÷����� �� ����.. List Ÿ��.. �ڵ����� ������ �����鼭 ����Ǵ� 
		// add, get, ���ʸ� �ְ�.. Map������ ���ʸ��� �ΰ����� �ɾ�ߵȴ�.. ŰŸ��/���Ÿ��
		// List ������ ���ʸ��� �Ѱ����� �ɸ� �ȴ�. ���Ÿ��
		List<String>data = new ArrayList<String>();
		data.add("��");		// 0
		data.add("ȭ");		// 1
		data.add("��");		// 2
		data.add("��");		// 3
		data.add("��");		// 4
		String item = data.get(2);
		System.out.println("data.get(2) => " + item);
		System.out.println("data.size() => " + data.size());
		
		// for
		System.out.println("for");
		for (int i = 0; i < data.size(); i++) {
			String temp = data.get(i);
			System.out.println(temp + " ");
		}
		
		// for each�� ���� for�� Ȯ�� for�� ���� ����
		System.out.println("for each");
		for(String temp : data) {
			System.out.println(temp + " ");
		}
		
	}
}
