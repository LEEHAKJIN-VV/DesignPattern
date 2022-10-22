//
//  Subject.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/16.
//

import Foundation

protocol Subject {
    func registerObserver(o: Observer)
    func removeObserver(o: Observer)
    func notifyObservers()
}
