//
//  NyStyleClamPizza.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/05.
//

import Foundation

class NYStyleClamPizza: Pizza {
    var name: String
    var dough: String
    var sauce: String
    var toppings: [String] = []
    
    init() {
        name = "NY Style Clam Pizza"
        dough = "Thin Crust Dough"
        sauce = "Marinara Sauce"
        
        toppings.append("Grated Reggiano Cheese")
        toppings.append("Fresh Clams from Long Island Sound")
    }
}
