//
//  menuBar.swift
//  BirdSpot
//
//  Created by csuftitan on 5/10/22.
//

import Foundation
import SwiftUI

struct MenuBar: View {
    @State private var navigateTo = ""
    @State private var isActive = false
    var name: String
    var color: (backColor: Color, textColor: Color)
    var isMainMenu: Bool
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        GeometryReader { geometry in
                HStack {
                    if isMainMenu != true {
                       Button(action: {
                           self.mode.wrappedValue.dismiss()
                       }) {
                           Image(systemName: "arrowshape.turn.up.left")
                               .foregroundColor(color.textColor)
                               .padding(.trailing, 10)
                       }
                    }
                    Text(name).foregroundColor(color.textColor).bold()
                    Spacer()
                    if isMainMenu == true {
                        Menu {
                            Text("Filters")
                            Button("Location",action: openLocationMenu)
                            Button("⚙️ Settings") {
                                                self.isActive = true
                                            }
                           // Button("Language",action: changeLanguage)
                            //Button("Dark Mode", action: toggleDarkMode)
                        } label: {
                         Image(systemName: "line.3.horizontal")
                                .foregroundColor(color.textColor)
                                .padding(.trailing, 10)
                        }
                        .background(
                                        NavigationLink(destination: Settings(), isActive: $isActive) {
                                            EmptyView()
                                        })
                    }
                }
                    .modifier(menuModifier(menuColor: color, isMM: isMainMenu))
                    .frame(width:geometry.size.width)
        }
            .frame(height: 60)
            .hiddenNavBarStyle()
    }
}



struct menuModifier: ViewModifier {
    var menuColor: (backColor: Color, textColor: Color)
    var isMM: Bool
    func body(content: Content) -> some View {
        content
            .font(.system(size:24))
            .frame(height: 60)
            .padding(.leading,10)
            .background(menuColor.backColor)
    }
}


struct hideNavBar : ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarTitle("",displayMode: .inline)
            .navigationBarHidden(true)
    }
}

extension View {
    func hiddenNavBarStyle() -> some View {
        modifier(hideNavBar())
    }
}
