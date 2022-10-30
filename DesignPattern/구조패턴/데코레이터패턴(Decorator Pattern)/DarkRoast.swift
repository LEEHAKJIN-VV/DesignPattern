//
//  DarkRoast.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/30.
//

import Foundation

class DarkRoast: Beverage {
    var description: String {
        return "다크 로스트"
    }
    func cost() -> Double {
        return 0.99
    }
    
}
