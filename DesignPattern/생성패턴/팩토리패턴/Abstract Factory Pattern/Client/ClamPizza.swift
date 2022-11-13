//
//  ClamPizza.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/13.
//

import Foundation

class ClmaPizza: Pizza {
    var ingredientFactory: PizzaIngredientFactory
    
    var name: String = ""
    var dough: Dough?
    var sauce: Sauce?
    var veggies: [Veggies]?
    var cheese: Cheese?
    var pepperoni: Pepperoni?
    var clam: Clam?
    
    init(ingredientFactory: PizzaIngredientFactory) {
        self.ingredientFactory = ingredientFactory
    }
    
    func prepare() {
        print("준비중 \(name)")
        dough = ingredientFactory.makeDough()
        sauce = ingredientFactory.makeSauce()
        cheese = ingredientFactory.makeCheese()
        clam = ingredientFactory.makeClam()
    }
}
