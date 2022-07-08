//
//  DetailsView.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import SwiftUI

struct DetailsView: View {

    var weather: DayWeather?

    var body: some View {
        VStack{
//            Image(systemName: weather?.weather[0].icon ?? "sun.max.fill").resizable().frame(width: 50.0, height: 50.0).foregroundColor(weather?.imageColor ?? .accentColor)
            AsyncImage(url: URL(string: "\(weatherIconUrl)\(weather?.weather[0].icon ?? "01d")\(weatherIconExtension)")).frame(width: 50.0, height: 50.0)
            Text(weather?.weather[0].main ?? "Clear").font(.title).fontWeight(.bold).foregroundColor(Color.accentColor)
            Text("Max: \(weather?.temp?.max ?? 0) °C").foregroundColor(Color.accentColor)
            Text("Min: \(weather?.temp?.min ?? 0) °C").foregroundColor(Color.accentColor)
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center
        )
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
