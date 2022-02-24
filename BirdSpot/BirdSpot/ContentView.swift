//
//  ContentView.swift
//  BirdSpot
//
//  Created by csuftitan on 2/23/22.
//

import SwiftUI

struct TestStructure: View {
    var text: String
    init(_ text: String) {
        self.text = text
    }
    var body: some View {
        Text(self.text).padding()
    }

}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        Text("Ya like birds?")
            .padding()
        TestStructure("Chukwudi says hello!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
