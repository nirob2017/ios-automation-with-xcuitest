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
