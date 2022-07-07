//
//  WeatherRepositoryImplementation.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import SwiftUI

class WeatherRepositoryImplementation: WeatherRepository {

    func getWeekWeather(listener: @escaping (Weather) -> Void) {
        weatherAPIs.getWeekWeather(listener: listener)
    }
}
