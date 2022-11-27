

# 싱글톤 패턴(Singleton Pattern)
  - 클래스의 인스턴스를 오직 단 하나만 만들고, 그 인스턴스로의 전역 접근을 제공하는 패턴

# swift에서의 구현
```swift
public class Singleton {
    static let uniqueInstance: Singleton = Singleton()
    
    private init() {}
}
```
swift에서 singletone 구현 방법은 간단하다.  
이니셜라이저를 private로 지정하여 다른 클래스로부터의 인스턴스 생성을 막는다.  
타입 저장 프로퍼티는 클래스 내에서 유일성이 보장되며 lazy하게 작동되어(사용되기 전까지 메모리에 올라가지 않음) 효율성을 챙길 수 있다.  
또한 멀티 스레드 환경에서 한번만 초기화 되는 것을 보장하기 때문에 싱글톤 패턴의 단점 중 하나인 멀티스레드 문제를 해결할 수 있다.  

swift 공식문서 - 타입 저장 프로퍼티 관련 글  
![singleton1](https://user-images.githubusercontent.com/52197436/204116600-eaa2ba71-7347-42ed-971b-abd18a89c8d5.png)  


## 예시
```swift
public class Singleton {
    static let uniqueInstance: Singleton = Singleton()
    var value: Int = 0
    
    private init() {}
}

var shared1 = Singleton.uniqueInstance
var shared2 = Singleton.uniqueInstance

shared1.value = 1
print("shared1.value: \(shared1.value), shared2.value: \(shared2.value)")
// Prints shared1.value: 1, shared2.value: 1
shared2.value = 2
print("shared1.value: \(shared1.value), shared2.value: \(shared2.value)")
// Prints shared1.value: 2, shared2.value: 2
```
shared1과 shared2는 같은 인스턴스를 공유하는 것을 확인할 수 있다.


# 정리
 - 싱글톤 패턴을 적용하면 해당 클래스의 인스턴스가 오직 하나만 생성되는 것을 보장할 수 있다.
 - 전역변수 처럼 어디서든지 접근이 가능하다.
 - 멀티스레드 환경에서 문제가 있지만, swift에서는 타입 저장프로퍼티가 이를 해결한다.
 - 싱글톤 패턴을 사용하면 어디서든지 접근이 가능하므로 싱글톤 인스턴스와 연결된 다른 클래스의 인스턴스가 많아질 가능성이 높다. -> 느슨한 결합 원칙에 위배 됨





