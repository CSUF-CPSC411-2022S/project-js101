//
//  ContentView.swift
//  BirdSpot
//
//  Created by csuftitan on 2/23/22.
// Chukwudi Ikem - Color Palette Implementation

import SwiftUI



struct ColorPaletteView: View {
    @State var color: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                // this vstack acts as a container for the child hstacks
                VStack {
                    // creating horizontal stacks so welcome and select messages can be left justified.
                    HStack {
                        Text("Welcome!")
                            .font(.headline)
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        Text("Select a color or search to start.")
                            .fontWeight(.medium)
                            .font(Font.system(size: 14))
                            .padding()
                        Spacer()
                    }
                    // TODO: run tests to ensure working textfield
                    TextField(text: $color, prompt: Text("search")) {
                            
                    }.padding(6)
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 2))
                    .frame(width: geometry.size.width * 0.90)
                    
                
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPaletteView()
    }
}
