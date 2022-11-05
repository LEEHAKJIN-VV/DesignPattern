# 팩토리 메소드 패턴

- 객체를 생성할 때 필요한 인터페이스 만들어 객채 생성을 캡슐화 한다.
- 어떤 클래스의 인스턴스를 만들지는 서브클래스에서 결정한다.

## 구조 

![스크린샷 2022-11-05 오후 10 29 22](https://user-images.githubusercontent.com/52197436/200122364-8395c2eb-1900-4d5d-aeca-5d8ca801cd36.png)

- Product
  - ConcreteProduct들이 추상화한 인터페이스
  - Pizza

- ConcreteProduct
  - Product를 구현한 구상 클래스
  - 제품을 사용할 클래스에서 구상클래스가 아닌 인터페이스의 레퍼런스 객체를 참조하기 위해 같은 Product 인터페이스를 구현해야 함
  - NYPizzaStore, ChicagoPizzaStore

- Creator
  - Product로 원하는 일을 할때 필요한 메소드가 구현되어 있음
  - 그러나 제품을 만들어주는 팩토리 메소드는 구현되어 있지 않음
  - PizzaStore

- ConcreteCreator
  - 실제로 제품을 생산하는 factoryMethod를 구현함
  - 구상 클래스의 인스턴스를 만드는 일은 ConcreteCreator가 책임짐
  - NYStyleCheesePizza, ChicagoStyleCheesePizza, ...

## 디자인 원칙

- 의존성 뒤집기 원칙(Dependency Inversion Principle): 추상화된 것에 의존하게 만들고 구상 클래스에 의존하지 않게 만든다.
  - 고수준 구성요소가 저수준 구성 요소에 의존하면 안된다.
  - 고수준 구성 요소는 다른 저수준 구성 요소에 의해 정의되는 행동이 들어 있는 구성요소를 뜻함
  - PizzaStore의 행동은 Pizza에 의해 정의 되므로 PizzaStore는 고수준 구성요소, Pizza는 저수준 구성요소이다
  - 의존성 뒤집기 원칙에 의해 PizzaStore의 행동을 ConcretePizza가 아닌 이를 추상화 한 Pizza 인터페이스에 의존하게 만듬
  

## 정리

- 팩토리 메소드 패턴은 객체 생성을 캡슐화 한다.
- 객체 생성 코드의 중복을 제거하고 관리하기가 쉬워진다.
- 기존 객체에 수정이 생기더라도 팩토리 메소드만 수정하면 된다.
- 팩토리 메소드는 클라이언트에서 실제로 생성되는 객체가 무엇인지 알수없도록 하는 역할도 한다.
- 팩토리 메소드를 만들때 매개변수로 만들 객체의 종류를 선택할 수 있다.





