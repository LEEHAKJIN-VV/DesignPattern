//
//  ForecastDisplay.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/16.
//

import Foundation

class ForeCastDisplay: Observer, DisplayElement {
    private var currentPressure: Float = 29.2
    private var lastPressure: Float = 0.0
    private var weatherData: WeatherData
    var id: String
    
    init(id: String, weatherData: WeatherData) {
        self.id = id
        self.weatherData = weatherData
        weatherData.registerObserver(o: self)
    }
    
    func update() {
        lastPressure = currentPressure
        currentPressure = weatherData.getPressure()
        display()
    }
    
    func display() {
        print("ForeCast: ", terminator: "")
        if currentPressure > lastPressure {
            print("Improving weather on the way")
        } else if currentPressure == lastPressure {
            print("More of the same")
        } else if currentPressure < lastPressure {
            print("Watch out for cooler, rainy weather")
        }
    }
}
