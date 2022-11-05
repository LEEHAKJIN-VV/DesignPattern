//
//  NYStylePepperoniPizza.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/05.
//

import Foundation

class NYStylePepperoniPizza: Pizza {
    var name: String
    var dough: String
    var sauce: String
    var toppings: [String] = []
    
    init() {
        name = "NY Style Pepperoni Pizza"
        dough = "Thin Crust Dough"
        sauce = "Marinara Sauce"
        
        toppings.append("Grated Reggiano Cheese")
        toppings.append("Sliced Pepperoni")
        toppings.append("Garlic")
        toppings.append("Onion")
        toppings.append("Mushrooms")
        toppings.append("Red Pepper")
    }
}
