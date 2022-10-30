//
//  Whip.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/30.
//

import Foundation

class Whip: BeverageDecorator {
    var beverage: Beverage
    var description: String {
        return beverage.description + ", 휘핑 크림"
    }
    
    required init(beverage: Beverage) {
        self.beverage = beverage
    }
    
    func cost() -> Double {
        return beverage.cost() + 0.10
    }
    
}
