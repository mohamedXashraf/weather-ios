//
//  Weather.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import SwiftUI

struct Weather: Hashable {
    var id: Int
    var day: String
    var max: Int
    var min: Int
    var image: String
    var imageColor: Color
}
