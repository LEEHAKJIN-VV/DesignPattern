//
//  WeatherData.swift
//  DesignPattern
//
//  Created by 이학진 on 2022/10/16.
//

import Foundation

class WeatherData: Subject {
    private var observers = [Observer]()
    private var temperature: Float = 0.0
    private var humidity: Float = 0.0
    private var pressure: Float = 0.0

    func registerObserver(o: Observer) {
        observers.append(o)
    }
    
    func removeObserver(o: Observer) {
        let index: Int! = observers.firstIndex(where: { o.id == $0.id })
        observers.remove(at: index)
    }
    
    func notifyObservers() {
        for observer in observers {
            observer.update()
        }
    }
    func measurementsChanged() {
        notifyObservers()
    }
    
    func setMeasurements(temperature: Float, humidity: Float, pressure: Float) {
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        measurementsChanged()
    }
    
    func getTemperature() -> Float {
        return temperature
    }
    func getHumidity() -> Float {
        return humidity
    }
    func getPressure() -> Float {
        return pressure
    }
}
