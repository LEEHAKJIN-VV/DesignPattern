//
//  PizzaStore.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/05.
//

import Foundation

protocol PizzaStore {
    func makePizza(type: PizzaType) -> Pizza
}

extension PizzaStore {
    func orderPizza(type: PizzaType) -> Pizza {
        var pizza: Pizza
        pizza = makePizza(type: type)
        
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        
        return pizza
    }
}

enum PizzaType {
    case veggie
    case cheese
    case clam
    case pepperoni
}
