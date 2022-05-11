//
//  buttonFunctions.swift
//  BirdSpot
//
//  Created by csuftitan on 3/7/22.
//

import Foundation
import SwiftUI
import MapKit
import CoreLocation

func goBack() { }
func openLocationMenu() { }



struct Settings :View {
    @AppStorage("isDarkMode") var isDarkMode = false
    var body: some View{
        VStack{
            Picker("Mode", selection: $isDarkMode)
            {
                Text("Light")
                    .tag(false)
                Text("Dark")
                    .tag(true)
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            
        }
    }
}
