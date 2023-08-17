//
//  WeatherManager.swift
//  Clima
//
//  Created by Cabral Costa, Eduardo on 14/08/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager{
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=9f2b203e3168b549f0e0e1b23e5cc363&units=metric"

    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }

    func performRequest(urlString: String){
        //1. Create Url
        if let url = URL(string: urlString){
            //2. Create a URLSession
            let session = URLSession(configuration: .default)
            //3. Give the session a task
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    self.parseJSON(weatherData: safeData)
                }
            }
            //4. Start the task
            task.resume()
        }
    }

    func parseJSON(weatherData: Data){
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id =  decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name

            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)

        } catch{
            print(error)
        }
    }
    
}
