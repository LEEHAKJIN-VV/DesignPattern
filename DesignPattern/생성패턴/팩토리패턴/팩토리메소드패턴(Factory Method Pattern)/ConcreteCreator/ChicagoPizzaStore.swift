//
//  ChicagoPizzaStore.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/05.
//

import Foundation

class ChicagoPizzaStore: PizzaStore {
    func makePizza(type: PizzaType) -> Pizza {
        switch type {
        case .veggie:
            return ChicagoStyleVeggiePizza()
        case .cheese:
            return ChicagoStyleCheesePizza()
        case .clam:
            return ChicagoStyleClamPizza()
        case .pepperoni:
            return ChicagoStylePepperoniPizza()
        @unknown default:
            return NYStyleCheesePizza()
        }
    }
}
