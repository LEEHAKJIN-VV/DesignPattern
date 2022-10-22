//
//  CurrentConditionDisplay.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/16.
//

import Foundation

class CurrentConditionDisplay: Observer, DisplayElement {
    private var temperature: Float = 0.0
    private var humidity: Float = 0.0
    private var weatherData: WeatherData
    var id: String
    
    init(id: String, weatherData: WeatherData) {
        self.id = id
        self.weatherData = weatherData
        weatherData.registerObserver(o: self)
    }
    
    func update() {
        self.temperature = weatherData.getTemperature()
        self.humidity = weatherData.getHumidity()
        display()
    }
    
    func display() {
        print("현재 상태: 온도 \(temperature)F, 습도 \(humidity)%")
    }
    
}
