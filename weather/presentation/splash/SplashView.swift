//
//  SplashView.swift
//  weather
//
//  Created by Mohamed on 17/06/2022.
//

import SwiftUI

struct SplashView: View {

    @State var isActive: Bool = false

    var body: some View {
        if self.isActive {
            HomeView()
        } else {
            VStack {
                Image("Logo")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                Text("Weather").font(.title).fontWeight(.bold).foregroundColor(Color.accentColor)
            }.padding().onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
