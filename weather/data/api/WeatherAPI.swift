//
//  WeatherAPI.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import Foundation

class WeatherAPIs {

    func getWeekWeather(listener: @escaping (Weather) -> Void) {
        if let url = URL(string: "\(weatherAPIUrl)daily?q=cairo&cnt=7&units=metric&appid=\(apiKey)"){
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
