//
//  NYPizzaIngredientFactory.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/13.
//

import Foundation

class NYPizzaIngredientFactory: PizzaIngredientFactory {
    func makeDough() -> Dough {
        return ThinCrustDough()
    }
    
    func makeSauce() -> Sauce {
        return MarinaraSauce()
    }
    
    func makeCheese() -> Cheese {
        return ReggianoCheese()
    }
    
    func makeVeggies() -> [Veggies] {
        let veggies: [Veggies] = [Garlic(), Onion(), Mushroom(), RedPepper()]
        return veggies
    }
    
    func makePepperoni() -> Pepperoni {
        return SlicedPepperoni()
    }
    
    func makeClam() -> Clam {
        return FreshClams()
    }
    
    
    
    
}
