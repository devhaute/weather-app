//
//  ContentView.swift
//  weather-app
//
//  Created by devhaute on 2021/10/14.
//

import SwiftUI

struct ContentView: View {
    @State var isNight: Bool = false
    let weatherInfoDummyDatum: [WeatherInfo] = WeatherInfo.dummyDatum()
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            
            VStack(spacing: 20) {
                Text("서울")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
                Image(systemName: self.isNight ? "moon.stars.fill" : "sun.max.fill")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 120, height: 120)
                    .scaledToFit()
                
                Text(self.isNight ? "5°" : "15°")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                
                Spacer()
                
                HStack(spacing: 20) {
                    ForEach(weatherInfoDummyDatum) { WeatherInfo in
                        WeatherInfoView(weatherInfo: WeatherInfo)
                    }
                }
                
                Spacer()
                
                Button {
                    self.isNight.toggle()
                } label: {
                    Text(self.isNight ? "라이트모드 전환" : "다크모드 전환")
                        .font(.system(size: 20))
                        .padding(EdgeInsets(top: 15, leading: 25, bottom: 15, trailing: 25))
                        .background(Color.white)
                        .cornerRadius(20)
                }

                Spacer()
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
