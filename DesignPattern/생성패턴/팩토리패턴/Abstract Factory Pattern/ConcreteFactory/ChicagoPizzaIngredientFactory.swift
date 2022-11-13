//
//  ChicagoPizzaIngredientFactory.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/13.
//

import Foundation

class ChicagoPizzaIngredientFactory: PizzaIngredientFactory {
    func makeDough() -> Dough {
        return ThickCrustDough()
    }
    
    func makeSauce() -> Sauce {
        return PlumTomatoSauce()
    }
    
    func makeCheese() -> Cheese {
        return MozzarellaCheese()
    }
    
    func makeVeggies() -> [Veggies] {
        let veggies: [Veggies] = [BlackOlives(), Spinach(), Eggplant()]
        return veggies
    }
    
    func makePepperoni() -> Pepperoni {
        return SlicedPepperoni()
    }
    
    func makeClam() -> Clam {
        return FrozenClams()
    }
    
    
}
