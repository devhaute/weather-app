import Foundation

struct WeatherInfo: Identifiable {
    var id = UUID()
    var dayOfWeek: String
    var weatherImageSystemName: String
    var temperature: Double
}

extension WeatherInfo {
    static func dummyDatum() -> [WeatherInfo] {
        return [
            WeatherInfo(dayOfWeek: "월", weatherImageSystemName: "sun.max.fill", temperature: 15),
            WeatherInfo(dayOfWeek: "화", weatherImageSystemName: "sun.max.fill", temperature: 15),
            WeatherInfo(dayOfWeek: "수", weatherImageSystemName: "sun.max.fill", temperature: 15),
            WeatherInfo(dayOfWeek: "목", weatherImageSystemName: "sun.max.fill", temperature: 15),
            WeatherInfo(dayOfWeek: "금", weatherImageSystemName: "sun.max.fill", temperature: 15),
            WeatherInfo(dayOfWeek: "토", weatherImageSystemName: "sun.max.fill", temperature: 15),
            WeatherInfo(dayOfWeek: "일", weatherImageSystemName: "sun.max.fill", temperature: 15)
        ]
    }
}
