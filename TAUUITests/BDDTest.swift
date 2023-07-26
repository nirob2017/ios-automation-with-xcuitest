//
//  BDDTest.swift
//  TAUUITests
//
//  Created by Md. Monsur Hossain on 26/7/23.
//  Copyright © Md. Monsur Hossain. All rights reserved.
//

import Foundation
import XCTest

class BDDTest: UITestBase {
    
 func testThankYouMessageInBDStyle() {
        givenAppIsReady()
        whenIEnter(city: "London")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}

extension UITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is ready ") { _ in
            XCTAssertTrue(app.buttons["enrollButton"].exists)
        }
        
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I enter city \(city) ") { _ in
          app.textFields["city"].tap()
          app.textFields["city"].typeText(city)
        }
    }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I Enrolled ") { _ in
          app.buttons["enrollButton"].tap()
        }
        
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I Should See Thanks message ") { _ in
         XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
        }
    }
    
}
