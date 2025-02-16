import Foundation

class WeatherService {
    let apiKey = "acccd10eae79467497901835251602"

    func fetchWeather(for city: String, completion: @escaping (WeatherResponse?) -> Void) {
        guard let encodedCity = city.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            print("Şehir adı encode edilemedi!")
            completion(nil)
            return
        }

        let urlString = "http://api.weatherapi.com/v1/current.json?key=\(apiKey)&q=\(encodedCity)&aqi=no"
        print("API URL: \(urlString)")

        guard let url = URL(string: urlString) else {
            print("Geçersiz URL oluştu!")
            completion(nil)
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("API Hatası: \(error.localizedDescription)")
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }

            guard let data = data else {
                print("API'den boş yanıt geldi!")
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }

            do {
                let decodedResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
                DispatchQueue.main.async {
                    completion(decodedResponse)
                }
            } catch {
                print("JSON Decode Hatası: \(error)")
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }.resume()
    }
}
