//
//  BeverageDecorator.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/30.
//

import Foundation

protocol BeverageDecorator: Beverage {
    var beverage: Beverage { get set }
    init(beverage: Beverage)
}
