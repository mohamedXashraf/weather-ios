//
//  HomeView.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import SwiftUI

struct HomeView: View {

    @ObservedObject private var viewModel = HomeViewModel()
    @State var weather: Weather? = nil

    var body: some View {
        VStack {
            Text("Weather").font(.title).fontWeight(.bold).foregroundColor(Color.accentColor)
            if !viewModel.weekWeather.isEmpty {
                ScrollView (.horizontal, showsIndicators: false) {
                     HStack {
                         ForEach (0..<viewModel.weekWeather.count, id: \.self) { index in
                             VStack {
                                 Image(systemName: viewModel.weekWeather[index].image).resizable().frame(width: 50.0, height: 50.0).foregroundColor(viewModel.weekWeather[index].imageColor)
                                 Text(viewModel.weekWeather[index].day).fontWeight(.bold).foregroundColor(Color.accentColor)
                             }.padding().onTapGesture {
                                 weather = viewModel.weekWeather[index]
                             }
                         }
                     }
                }.frame(height: 200)
                DetailsView(weather: weather ?? viewModel.weekWeather[0])
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
