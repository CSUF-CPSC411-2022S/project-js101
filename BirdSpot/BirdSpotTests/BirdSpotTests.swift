//
//  BirdSpotTests.swift
//  BirdSpotTests
//
//  Created by csuftitan on 2/23/22.
//

import XCTest
import SwiftUI
//import ViewInspector
@testable import BirdSpot
class BirdSpotTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    //func testMenuBar() throws{
    //    @State var testName = "testMenu"
    //    @State var testColor = (backColor: Color.white, textColor: Color.black)
    //    @State var testIsMenu = true
    //    let menu = MenuBar(name: $testName, color: $testColor, isMainMenu: $testIsMenu)
    //    let text = try menu.inspect().text().string()
    //    XCTAssertEqual(text, testName)
    //}

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
