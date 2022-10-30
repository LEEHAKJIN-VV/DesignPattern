//
//  SimulatorDuck.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/16.
//

import Foundation

var mallard: Duck = MallardDuck()

mallard.performQuack()
mallard.performFly()

var model: Duck = ModelDuck()
model.performFly()
model.setFlyBehavior(fb: FlyRocketPowered())
model.performFly()
