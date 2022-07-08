//
//  HomeView.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import SwiftUI

struct HomeView: View {

    @ObservedObject private var viewModel = HomeViewModel()
    @State var weather: DayWeather? = nil

    var body: some View {
        VStack {
            Text("Weather").font(.title).fontWeight(.bold).foregroundColor(Color.accentColor)
            if !viewModel.weekWeather.list.isEmpty {
                ScrollView (.horizontal, showsIndicators: false) {
                     HStack {
                         ForEach (0..<viewModel.weekWeather.list.count, id: \.self) { index in
                             VStack {
                                 AsyncImage(url: URL(string: "\(weatherIconUrl)\(viewModel.getDayWeather(index: index).weather[0].icon ?? "01d")\(weatherIconExtension)")).frame(width: 50.0, height: 50.0)
                                 Text(viewModel.getDayWeather(index: index).weather[0].main ?? "Clear").font(.title).fontWeight(.bold).foregroundColor(Color.accentColor)
                             }.padding().onTapGesture {
                                 weather = viewModel.getDayWeather(index: index)
                             }
                         }
                     }
                }.frame(height: 200)
                DetailsView(weather: weather ?? viewModel.getDayWeather(index: 0))
            }
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .top
        ).onAppear {
            viewModel.getWeekWeather()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
