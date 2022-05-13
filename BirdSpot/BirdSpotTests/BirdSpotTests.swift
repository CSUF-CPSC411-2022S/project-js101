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
    
    func testWordSearchHit() {
        let STR = "Hello World"
        let target = "Hello"
        XCTAssertTrue(stringSearch(searchable: STR, target: target))
    }
    
    func testWordSearchMiss() {
        let STR = "Hello World"
        let target = "GoodBye"
        XCTAssertFalse(stringSearch(searchable: STR, target: target))
    }
    
    func testWordSearchNearMiss() {
        let STR = "Hello World"
        let target = "Hel"
        XCTAssertFalse(stringSearch(searchable: STR, target: target))
    }
    
    func testWordSearchCaseSense() {
        let STR = "Hello World"
        let target = "hello"
        XCTAssertFalse(stringSearch(searchable: STR, target: target))
    }
	func BirdsDisplay() {
        let STR = "Birds Displayed"
        let target = "Birds"
        XCTAssertFalse(stringSearch(searchable: STR, target: target))
    }
	struct ContentViewModel {
    let users: [String]

    var hasUsers: Bool {
        return !Birds.isEmpty
    }
}

//A test case to validate our logic inside the `ContentView`.
final class ContentViewModelTests: XCTestCase {

    // It should correctly reflect whether it has users.
    func testHasUsers() {
        let viewModel = UsersViewModel(users: ["Blue Jay", "Bald Eagle", "Northern Cardinal", "American Crow", NSLocalizedString("American Robin", comment: ""), "American Woodcock", "Common Raven", NSLocalizedString("Gray Hawk", comment: ""), "Scarlet Macaw", "Mountain BlueBird"])
        XCTAssertTrue(viewModel.hasUsers)
    }
}
    
}
