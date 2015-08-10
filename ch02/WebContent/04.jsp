<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
jsp 페이지에 대한 설정 잡는 지시어와, 자바를 jsp에 어떤형태로 섞어서 클라이언트측에 출력시 활용할수 잇는가 살펴보았다.
<br />
클라이언트측으로부터 필요한 정보를 전달받는(입력받는)법에 대해서도 살펴보자.
<hr />
http 에서 데이터를 전송하는 미리 정해진 방식이 있다.
<br />
예)
<p>index.nhn?category=baseball&ctg=news&mod=read&office_id=469&article_id=0000076351</p>
위와 같이 해당 요청 페이지 뒤?이름=값&이름=값.. 의 형태로 전송을 해야만 한다.
<br/>
이걸 처리해서 확보하는 방식은 웹기술마다 다르지만 , 전송자체는 위와같은 형태로 해야만 한다.
<br/>
그럼 이걸 뽑아서, 클라이언트측으로부터의 전송된 입력값을 확보해보자.


