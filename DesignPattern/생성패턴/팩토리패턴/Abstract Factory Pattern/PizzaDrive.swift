//
//  PizzaDrive.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/11/13.
//

import Foundation

var nyPizzaStore = NYPizzaStore()
var chicagoPizzaStore = ChicagoPizzaStore()

nyPizzaStore.orderPizza(type: .cheese)
chicagoPizzaStore.orderPizza(type: .clam)

