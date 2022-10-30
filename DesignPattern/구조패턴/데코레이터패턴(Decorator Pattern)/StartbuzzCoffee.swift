import Foundation

var beverage: Beverage = Espresso()
beverage = Moca(beverage: beverage)
beverage = Moca(beverage: beverage)
beverage = Whip(beverage: beverage)

print(beverage.description + ": \(beverage.cost())")
// 에스프레소, 모카, 모카, 휘핑 크림: 2.49

var beverage2: Beverage = HouseBlend()
beverage2 = Soy(beverage: beverage)
beverage2 = Moca(beverage: beverage)
beverage2 = Whip(beverage: beverage)

print(beverage2.description + ": \(beverage2.cost())")
// 에스프레소, 모카, 모카, 휘핑 크림, 휘핑 크림: 2.59
