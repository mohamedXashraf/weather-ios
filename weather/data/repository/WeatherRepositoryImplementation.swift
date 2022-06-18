//
//  WeatherRepositoryImplementation.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import SwiftUI

class WeatherRepositoryImplementation: WeatherRepository {

    func getWeekWeather() -> [Weather] {
        return [
            Weather(id: 0, day: "Sunday", max: 35, min: 23, image: "sun.min.fill", imageColor: .orange),
            Weather(id: 1, day: "Monday", max: 50, min: 33, image: "sun.max.fill", imageColor: .orange),
            Weather(id: 2, day: "Tuesday", max: 25, min: 13, image: "sun.max.fill", imageColor: .orange),
            Weather(id: 3, day: "Wednesday", max: 15, min: 3, image: "cloud.fog.fill", imageColor: .gray),
            Weather(id: 4, day: "Thursday", max: 30, min: 12, image: "sun.max.fill", imageColor: .orange),
            Weather(id: 5, day: "Friday", max: 28, min: 10, image: "cloud.drizzle.fill", imageColor: .blue),
            Weather(id: 6, day: "Saturday", max: 26, min: 20, image: "sun.max.fill", imageColor: .orange)
        ]
    }
}
