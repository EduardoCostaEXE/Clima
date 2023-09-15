//
//  WeatherViewControllerUITests.swift
//  ClimaUITests
//
//  Created by Cabral Costa, Eduardo on 15/09/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import XCTest
@testable import Clima

final class WeatherViewControllerUITests: XCTestCase {

    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws { }

    func testSearchCityWithGo() throws{
        app.launch()

        let cityTextField = app.textFields["Search"]
        cityTextField.tap()
        cityTextField.typeText("London")
        app/*@START_MENU_TOKEN@*/.buttons["Go"]/*[[".keyboards",".buttons[\"ir\"]",".buttons[\"Go\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()

        let expectation = XCTNSPredicateExpectation(
            predicate: NSPredicate(format: "count > 0"), object: app.staticTexts["TemperatureLabel"]
        )
        wait(for: [expectation], timeout: 10.0)
    }

    func testSearchCityWithButton() throws{
        let cityTextField = app.textFields["Search"]
        cityTextField.tap()
        cityTextField.typeText("Paris")
        app.buttons["magnifyingglass"].tap()


        let expectation = XCTNSPredicateExpectation(
            predicate: NSPredicate(format: "count > 0"), object: app.staticTexts["TemperatureLabel"]
        )
        wait(for: [expectation], timeout: 10.0)
    }

    func testWithoutText() throws{
        let cityTextField = app.textFields["Search"]
        cityTextField.tap()
        cityTextField.typeText("")
        app.buttons["magnifyingglass"].tap()
    }

    /*func testCallError() {
        let vc = WeatherViewController()
        let testError = NSError(domain: "TestErrorDomain", code: 123)
        vc.didFailWithError(error: testError)
    }*/
}
