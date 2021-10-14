import SwiftUI

struct WeatherInfoView: View {
    var weatherInfo: WeatherInfo
    
    var body: some View {
        VStack {
            Text(weatherInfo.dayOfWeek)
                .font(.system(size: 15, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: weatherInfo.weatherImageSystemName)
                .resizable()
                .renderingMode(.original)
                .frame(width: 35, height: 35)
                .aspectRatio(contentMode: .fit)
            Text("\(String(format: "%.0f", weatherInfo.temperature))°")
                .font(.system(size: 20))
                .foregroundColor(.white)
        }
    }
}
