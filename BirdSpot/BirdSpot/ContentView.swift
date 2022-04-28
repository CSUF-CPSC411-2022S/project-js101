//
//  ContentView.swift
//  BirdSpot
//
//  Created by csuftitan on 2/23/22.
//


import SwiftUI


struct MenuBar: View {
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
                            Text("Settings")
                            Button("Location",action: openLocationMenu)
                            Button("Language",action: changeLanguage)
                            Button("Dark Mode", action: toggleDarkMode)
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(color.textColor)
                                .padding(.trailing, 10)
                        }
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
        if isMM {
            content
                .font(.system(size:24))
                .frame(height: 60)
                .padding(.leading,10)
                .background(menuColor.backColor)
        } else {
            content
                .font(.system(size:24))
                .frame(height: 60)
                .padding(.leading,10)
                .background(menuColor.backColor)
                .cornerRadius(10)
        }
    }
}

struct HomeScreen: View {
    var viewName = "Birdspot"
    var titleColor = (backColor: Color.gray, textColor: Color.white)
    var body: some View {
        GeometryReader { geometrey in
            VStack(spacing: 0){
                MenuBar(name: viewName, color: titleColor , isMainMenu: true)
                NavigationView {
                    NavigationLink(destination: ColorPaletteView()){
                        Text("Search")
                    }
//                    NavigationLink(destination: InformationView()) {
//                        Text("Open Information View")
//                    }
                }.hiddenNavBarStyle()

            }
        }
    }
}

struct ContentView: View {
    @StateObject var birds = birdCollection()
    var body: some View {
        HomeScreen()
        .environmentObject(birds)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InformationView: View {
    @EnvironmentObject var data: birdCollection
    var viewName = "Information View"
    var titleColor = (backColor: Color.pink, textColor: Color.black)
    var filter: String = ""
    var body: some View {
        GeometryReader { geometry in
                VStack(spacing: 0) {
                    MenuBar(name: viewName, color: titleColor , isMainMenu: false)
                    Text("The information page will have birds to browse and read information about")
                    List {
                        if(filter != "") {
                            ForEach(data.birds) {
                                bird in
                                if(bird.color == filter) {
                                    Section(header: Text(bird.name)) {
                                        NavigationLink(destination: BirdView(bird: bird)) {
                                            AsyncImage(url: URL(string: bird.images[0])){ image in
                                                image.resizable()
                                            } placeholder: {
                                                ProgressView()
                                            }.frame(width:200, height: 120)                                        }
                                    }
                                }
                            }
                        } else {
                            ForEach(data.birds) {
                                bird in
                                Section(header: Text(bird.name)) {
                                    NavigationLink(destination: BirdView(bird: bird)) {
                                        Text(bird.name)
                                    }
                                }
                            }
                        }
                }
                    Spacer()
            }
        }
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


