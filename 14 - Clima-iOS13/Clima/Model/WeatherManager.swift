import Foundation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

extension WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {}
    func didFailWithError(error: Error) { print(error) }
}

struct WeatherManager {
    private let weatherURL = "https://api.openweathermap.org/data/2.5/weather"
    private let weatherKey = "3cb9ff50fd836f0a65f28e7071339c01"
    private let weatherUnits = "metric"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(_ cityName: String) {
        if cityName == "" {
            return
        }
        
        let url = "\(weatherURL)?appid=\(weatherKey)&units=\(weatherUnits)&q=\(cityName)"
        self.performRequest(url)
    }
    
    private func performRequest(_ urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if let e = error {
                    self.delegate?.didFailWithError(error: e)
                }
                
                if let d = data {
                    if let weatherModel = self.parseWeather(d) {
                        self.delegate?.didUpdateWeather(self, weather: weatherModel)
                    }
                }
            }
            task.resume()
        }
    }
    
    private func parseWeather(_ data: Data) -> WeatherModel? {
        do {
            let decoder = JSONDecoder()
            let decodedData = try decoder.decode(WeatherData.self, from: data)
            
            let weather = WeatherModel(
                conditionId: decodedData.weather[0].id,
                cityName: decodedData.name,
                temperature: decodedData.main.temp
            )

            return weather
            
        } catch {
            self.delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
