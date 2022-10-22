//
//  Duck.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/12.
//

import Foundation

public class Duck {
    var quackBehavior: QuackBehavior?
    var flyBehavior: FlyBehavior?
    
    public func disPlay() { }
    
    public func performQuack() {
        quackBehavior?.quack()
    }
    public func performFly() {
        flyBehavior?.fly()
    }
    
    public func setFlyBehavior(fb: FlyBehavior) {
        flyBehavior = fb
    }
    public func setQuackBehavior(qb: QuackBehavior) {
        quackBehavior = qb
    }
}
