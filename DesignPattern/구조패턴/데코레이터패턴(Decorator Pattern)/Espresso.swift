//
//  Espresso.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/30.
//

import Foundation

class Espresso: Beverage {
    var description: String {
        return "에스프레소"
    }
    func cost() -> Double {
        return 1.99
    }
    
}
