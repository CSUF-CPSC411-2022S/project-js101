//
//  ContentView.swift
//  BirdSpot
//
//  Created by csuftitan on 2/23/22.
// Chukwudi Ikem - Color Palette Implementation

import SwiftUI



struct ColorPaletteView: View {
    @State var searchText: String = ""
    @State var changeView: Bool = false
    @Environment(\.colorScheme) var colorScheme: ColorScheme

    var body: some View {
        GeometryReader { geometry in
                    if self.changeView == true {
                        NavigationLink("", destination: InformationView(titleColor: (backColor:Color.gray, textColor: Color.black), filter: searchText), isActive: $changeView)
                    }
                    else {
                        // This Vstack acts as a container for the entire page
                        VStack {
                            // creating horizontal stacks so welcome and select messages can be left justified.
                            HStack {
                                Text("Welcome!")
                                        .font(.largeTitle)
                                        .padding()
                                    Spacer()
                                }
                            Spacer()
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
                                TextField("Search by name or color!", text: $searchText)
                                    .foregroundColor(Color.black)
                                    .onSubmit {
                                        self.changeView.toggle()
                                    }
                            }
                            .padding(6)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color.white).shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0))
                            .frame(width: geometry.size.width * 0.90, height: geometry.size.height * 0.05)
                            
                            // Vstack for the colors! TODO: make the individual circles naviagtion links
                            VStack {
                                HStack {
                                    Spacer()
                                    NavigationLink(destination: InformationView(titleColor: (backColor:Color.red, textColor: Color.black), filter: "red")) {
                                        Circle().strokeBorder(colorScheme == .dark ? Color.white : Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.red)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                                    }
                                    Spacer()
                                    NavigationLink(destination: InformationView(titleColor: (backColor:Color.gray, textColor: Color.black), filter: "gray")) {
                                        Circle().strokeBorder(colorScheme == .dark ? Color.white : Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.gray)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                                    }
                                    Spacer()
                                    NavigationLink(destination: InformationView(titleColor: (backColor:Color.yellow, textColor: Color.black), filter: "yellow")) {
                                        Circle().strokeBorder(colorScheme == .dark ? Color.white : Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.yellow)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                                    }
                                    Spacer()
                                }.padding()
                                
                                HStack {
                                    Spacer()
                                    NavigationLink(destination: InformationView(titleColor: (backColor:Color.green, textColor: Color.black), filter: "green")) {
                                        Circle().strokeBorder(colorScheme == .dark ? Color.white : Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.green)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                                    }
                                    Spacer()
                                    NavigationLink(destination: InformationView(titleColor: (backColor:Color.blue, textColor: Color.black), filter: "blue")) {
                                        Circle().strokeBorder(colorScheme == .dark ? Color.white : Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.blue)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                                    }
                                    Spacer()
                                    NavigationLink(destination: InformationView(titleColor: (backColor:Color.purple, textColor: Color.black), filter: "purple")) {
                                        Circle().strokeBorder(colorScheme == .dark ? Color.white : Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.purple)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                                    }
                                    Spacer()
                                }.padding()
                                
                                HStack {
                                    Spacer()
                                    NavigationLink(destination: InformationView(titleColor: (backColor:Color.brown, textColor: Color.black), filter: "brown")) {
                                        Circle().strokeBorder(colorScheme == .dark ? Color.white : Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.brown)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                                    }
                                    Spacer()
                                    NavigationLink(destination: InformationView(titleColor: (backColor:Color.white, textColor: Color.black), filter: "white")) {
                                        Circle().strokeBorder(colorScheme == .dark ? Color.white : Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.white)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                                    }
                                    Spacer()
                                    NavigationLink(destination: InformationView(titleColor: (backColor:Color.black, textColor: Color.white), filter: "black")) {
                                        Circle().strokeBorder(colorScheme == .dark ? Color.white : Color.black, lineWidth: 3).background(Circle().foregroundColor(Color.black)).frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                                    }
                                    Spacer()
                                }.padding()
                            }
                        
                        }
                    }
                    Spacer()
                }
        }
    
}

