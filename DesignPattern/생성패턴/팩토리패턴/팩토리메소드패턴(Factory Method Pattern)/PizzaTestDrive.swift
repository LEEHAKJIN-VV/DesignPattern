
//  PizzaTestDrive.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/05.


import Foundation

var nyStore = NYPizzaStore()
var chicagoStore = ChicagoPizzaStore()

var pizza = nyStore.orderPizza(type: .cheese)
print("Ethan ordered a " + pizza.information)

print()

pizza = chicagoStore.orderPizza(type: .cheese)
print("Joel ordered a " + pizza.information)
