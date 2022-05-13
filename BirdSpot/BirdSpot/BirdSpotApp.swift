//
//  BirdSpotApp.swift
//  BirdSpot
//
//  Created by csuftitan on 2/23/22.
//

import SwiftUI

@main
struct BirdSpotApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.colorScheme, isDarkMode ? .dark :.light)
        }
    }
}
