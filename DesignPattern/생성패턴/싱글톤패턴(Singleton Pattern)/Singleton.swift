//
//  Singleton.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/27.
//

import Foundation

public class Singleton {
    static let uniqueInstance: Singleton = Singleton()
    
    private init() {}
}
