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
        print(urlString)
    }

    func performRequest(urlString: String){
        //1. Create Url
        let url = URL(string: urlString)
        //2. Create a URLSession
        //3. Give the session a task
        //4. Start the task
    }
}
