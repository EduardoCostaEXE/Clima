//
//  WeatherManagerTests.swift
//  ClimaUnitTests
//
//  Created by Cabral Costa, Eduardo on 15/09/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import XCTest
@testable import Clima

final class WeatherManagerTests: XCTestCase {

    func testConditionName300() throws{
        let weatherManager = WeatherManager()
        weatherManager.fetchWeather(cityName: "London")

        XCTAssertEqual("a", "a")
    }

}
