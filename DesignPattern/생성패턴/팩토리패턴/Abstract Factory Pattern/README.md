
# 추상팩토리 패턴(Abstract Factory Pattern)
  - 구상 클래스에 의존하지 않고도 서로 연관되거나 의존적인 객체로 이루어진 제품군을 생성하는 인터페이스를 제공한다.

# 구조
 
![스크린샷 2022-11-13 오후 2 39 49](https://user-images.githubusercontent.com/52197436/201507662-43efe8a3-479a-4c10-9876-582ea2013467.png)


- AbstractFactory
  - 모든 ConcreteFactory가 구현해야 하는 인터페이스
  - 서로 관련된 제품군을 만드는 방법을 정의하는 인터페이스

- ConcreteFactory
  - 서로 다른 제품군을 구현함
  - 클라이언트에서 제품이 필요하면 이 중에서 하나를 선택하여 사용함


- AbstractProduct
  - 제품군 역할을 하는 인터페이스

- ConcreteProduct
  - 각 구상 팩토리에 의해서 생산되는 제품


# 정리

- 상속을 이용하여 제품을 만드는 팩토리 메소드 패턴과 달리, 객체 구성(composition)을 이용하여 제품을 만듬
- 클라이언트에서 서로 연관된 제품을 하나로 묶을 수 있는 장점을 가지고 있음
- 제품군에 제품을 추가해야 하는 경우, AbstractFactory를 수정해야 하는 단점이 있음
- 제품군의 형식이 변하지 않는다면, ConcreFactory를 추가하여 다른 제품군을 생산할 수 있음(확장 가능)
