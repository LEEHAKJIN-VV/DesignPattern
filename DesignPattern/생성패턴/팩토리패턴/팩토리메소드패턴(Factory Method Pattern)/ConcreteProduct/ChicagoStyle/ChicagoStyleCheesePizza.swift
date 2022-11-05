//
//  ChicagoStyleCheesePizza.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/05.
//

import Foundation

class ChicagoStyleCheesePizza: Pizza {
    var name: String
    var dough: String
    var sauce: String
    var toppings: [String] = []
    
    init() {
        name = "Chicago Style Deep Dish Cheese Pizza"
        dough = "Extra Thick Crust Dough"
        sauce = "Plum Tomato Sauce"
        
        toppings.append("Shredded Mozzarella Cheese")
    }
    
    func cut() {
        print("Cutting the pizza into square slices");
    }
    
}
