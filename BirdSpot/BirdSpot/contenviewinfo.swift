//
//  contenviewinfo.swift
//  BirdSpot
//
//  Created by csuftitan on 3/23/22.
//

import Foundation
import SwiftUI

struct BirdView: View {
    var bird: birdData
    var body: some View{
        GeometryReader { geometry in
            VStack(spacing: 0){
                MenuBar(name: bird.name, color: (backColor: Color.gray, textColor: Color.black), isMainMenu: false )
                AsyncImage(url: URL(string: bird.images[0])){ image in
                    image.resizable()
                        .scaledToFill()
                        .frame(width:geometry.size.width)
                } placeholder: {
                    ProgressView()
                }.frame(width:geometry.size.width)
                ScrollView {
                    Text(bird.description).padding()
                }.frame(height: geometry.size.height/3)
                    List {
                        NavigationLink(destination: Moreimages(bird: bird)) {
                            Text("For more images of \(bird.name)")
                        }
                        NavigationLink(destination: Moreinformation(bird: bird)) {
                            Text("For more information of \(bird.name)")
                        }
                    }
                
            }
        }
    }
}


func findBirdColor(_ bird: birdData) -> (Color, Color) {
    print("Im looking for the bird color")
    switch bird.color {
    case "red":
        return (backColor: Color.red, textColor: Color.black)
    case "blue":
        return (backColor: Color.blue, textColor: Color.black)
    case "green":
        return (backColor: Color.green, textColor: Color.black)
    case "yellow":
        return (backColor: Color.yellow, textColor: Color.black)
    case "purple":
        return (backColor: Color.purple, textColor: Color.black)
    case "white":
        return (backColor: Color.white, textColor: Color.black)
    case "black":
        return (backColor: Color.black, textColor: Color.white)
    case "gray":
        return (backColor: Color.gray, textColor: Color.white)
    case "brown":
        return (backColor: Color.brown, textColor: Color.black)
    default:
        return (backColor: Color.gray, textColor: Color.black)
    }
}



