# ShoppingMall
### 쇼핑몰 프로젝트를 위해 사용한 개발환경
프로그래밍 언어: JAVA, JSP, Servlet  
웹 표준: HTML, CSS, JavaScript, JQuery, ajax, Bootstrap  
프레임워크 : SpringFramework   
DBMS: Oracle  
ORM: Mybatis  
Server: Tomcat  
BuildTool: maven  
형상관리툴: Git/Github 

### 쇼핑몰 프로젝트 기획
- 이 프로젝트에서는 액세서리를 판매하는 쇼핑몰을 구상하혔습니다.
- 다른 쇼핑몰(무신사, w컨셉, 발란, farfetch, 등)을 참조하여 진행하였습니다.

#### 데이터 베이스 구성요소
![image](https://user-images.githubusercontent.com/96754636/153791502-6be4419b-9d7a-4a07-940c-f03baf68697c.png) 
- 프로젝트를 사용하기 위해 만든 테이블은 총14개(fnq, manager, item, item_file, category, search, exchange_refund, member, qna, orders, board, cart, like_item, review)의 테이블로 이루어져있습니다.



### 기능별 구현
   1. ## 홈페이지
   - 홈페이지 화면에 판매가 높은 상품 1~8위까지 나열을 하였습니다.
   
   ![image](https://user-images.githubusercontent.com/96754636/153793539-ca69c092-4963-4abf-b4dd-72711e73ca5b.png)  
   
   - 헤더에 회원들이 검색을 자주하는 단어를 보여주고 상품을 검색할 수 있습니다.
   ![image](https://user-images.githubusercontent.com/96754636/153793590-70b96a83-1bd8-4577-87b2-0edf0dc478b6.png) 


   2. ## 회원
   - 회원가입 (중복아이디 검사와 주소검색 API 사용) 
   ![image](https://user-images.githubusercontent.com/96754636/153791719-589f875a-1cf0-489b-a714-3e5191202b7e.png)
   ![image](https://user-images.githubusercontent.com/96754636/153791163-8a7c21dc-e2a3-4d3c-bff7-6bd9f52fa2df.png)
   ![image](https://user-images.githubusercontent.com/96754636/153791247-4267a359-5f53-4cc2-8c92-bfed05cebba2.png)  
   - 상품 목록 화면 (전체 상품목록, 카테고리 별 상품 목록)
    ![image](https://user-images.githubusercontent.com/96754636/153791975-9bf2c4f3-bf23-4671-841d-50e18f75efb9.png)  
   - 상품 자세히보기 화면   
    ![image](https://user-images.githubusercontent.com/96754636/153792319-d873c862-15cd-44ba-bb58-666724a7af01.png)   
   - Q&A, 리뷰 화면
    ![image](https://user-images.githubusercontent.com/96754636/153792471-5a324c4a-6428-474e-aa90-5a3f53ca388f.png)   
   - 상품구매 화면
    ![image](https://user-images.githubusercontent.com/96754636/153792537-95a0e55b-8444-4a99-9b79-11be1b1d7a1f.png)   
   - 교환 및 환불 화면
    ![image](https://user-images.githubusercontent.com/96754636/153792609-7b52c734-c04d-46d3-8701-176449ad7e1f.png) 


  3. ## 운영자
   - 상품 (목록, 카테고리 등록 및 수정 화면)
   ![image](https://user-images.githubusercontent.com/96754636/153793052-9bd719bd-bc45-4029-a642-2d81db370b9d.png)
   - 아이템 (등록 및 수정 화면)
   ![image](https://user-images.githubusercontent.com/96754636/153793167-01ce5675-13f2-4e40-89ce-962703183b7e.png)
   - 운영자 전용 사이트 (회원, 관리자, 주문통계 등을 관리한다.)
   ![image](https://user-images.githubusercontent.com/96754636/153793400-2332b99c-5408-43e0-9a05-5667c4446d15.png)
    

