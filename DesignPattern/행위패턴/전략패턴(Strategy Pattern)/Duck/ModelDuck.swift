//
//  ModelDuck.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/12.
//

import Foundation

public class ModelDuck: Duck {
    
    override init() {
        super.init()
        flyBehavior = FlyNoWay()
        quackBehavior = Quack()
    }
    
    public override func disPlay() {
        print("저는 모형 오리입니다.")
    }
    
}
