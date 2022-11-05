//
//  Pizza.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/05.
//

import Foundation

protocol Pizza {
    var name: String {get set}
    var dough: String {get set}
    var sauce: String {get set}
    var toppings: [String] {get set}
}

extension Pizza {
    var information: String {
        return name
    }
    
    func prepare() {
        print("Prepare " + name)
        print("Tossing dough...")
        print("Adding sauce...")
        print("Adding toppings")
        
        for topping in toppings {
            print(" " + topping)
        }
    }
    
    func bake() {
        print("Bake for 25 minutes at 350")
    }
    func cut() {
        print("Cut the pizza into diagonal slices")
    }
    func box() {
        print("Place pizza in official PizzaStore box")
    }
}
