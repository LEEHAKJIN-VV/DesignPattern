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

var shared1 = Singleton.uniqueInstance
var shared2 = Singleton.uniqueInstance

shared1.value = 1
print("shared1.value: \(shared1.value), shared2.value: \(shared2.value)")
// Prints shared1.value: 1, shared2.value: 1
shared2.value = 2
print("shared1.value: \(shared1.value), shared2.value: \(shared2.value)")
// Prints shared1.value: 2, shared2.value: 2
