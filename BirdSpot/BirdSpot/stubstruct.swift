//
//  stubstruct.swift
//  BirdSpot
//
//  Created by csuftitan on 4/6/22.
//

import Foundation
import SwiftUI

struct Moreimages: View {
    var bird: birdData
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                MenuBar(name: "More images of \(bird.name)", color: findBirdColor(bird), isMainMenu: false )
                ScrollView {
                    VStack{
                        ForEach(bird.images, id: \.self) {
                            imgString in
                            AsyncImage(url: URL(string: imgString)) {
                                image in
                                image.resizable()
                                    .scaledToFill()
                                    .frame(width:geometry.size.width)
                            } placeholder: {
                                ProgressView()
                            }.frame(width:geometry.size.width)
                        
                        }
                    }
                }
            }
        }
    }
}
struct Moreinformation: View {
    var bird: birdData
    var body: some View{
        GeometryReader { geometry in
            VStack(spacing: 0){
                MenuBar(name: "More info on \(bird.name)", color: findBirdColor(bird), isMainMenu: false)
                List(bird.infolinks, id: \.self) { infolink in
                    Link("More info", destination: URL(string: infolink)!)
                }
            }
        }
    
    }
}
