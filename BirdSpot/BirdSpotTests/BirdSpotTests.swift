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
    // tests to make sure default birds list is setup properly
    func testInitialBirdCount() {
        let data = DefaultBirds()
        XCTAssertEqual(data.birds.count, 10)
    }
}
