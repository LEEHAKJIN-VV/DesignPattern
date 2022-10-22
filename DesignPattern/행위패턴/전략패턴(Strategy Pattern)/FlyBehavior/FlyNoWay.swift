//
//  FlyNoWay.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/12.
//

import Foundation

// 고무 오리나 가짜 오리 같은 날 수 없는 오리들의
// 나는 행동을 구현한 클래스
class FlyNoWay: FlyBehavior {
    public func fly() {
        print("저는 못날아요")
    }
}
