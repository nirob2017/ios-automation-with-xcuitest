//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by Md. Monsur Hossain on 16/7/23.
//

import Foundation
import XCTest

class UITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
    
//    override class var runsForEachTargetApplicationUIConfiguration: Bool {
//        true
//    }

//    func testLaunch() throws {
//        let app = XCUIApplication()
//        app.launch()
//        let attachment = XCTAttachment(screenshot: app.screenshot())
//        attachment.name = "Launch Screen"
//        attachment.lifetime = .keepAlways
//        add(attachment)
//    }
}
