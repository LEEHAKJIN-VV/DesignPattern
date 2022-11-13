//
//  Pizza.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/13.
//

import Foundation

protocol Pizza {
    var name: String {get set}
    var dough: Dough? {get set}
    var sauce: Sauce? {get set}
    var veggies: [Veggies]? {get set}
    var cheese: Cheese? {get set}
    var pepperoni: Pepperoni? {get set}
    var clam: Clam? {get set}
    
    func prepare()
}

extension Pizza {
    var information: String {
        return name
    }
    
//    func prepare() {
//        print("Prepare " + name)
//        print("Tossing dough...")
//        print("Adding sauce...")
//        print("Adding toppings")
//
//        for topping in toppings {
//            print(" " + topping)
//        }
//    }
    
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

