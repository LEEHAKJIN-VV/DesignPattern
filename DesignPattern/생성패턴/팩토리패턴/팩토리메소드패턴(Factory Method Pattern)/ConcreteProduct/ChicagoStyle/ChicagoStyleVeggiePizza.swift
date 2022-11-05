//
//  ChicagoStyleVeggiePizza.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/05.
//

import Foundation

class ChicagoStyleVeggiePizza: Pizza {
    var name: String
    var dough: String
    var sauce: String
    var toppings: [String] = []
    
    init() {
        name = "Chicago Deep Dish Veggie Pizza"
        dough = "Extra Thick Crust Dough"
        sauce = "Plum Tomato Sauce"
        
        toppings.append("Shredded Mozzarella Cheese")
        toppings.append("Black Olives")
        toppings.append("Spinach")
        toppings.append("Eggplant")
    }
    
    func cut() {
        print("Cutting the pizza into square slices");
    }
}
