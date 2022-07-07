//
//  WeatherAPI.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import Foundation



class WeatherAPIs {

    private let apiKey = "92c8fc9f16eeee3a87ce33bffc3d939a"
    private let count = "7"
    private let country = "cairo"
    private let mesuringUnit = "metric"

    func getWeekWeather(listener: @escaping (Weather) -> Void) {
        if let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast/daily?q=\(country)&cnt=\(count)&units=\(mesuringUnit)&appid=\(apiKey)"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if data != nil {
                    let weather = self.handleResponse(response: data!)
                    listener(weather)
                } else {
                    print(error)
                    listener(Weather())
                }
            }
            task.resume()
        }
    }

    private func handleResponse(response: Data) -> Weather {
        let decoder = JSONDecoder()
        do {
            return try decoder.decode(Weather.self, from: response)
        } catch {
            print(error)
            return Weather()
        }
    }
}
