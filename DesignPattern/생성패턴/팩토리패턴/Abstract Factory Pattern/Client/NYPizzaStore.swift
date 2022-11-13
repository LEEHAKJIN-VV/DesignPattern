//
//  NYPizzaStore.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/13.
//

import Foundation

class NYPizzaStore: PizzaStore {
    func makePizza(type: PizzaType) -> Pizza? {
        var pizza: Pizza?
        let ingredientFactory: PizzaIngredientFactory = NYPizzaIngredientFactory()
        
        switch(type) {
        case .cheese:
            pizza = CheesePizza(ingredientFactory: ingredientFactory)
            pizza?.name = "뉴욕 스타일 치즈 피자"
        case .veggie:
            pizza = VeggiePizza(ingredientFactory: ingredientFactory)
            pizza?.name = "뉴욕 스타일 야채 피자"
        case .clam:
            pizza = ClmaPizza(ingredientFactory: ingredientFactory)
            pizza?.name = "뉴욕 스타일 조개 피자"
        case .pepperoni:
            pizza = ClmaPizza(ingredientFactory: ingredientFactory)
            pizza?.name = "뉴욕 스타일 페퍼로니 피자"
        @unknown default:
            pizza?.name = "알수없는 피자"
        }
        return pizza
    }
}
