//
//  Decaf.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/30.
//

import Foundation

class Decaf: Beverage {
    var description: String {
        return "디카페인"
    }
    func cost() -> Double {
        return 1.05
    }
    
}
