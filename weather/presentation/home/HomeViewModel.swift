//
//  HomeViewModel.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import Combine

class HomeViewModel: ObservableObject {

    @Published var weekWeather: Weather

    init() {
        weekWeather = Weather()
    }

    func getWeekWeather() {
        weekWeatherUseCase.run { weather in
            self.weekWeather = weather
        }
    }
    
    func getDayWeather(index: Int) -> DayWeather {
        return weekWeather.list[index]
    }
}
