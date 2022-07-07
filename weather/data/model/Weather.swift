//
//  Weather.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import SwiftUI

struct Weather: Hashable, Decodable {
    var city: City? = nil
    var cod: String? = nil
    var message: Double? = nil
    var cnt: Int? = nil
    var list: [DayWeather] = []
}

struct Coordinate: Hashable, Decodable {
    var lon: Double? = nil
    var lat: Double? = nil
}

struct City: Hashable, Decodable {
    var id: Int? = nil
    var name: String? = nil
    var coordinate: Coordinate? = nil
    var country: String? = nil
    var population: Int? = nil
    var timezone: Int? = nil
}

struct Temp: Hashable, Decodable {
    var day: Double? = nil
    var min: Double? = nil
    var max: Double? = nil
    var night: Double? = nil
    var eve: Double? = nil
    var morn: Double? = nil
}

struct FeelsLike: Hashable, Decodable {
    var day: Double? = nil
    var night: Double? = nil
    var eve: Double? = nil
    var morn: Double? = nil
}

struct WeatherItem: Hashable, Decodable {
    var id: Int? = nil
    var main: String? = nil
    var description: String? = nil
    var icon: String? = nil
}

struct DayWeather: Hashable, Decodable {
    var dt: Int? = nil
    var sunrise: Int? = nil
    var sunset: Int? = nil
    var temp: Temp? = nil
    var feelsLike: FeelsLike? = nil
    var pressure: Double? = nil
    var humidity: Int? = nil
    var weather: [WeatherItem] = []
    var speed: Double? = nil
    var deg: Int? = nil
    var gust: Double? = nil
    var clouds: Int? = nil
    var pop: Double? = nil
}
