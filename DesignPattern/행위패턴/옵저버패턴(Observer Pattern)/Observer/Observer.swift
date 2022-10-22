//
//  Observer.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/16.
//

import Foundation

protocol Observer {
    var id: String { get set }
    func update()
}
