//
//  ContentView.swift
//  BirdSpot
//
//  Created by csuftitan on 2/23/22.
//

import SwiftUI


struct MenuBar: View {
    @Binding var name: String
    @Binding var color: (backColor: Color, textColor: Color)
    @Binding var isMainMenu: Bool
    var body: some View {
        GeometryReader { geometry in
                HStack {
                    Text(name).foregroundColor(color.textColor).bold()
                    Spacer()
                    if isMainMenu == true {
                        Menu {
                            Text("Settings")
                            Button("Location",action: openLocationMenu)
                            Button("Language",action: changeLanguage)
                            Button("Color Blind Mode", action: toggleColorBlindMode)
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(color.textColor)
                        }
                    } else {
                        Button(action: goBack) {
                            Image(systemName: "arrowshape.turn.up.left")
                                .foregroundColor(color.textColor)
                        }
                    }
                }
                    .modifier(menuModifier(menuColor: $color))
                    .frame(width:geometry.size.width)
        }.frame(height: 54)
    }
}



struct menuModifier: ViewModifier {
    @Binding var menuColor: (backColor: Color, textColor: Color)
    func body(content: Content) -> some View {
        content
            .font(.custom("Courier New", size:24))
            .padding(.top, 20)
            .padding(.leading,10)
            .padding(.bottom,10)
            .background(menuColor.backColor)
    }
}

struct HomeScreen: View {
    @State var viewName = "Birdspot"
    @State var titleColor = (backColor: Color.gray, textColor: Color.white)
    @State var ismainmenu = true
    var body: some View {
        GeometryReader { geometrey in
            VStack(spacing: 0){
                MenuBar(name: $viewName, color: $titleColor , isMainMenu: $ismainmenu)
                PhotoView()
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        HomeScreen()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PhotoView: View {
    @State var viewName = "PhotoView"
    @State var titleColor = (backColor: Color.yellow, textColor: Color.black)
    @State var ismainmenu = false
    var body: some View {
            MenuBar(name: $viewName, color: $titleColor , isMainMenu: $ismainmenu)
            Image("Bird")
                .resizable()
                .scaledToFit()
                .padding(20)
    }
}
