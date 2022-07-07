//
//  WeatherRepository.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

protocol WeatherRepository{
    
    func getWeekWeather(listener: @escaping (Weather) -> Void)
}
