//
//  ContentView.swift
//  weather-app
//
//  Created by devhaute on 2021/10/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topTrailing, endPoint: .bottomTrailing)
            
            VStack(spacing: 20){
                Text("서울")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                
                Image(systemName:"sun.max.fill")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 180, height: 180)
                    .scaledToFit()
                
                Text("72")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                
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
