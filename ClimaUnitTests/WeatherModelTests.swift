//
//  WeatherViewControllerTests.swift
//  ClimaUnitTests
//
//  Created by Cabral Costa, Eduardo on 18/08/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import XCTest
@testable import Clima

final class WeatherModelTests: XCTestCase {

    func testConditionName200() throws{
        let model = WeatherModel(conditionId: 200, cityName: "Paris", temperature: 20)

        XCTAssertEqual(model.conditionName, "cloud.bolt", "ok")
    }

    func testConditionName300() throws{
        let model = WeatherModel(conditionId: 300, cityName: "Paris", temperature: 20)

        XCTAssertEqual(model.conditionName, "cloud.drizzle", "ok")
    }

    func testConditionName500() throws{
        let model = WeatherModel(conditionId: 500, cityName: "Paris", temperature: 20)

        XCTAssertEqual(model.conditionName, "cloud.rain", "ok")
    }

    func testConditionName600() throws{
        let model = WeatherModel(conditionId: 600, cityName: "Paris", temperature: 20)

        XCTAssertEqual(model.conditionName, "cloud.snow", "ok")
    }

    func testConditionName701() throws{
        let model = WeatherModel(conditionId: 701, cityName: "Paris", temperature: 20)

        XCTAssertEqual(model.conditionName, "cloud.fog", "ok")
    }

    func testConditionName800() throws{
        let model = WeatherModel(conditionId: 800, cityName: "Paris", temperature: 20)

        XCTAssertEqual(model.conditionName, "sun.max", "ok")
    }

    func testConditionName801() throws{
        let model = WeatherModel(conditionId: 801, cityName: "Paris", temperature: 20)

        XCTAssertEqual(model.conditionName, "cloud.bolt", "ok")
    }

    func testConditionName100() throws{
        let model = WeatherModel(conditionId: 100, cityName: "Paris", temperature: 20)

        XCTAssertEqual(model.conditionName, "cloud", "ok")
    }

}
