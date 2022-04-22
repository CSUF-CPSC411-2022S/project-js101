//
//  BirdSpotTests.swift
//  BirdSpotTests
//
//  Created by csuftitan on 2/23/22.
//

import XCTest
@testable import BirdSpot
class BirdSpotTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLoadDataHasData() throws {
        let testbirds = birdCollection()
        testbirds.loadData()
        XCTAssertNotEqual(testbirds.birdlist.count, 0)
    }
    
    func testHasCorrectData() throws {
        let name = "Bald Eagle"
        let testbirds = birdCollection()
        testbirds.loadData()
        XCTAssertEqual(testbirds.birdlist[0].name, name)
    }



}

