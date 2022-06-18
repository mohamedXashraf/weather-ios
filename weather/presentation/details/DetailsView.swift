//
//  DetailsView.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import SwiftUI

struct DetailsView: View {

    var weather: Weather?

    var body: some View {
        VStack{
            // AsyncImage(url: URL(string: weather?.image ?? "")).frame(width: 150.0, height: 150.0)
            Image(systemName: weather?.image ?? "sun.max.fill").resizable().frame(width: 50.0, height: 50.0).foregroundColor(weather?.imageColor ?? .accentColor)
            Text(weather?.day ?? "").font(.title).fontWeight(.bold).foregroundColor(Color.accentColor)
            Text("Max: \(weather?.max ?? 0) °C").foregroundColor(Color.accentColor)
            Text("Min: \(weather?.min ?? 0) °C").foregroundColor(Color.accentColor)
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
        DetailsView(weather: Weather(id: 0, day: "Sunday", max: 45, min: 23, image: "sun.max.fill", imageColor: .orange))
    }
}
