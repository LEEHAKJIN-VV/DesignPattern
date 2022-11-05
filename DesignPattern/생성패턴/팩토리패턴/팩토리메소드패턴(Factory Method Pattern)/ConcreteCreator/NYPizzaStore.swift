//
//  NYPizzaStore.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/05.
//

import Foundation

class NYPizzaStore: PizzaStore {
    func makePizza(type: PizzaType) -> Pizza {
        switch type {
        case .veggie:
            return NYStyleVeggiePizza()
        case .cheese:
            return NYStyleCheesePizza()
        case .clam:
            return NYStyleClamPizza()
        case .pepperoni:
            return NYStylePepperoniPizza()
        @unknown default:
            return NYStyleCheesePizza()
        }
    }
}
