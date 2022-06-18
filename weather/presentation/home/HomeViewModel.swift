//
//  HomeViewModel.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import Combine

class HomeViewModel: ObservableObject {

    @Published var weekWeather = [Weather]()

    init() {
        weekWeather = []
    }

    func getWeekWeather() {
        weekWeather = weekWeatherUseCase.run()
    }
}
