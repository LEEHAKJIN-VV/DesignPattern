//
//  MallardDuck.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/12.
//

import Foundation


public class MallardDuck: Duck {
    
    override init() {
        super.init()
        quackBehavior = Quack()
        flyBehavior = FlyWithWings()
    }
    
    public override func disPlay() {
        print("저는 물오리 입니다.")
    }
    
}
