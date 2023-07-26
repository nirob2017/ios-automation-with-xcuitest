//
//  Steps.swift
//  TAUUITests
//
//  Created by Md. Monsur Hossain on 26/7/23.
//  Copyright © 2023 Md. Monsur Hossain. All rights reserved.
//

import Foundation
import XCTest

extension UITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is ready ") { _ in
            XCTAssertTrue(Screen.enrollButton.element.exists)
        }
        
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I enter city \(city) ") { _ in
            Screen.cityTextField.element.tap()
            Screen.cityTextField.element.typeText(city)
        }
    }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I Enrolled ") { _ in
            Screen.enrollButton.element.tap()
        }
        
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I Should See Thanks message ") { _ in
            XCTAssertTrue(Screen.thankYouMessage.element.exists)
        }
    }
    
}
