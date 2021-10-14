//
//  ContentView.swift
//  weather-app
//
//  Created by devhaute on 2021/10/14.
//

import SwiftUI

struct ContentView: View {
    var weatherInfoDummyDatum: [WeatherInfo] = WeatherInfo.dummyDatum()
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topTrailing, endPoint: .bottomTrailing)
            
            VStack(spacing: 20){
                Text("서울")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
                Image(systemName:"sun.max.fill")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 150, height: 150)
                    .scaledToFit()
                
                Text("72°")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                
                Spacer()
                
                HStack {
                    ForEach(weatherInfoDummyDatum) { WeatherInfo in
                        WeatherInfoView(weatherInfo: WeatherInfo)
                    }
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
