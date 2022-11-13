//
//  PizzaIngredientFactory.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/13.
//

import Foundation


protocol PizzaIngredientFactory {
    func makeDough() -> Dough
    func makeSauce() -> Sauce
    func makeCheese() -> Cheese
    func makeVeggies() -> [Veggies]
    func makePepperoni() -> Pepperoni
    func makeClam() -> Clam
}
