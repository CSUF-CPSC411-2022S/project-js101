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
                // This Vstack acts as a container for the entire page
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
                    // Hstack creates textfield with search icon.
                    HStack {
                        Image("search-icon")
                            .resizable().scaledToFit()
                        TextField(text: $color, prompt: Text("search")) {
                            
                        }
                    }.padding(6)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 2))
                        .frame(width: geometry.size.width * 0.90, height: geometry.size.height * 0.05)
                    
                    // Vstack for the colors! TODO: make the individual circles naviagtion links
                    VStack {
                        HStack {
                            Spacer()
                            NavigationLink(destination: InformationView(titleColor: (backColor:Color.red, textColor: Color.black), filter: "red")) {
                                Circle().strokeBorder(Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.red)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                            }
                            Spacer()
                            NavigationLink(destination: InformationView(titleColor: (backColor:Color.gray, textColor: Color.black), filter: "gray")) {
                                Circle().strokeBorder(Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.gray)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                            }
                            Spacer()
                            NavigationLink(destination: InformationView(titleColor: (backColor:Color.yellow, textColor: Color.black), filter: "yellow")) {
                                Circle().strokeBorder(Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.yellow)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                            }
                            Spacer()
                        }.padding()
                        
                        HStack {
                            Spacer()
                            NavigationLink(destination: InformationView(titleColor: (backColor:Color.green, textColor: Color.black), filter: "green")) {
                                Circle().strokeBorder(Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.green)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                            }
                            Spacer()
                            NavigationLink(destination: InformationView(titleColor: (backColor:Color.blue, textColor: Color.black), filter: "blue")) {
                                Circle().strokeBorder(Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.blue)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                            }
                            Spacer()
                            NavigationLink(destination: InformationView(titleColor: (backColor:Color.purple, textColor: Color.black), filter: "purple")) {
                                Circle().strokeBorder(Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.purple)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                            }
                            Spacer()
                        }.padding()
                        
                        HStack {
                            Spacer()
                            NavigationLink(destination: InformationView(titleColor: (backColor:Color.brown, textColor: Color.black), filter: "brown")) {
                                Circle().strokeBorder(Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.brown)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                            }
                            Spacer()
                            NavigationLink(destination: InformationView(titleColor: (backColor:Color.white, textColor: Color.black), filter: "white")) {
                                Circle().strokeBorder(Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.white)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                            }
                            Spacer()
                            NavigationLink(destination: InformationView(titleColor: (backColor:Color.black, textColor: Color.white), filter: "black")) {
                                Circle().strokeBorder(Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.black)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                            }
                            Spacer()
                        }.padding()
                    }
                
                }
            }
        }.hiddenNavBarStyle()
    }
}

