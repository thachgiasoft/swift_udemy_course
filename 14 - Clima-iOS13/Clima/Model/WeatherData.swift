import Foundation

struct WeatherData: Codable {
    let name: String
    let main: InMain
    let weather: [InWeather]
}

struct InMain: Codable {
    let temp: Double
}

struct InWeather: Codable {
    let description: String
    let id: Int
}
