//
//  ContentView.swift
//  BirdSpot
//
//  Created by csuftitan on 2/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        Text("Ya like birds?")
            .padding()
        PhotoView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PhotoView: View {
    var body: some View {
        Image("Bird")
            .resizable()
            .scaledToFit()
    }
}
