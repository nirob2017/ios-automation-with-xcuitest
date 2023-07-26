//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Md. Monsur Hossain on 20/6/23.
//

import XCTest

final class UITests: UITestBase {

    func testAllElementsInMainScreen() {
        app.staticTexts["welcomeMessage"].tap()
        app.staticTexts["enterCity"].tap()
        app.buttons["enrollButton"].tap()
        app.images["TAUlogo"].tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
    }

    func testThankYouMessageText() {
        app.textFields["city"].tap()
        let textField = app.textFields["city"]
        textField.typeText("London")
        app.buttons["enrollButton"].tap()
        XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
