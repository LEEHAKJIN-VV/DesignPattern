//
//  StatisticsDisplay.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/16.
//

import Foundation

class StatisticsDisplay: Observer, DisplayElement {
    var id: String
    private var maxTemp: Float = 0.0
    private var minTemp: Float = 200
    private var tempSum: Float = 0.0
    private var numReadings: Int = 0
    private var weatherData: WeatherData
    
    var avgTemp: Float {
        get {
            return tempSum / Float(numReadings)
        }
    }
    
    init(id: String, weatherData: WeatherData) {
        self.id = id
        self.weatherData = weatherData
        weatherData.registerObserver(o: self)
    }
    
    func update() {
        let temp: Float = weatherData.getTemperature()
        tempSum += temp
        numReadings += 1
        
        maxTemp = max(temp, maxTemp)
        minTemp = min(temp, minTemp)
        
        display()
    }
    func display() {
        print("Avg/Max/Min temperature = \(avgTemp) \(maxTemp) \(minTemp)")
    }
}
