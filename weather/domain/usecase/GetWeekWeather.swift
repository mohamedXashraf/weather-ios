//
//  GetWeekWeather.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

class GetWeekWeather {

    func run(listener: @escaping (Weather) -> Void) {
        weatherRepository.getWeekWeather(listener: listener)
    }
}
