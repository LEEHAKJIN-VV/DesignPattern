//
//  HouseBlend.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/30.
//

import Foundation

class HouseBlend: Beverage {
    var description: String {
        return "하우스 블렌드"
    }
    func cost() -> Double {
        return 0.89
    }
    
}
